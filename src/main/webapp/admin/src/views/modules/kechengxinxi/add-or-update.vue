<template>
  <div class="addEdit-block">
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
	  :style="{backgroundColor:addEditForm.addEditBoxColor}"
    >
      <el-row >
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="名称" prop="mingcheng">
          <el-input v-model="ruleForm.mingcheng" 
              placeholder="名称" clearable  :readonly="ro.mingcheng"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="名称" prop="mingcheng">
              <el-input v-model="ruleForm.mingcheng" 
                placeholder="名称" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="select" v-if="type!='info'"  label="课程" prop="kecheng">
          <el-select :disabled="ro.kecheng" v-model="ruleForm.kecheng" placeholder="请选择课程">
            <el-option
                v-for="(item,index) in kechengOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="课程" prop="kecheng">
	      <el-input v-model="ruleForm.kecheng"
                placeholder="课程" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="select" v-if="type!='info'"  label="班级" prop="banji">
          <el-select :disabled="ro.banji" v-model="ruleForm.banji" placeholder="请选择班级">
            <el-option
                v-for="(item,index) in banjiOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="班级" prop="banji">
	      <el-input v-model="ruleForm.banji"
                placeholder="班级" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="24">  
        <el-form-item class="upload" v-if="type!='info' && !ro.kechengtupian" label="课程图片" prop="kechengtupian">
          <file-upload
          tip="点击上传课程图片"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.kechengtupian?ruleForm.kechengtupian:''"
          @change="kechengtupianUploadChange"
          ></file-upload>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.kechengtupian" label="课程图片" prop="kechengtupian">
            <img style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.kechengtupian.split(',')" :src="$base.url+item" width="100" height="100">
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="教学大纲" prop="jiaoxuedagang">
          <el-input v-model="ruleForm.jiaoxuedagang" 
              placeholder="教学大纲" clearable  :readonly="ro.jiaoxuedagang"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="教学大纲" prop="jiaoxuedagang">
              <el-input v-model="ruleForm.jiaoxuedagang" 
                placeholder="教学大纲" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="select" v-if="type!='info'"  label="课程进度" prop="kechengjindu">
          <el-select :disabled="ro.kechengjindu" v-model="ruleForm.kechengjindu" placeholder="请选择课程进度">
            <el-option
                v-for="(item,index) in kechengjinduOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="课程进度" prop="kechengjindu">
	      <el-input v-model="ruleForm.kechengjindu"
                placeholder="课程进度" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="24">  
        <el-form-item class="upload" v-if="type!='info'&& !ro.kechengshipin" label="课程视频" prop="kechengshipin">
          <file-upload
          tip="点击上传课程视频"
          action="file/upload"
          :limit="1"
          :multiple="true"
          :fileUrls="ruleForm.kechengshipin?ruleForm.kechengshipin:''"
          @change="kechengshipinUploadChange"
          ></file-upload>
        </el-form-item> 
        <div v-else>
          <el-form-item v-if="ruleForm.kechengshipin" label="课程视频" prop="kechengshipin">
            <el-button type="text" size="small" @click="download($base.url+ruleForm.kechengshipin)">预览</el-button>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="教师工号" prop="jiaoshigonghao">
          <el-input v-model="ruleForm.jiaoshigonghao" 
              placeholder="教师工号" clearable  :readonly="ro.jiaoshigonghao"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="教师工号" prop="jiaoshigonghao">
              <el-input v-model="ruleForm.jiaoshigonghao" 
                placeholder="教师工号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="教师姓名" prop="jiaoshixingming">
          <el-input v-model="ruleForm.jiaoshixingming" 
              placeholder="教师姓名" clearable  :readonly="ro.jiaoshixingming"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="教师姓名" prop="jiaoshixingming">
              <el-input v-model="ruleForm.jiaoshixingming" 
                placeholder="教师姓名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="联系电话" prop="lianxidianhua">
          <el-input v-model="ruleForm.lianxidianhua" 
              placeholder="联系电话" clearable  :readonly="ro.lianxidianhua"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="联系电话" prop="lianxidianhua">
              <el-input v-model="ruleForm.lianxidianhua" 
                placeholder="联系电话" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      </el-row>
          <el-row>
            <el-col :span="24">
              <el-form-item class="textarea" v-if="type!='info'" label="课程详情" prop="kechengxiangqing">
                <el-input
                  style="min-width: 200px; max-width: 600px;"
                  type="textarea"
                  :rows="8"
                  placeholder="课程详情"
                  v-model="ruleForm.kechengxiangqing" >
                </el-input>
              </el-form-item>
              <div v-else>
                <el-form-item v-if="ruleForm.kechengxiangqing" label="课程详情" prop="kechengxiangqing">
                    <span>{{ruleForm.kechengxiangqing}}</span>
                </el-form-item>
              </div>
            </el-col>
          </el-row>
      <el-form-item class="btn">
        <el-button  v-if="type!='info'" type="primary" class="btn-success" @click="onSubmit">提交</el-button>
        <el-button v-if="type!='info'" class="btn-close" @click="back()">取消</el-button>
        <el-button v-if="type=='info'" class="btn-close" @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
    

  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
  data() {
    let self = this
    var validateIdCard = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!checkIdCard(value)) {
        callback(new Error("请输入正确的身份证号码"));
      } else {
        callback();
      }
    };
    var validateUrl = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isURL(value)) {
        callback(new Error("请输入正确的URL地址"));
      } else {
        callback();
      }
    };
    var validateMobile = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isMobile(value)) {
        callback(new Error("请输入正确的手机号码"));
      } else {
        callback();
      }
    };
    var validatePhone = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isPhone(value)) {
        callback(new Error("请输入正确的电话号码"));
      } else {
        callback();
      }
    };
    var validateEmail = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isEmail(value)) {
        callback(new Error("请输入正确的邮箱地址"));
      } else {
        callback();
      }
    };
    var validateNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isNumber(value)) {
        callback(new Error("请输入数字"));
      } else {
        callback();
      }
    };
    var validateIntNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isIntNumer(value)) {
        callback(new Error("请输入整数"));
      } else {
        callback();
      }
    };
    return {
	  addEditForm: {"btnSaveFontColor":"#fff","selectFontSize":"14px","btnCancelBorderColor":"#DCDFE6","inputBorderRadius":"4px","inputFontSize":"14px","textareaBgColor":"#fff","btnSaveFontSize":"14px","textareaBorderRadius":"4px","uploadBgColor":"#fff","textareaBorderStyle":"solid","btnCancelWidth":"88px","textareaHeight":"120px","dateBgColor":"#fff","btnSaveBorderRadius":"4px","uploadLableFontSize":"14px","textareaBorderWidth":"3px","inputLableColor":"rgba(0, 0, 0, 1)","addEditBoxColor":"rgba(79, 110, 72, 0)","dateIconFontSize":"14px","btnSaveBgColor":"rgba(79, 110, 72, 1)","uploadIconFontColor":"rgba(0, 0, 0, 1)","textareaBorderColor":"rgba(79, 110, 72, 1)","btnCancelBgColor":"rgba(79, 110, 72, 1)","selectLableColor":"rgba(0, 0, 0, 1)","btnSaveBorderStyle":"solid","dateBorderWidth":"3px","dateLableFontSize":"14px","dateBorderRadius":"4px","btnCancelBorderStyle":"solid","selectLableFontSize":"14px","selectBorderStyle":"solid","selectIconFontColor":"rgba(0, 0, 0, 1)","btnCancelHeight":"44px","inputHeight":"40px","btnCancelFontColor":"rgba(249, 251, 255, 1)","dateBorderColor":"rgba(79, 110, 72, 1)","dateIconFontColor":"rgba(0, 2, 7, 1)","uploadBorderStyle":"solid","dateBorderStyle":"solid","dateLableColor":"rgba(0, 0, 0, 1)","dateFontSize":"14px","inputBorderWidth":"3px","uploadIconFontSize":"28px","selectHeight":"40px","inputFontColor":"rgba(0, 0, 0, 1)","uploadHeight":"148px","textareaLableColor":"rgba(0, 0, 0, 1)","textareaLableFontSize":"14px","btnCancelFontSize":"14px","inputBorderStyle":"solid","btnCancelBorderRadius":"4px","inputBgColor":"rgba(255, 255, 255, 1)","inputLableFontSize":"14px","uploadLableColor":"rgba(0, 0, 0, 1)","uploadBorderRadius":"4px","btnSaveHeight":"44px","selectBgColor":"#fff","btnSaveWidth":"88px","selectIconFontSize":"14px","dateHeight":"40px","selectBorderColor":"rgba(79, 110, 72, 1)","inputBorderColor":"rgba(79, 110, 72, 1)","uploadBorderColor":"rgba(79, 110, 72, 1)","textareaFontColor":"rgba(0, 0, 0, 1)","selectBorderWidth":"3px","dateFontColor":"rgba(0, 0, 0, 1)","btnCancelBorderWidth":"0","uploadBorderWidth":"3px","textareaFontSize":"16px","selectBorderRadius":"4px","selectFontColor":"rgba(0, 0, 0, 1)","btnSaveBorderColor":"#409EFF","btnSaveBorderWidth":"0"},
      id: '',
      type: '',
      ro:{
	mingcheng : false,
	kecheng : false,
	banji : false,
	kechengtupian : false,
	jiaoxuedagang : false,
	kechengjindu : false,
	kechengshipin : false,
	kechengxiangqing : false,
	jiaoshigonghao : false,
	jiaoshixingming : false,
	lianxidianhua : false,
      },
      ruleForm: {
        mingcheng: '',
        kecheng: '',
        banji: '',
        kechengtupian: '',
        jiaoxuedagang: '',
       kechengjindu: '已完成',
        kechengshipin: '',
        kechengxiangqing: '',
        jiaoshigonghao: '',
        jiaoshixingming: '',
        lianxidianhua: '',
      },
          kechengOptions: [],
          banjiOptions: [],
          kechengjinduOptions: [],
      rules: {
          mingcheng: [
                { required: true, message: '名称不能为空', trigger: 'blur' },
          ],
          kecheng: [
          ],
          banji: [
          ],
          kechengtupian: [
          ],
          jiaoxuedagang: [
          ],
          kechengjindu: [
          ],
          kechengshipin: [
          ],
          kechengxiangqing: [
          ],
          jiaoshigonghao: [
          ],
          jiaoshixingming: [
          ],
          lianxidianhua: [
                { validator: validateMobile, trigger: 'blur' },
          ],
      }
    };
  },
  props: ["parent"],
  computed: {



  },
  created() {
	this.addEditStyleChange()
	this.addEditUploadStyleChange()
  },
  methods: {
    // 下载
    download(file){
      window.open(`${file}`)
    },
    // 初始化
    init(id,type) {
      if (id) {
        this.id = id;
        this.type = type;
      }
      if(this.type=='info'||this.type=='else'){
        this.info(id);
      }else if(this.type=='logistics'){
        this.logistics=false;
        this.info(id);
      }else if(this.type=='cross'){
        var obj = this.$storage.getObj('crossObj');
        for (var o in obj){
          if(o=='mingcheng'){
            this.ruleForm.mingcheng = obj[o];
	    this.ro.mingcheng = true;
            continue;
          }
          if(o=='kecheng'){
            this.ruleForm.kecheng = obj[o];
	    this.ro.kecheng = true;
            continue;
          }
          if(o=='banji'){
            this.ruleForm.banji = obj[o];
	    this.ro.banji = true;
            continue;
          }
          if(o=='kechengtupian'){
            this.ruleForm.kechengtupian = obj[o];
	    this.ro.kechengtupian = true;
            continue;
          }
          if(o=='jiaoxuedagang'){
            this.ruleForm.jiaoxuedagang = obj[o];
	    this.ro.jiaoxuedagang = true;
            continue;
          }
          if(o=='kechengjindu'){
            this.ruleForm.kechengjindu = obj[o];
	    this.ro.kechengjindu = true;
            continue;
          }
          if(o=='kechengshipin'){
            this.ruleForm.kechengshipin = obj[o];
	    this.ro.kechengshipin = true;
            continue;
          }
          if(o=='kechengxiangqing'){
            this.ruleForm.kechengxiangqing = obj[o];
	    this.ro.kechengxiangqing = true;
            continue;
          }
          if(o=='jiaoshigonghao'){
            this.ruleForm.jiaoshigonghao = obj[o];
	    this.ro.jiaoshigonghao = true;
            continue;
          }
          if(o=='jiaoshixingming'){
            this.ruleForm.jiaoshixingming = obj[o];
	    this.ro.jiaoshixingming = true;
            continue;
          }
          if(o=='lianxidianhua'){
            this.ruleForm.lianxidianhua = obj[o];
	    this.ro.lianxidianhua = true;
            continue;
          }
        }
      }
      // 获取用户信息
      this.$http({
        url: `${this.$storage.get('sessionTable')}/session`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          var json = data.data;
		if(json.kecheng!=''&&json.kecheng){
                this.ruleForm.kecheng = json.kecheng
	    		this.ro.kecheng = true;
		}
		if(json.jiaoshigonghao!=''&&json.jiaoshigonghao){
                this.ruleForm.jiaoshigonghao = json.jiaoshigonghao
	    		this.ro.jiaoshigonghao = true;
		}
		if(json.jiaoshixingming!=''&&json.jiaoshixingming){
                this.ruleForm.jiaoshixingming = json.jiaoshixingming
	    		this.ro.jiaoshixingming = true;
		}
		if(json.lianxidianhua!=''&&json.lianxidianhua){
                this.ruleForm.lianxidianhua = json.lianxidianhua
	    		this.ro.lianxidianhua = true;
		}
        } else {
          this.$message.error(data.msg);
        }
      });
            this.$http({
              url: `option/kecheng/kecheng`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.kechengOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
         
            this.$http({
              url: `option/banji/banji`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.banjiOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
         
            this.kechengjinduOptions = "进行中,已完成".split(',')
    },
    // 多级联动参数
    info(id) {
      this.$http({
        url: `kechengxinxi/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
        this.ruleForm = data.data;
	//解决前台上传图片后台不显示的问题
	let reg=new RegExp('../../../upload','g')//g代表全部
        } else {
          this.$message.error(data.msg);
        }
      });
    },


    // 提交
    onSubmit() {








	if(this.ruleForm.kechengtupian!=null) {
		this.ruleForm.kechengtupian = this.ruleForm.kechengtupian.replace(new RegExp(this.$base.url,"g"),"");
	}






	if(this.ruleForm.kechengshipin!=null) {
		this.ruleForm.kechengshipin = this.ruleForm.kechengshipin.replace(new RegExp(this.$base.url,"g"),"");
	}









var objcross = this.$storage.getObj('crossObj');

      //更新跨表属性
       var crossuserid;
       var crossrefid;
       var crossoptnum;
       if(this.type=='cross'){
                var statusColumnName = this.$storage.get('statusColumnName');
                var statusColumnValue = this.$storage.get('statusColumnValue');
                if(statusColumnName!='') {
                        var obj = this.$storage.getObj('crossObj');
                       if(!statusColumnName.startsWith("[")) {
                               for (var o in obj){
                                 if(o==statusColumnName){
                                   obj[o] = statusColumnValue;
                                 }
                               }
                               var table = this.$storage.get('crossTable');
                             this.$http({
                                 url: `${table}/update`,
                                 method: "post",
                                 data: obj
                               }).then(({ data }) => {});
                       } else {
                               crossuserid=this.$storage.get('userid');
                               crossrefid=obj['id'];
                               crossoptnum=this.$storage.get('statusColumnName');
                               crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                        }
                }
        }
       this.$refs["ruleForm"].validate(valid => {
         if (valid) {
		 if(crossrefid && crossuserid) {
			 this.ruleForm.crossuserid = crossuserid;
			 this.ruleForm.crossrefid = crossrefid;
			let params = { 
				page: 1, 
				limit: 10, 
				crossuserid:this.ruleForm.crossuserid,
				crossrefid:this.ruleForm.crossrefid,
			} 
			this.$http({ 
				url: "kechengxinxi/page", 
				method: "get", 
				params: params 
			}).then(({ 
				data 
			}) => { 
				if (data && data.code === 0) { 
				       if(data.data.total>=crossoptnum) {
					     this.$message.error(this.$storage.get('tips'));
					       return false;
				       } else {
					 this.$http({
					   url: `kechengxinxi/${!this.ruleForm.id ? "save" : "update"}`,
					   method: "post",
					   data: this.ruleForm
					 }).then(({ data }) => {
					   if (data && data.code === 0) {
					     this.$message({
					       message: "操作成功",
					       type: "success",
					       duration: 1500,
					       onClose: () => {
						 this.parent.showFlag = true;
						 this.parent.addOrUpdateFlag = false;
						 this.parent.kechengxinxiCrossAddOrUpdateFlag = false;
						 this.parent.search();
						 this.parent.contentStyleChange();
					       }
					     });
					   } else {
					     this.$message.error(data.msg);
					   }
					 });

				       }
				} else { 
				} 
			});
		 } else {
			 this.$http({
			   url: `kechengxinxi/${!this.ruleForm.id ? "save" : "update"}`,
			   method: "post",
			   data: this.ruleForm
			 }).then(({ data }) => {
			   if (data && data.code === 0) {
			     this.$message({
			       message: "操作成功",
			       type: "success",
			       duration: 1500,
			       onClose: () => {
				 this.parent.showFlag = true;
				 this.parent.addOrUpdateFlag = false;
				 this.parent.kechengxinxiCrossAddOrUpdateFlag = false;
				 this.parent.search();
				 this.parent.contentStyleChange();
			       }
			     });
			   } else {
			     this.$message.error(data.msg);
			   }
			 });
		 }
         }
       });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.kechengxinxiCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
    kechengtupianUploadChange(fileUrls) {
	this.ruleForm.kechengtupian = fileUrls;
	this.addEditUploadStyleChange()
    },
    kechengshipinUploadChange(fileUrls) {
	this.ruleForm.kechengshipin = fileUrls;
	this.addEditUploadStyleChange()
    },
	addEditStyleChange() {
	  this.$nextTick(()=>{
	    // input
	    document.querySelectorAll('.addEdit-block .input .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.inputHeight
	      el.style.color = this.addEditForm.inputFontColor
	      el.style.fontSize = this.addEditForm.inputFontSize
	      el.style.borderWidth = this.addEditForm.inputBorderWidth
	      el.style.borderStyle = this.addEditForm.inputBorderStyle
	      el.style.borderColor = this.addEditForm.inputBorderColor
	      el.style.borderRadius = this.addEditForm.inputBorderRadius
	      el.style.backgroundColor = this.addEditForm.inputBgColor
	    })
	    document.querySelectorAll('.addEdit-block .input .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.inputHeight
	      el.style.color = this.addEditForm.inputLableColor
	      el.style.fontSize = this.addEditForm.inputLableFontSize
	    })
	    // select
	    document.querySelectorAll('.addEdit-block .select .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.selectHeight
	      el.style.color = this.addEditForm.selectFontColor
	      el.style.fontSize = this.addEditForm.selectFontSize
	      el.style.borderWidth = this.addEditForm.selectBorderWidth
	      el.style.borderStyle = this.addEditForm.selectBorderStyle
	      el.style.borderColor = this.addEditForm.selectBorderColor
	      el.style.borderRadius = this.addEditForm.selectBorderRadius
	      el.style.backgroundColor = this.addEditForm.selectBgColor
	    })
	    document.querySelectorAll('.addEdit-block .select .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.selectHeight
	      el.style.color = this.addEditForm.selectLableColor
	      el.style.fontSize = this.addEditForm.selectLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .select .el-select__caret').forEach(el=>{
	      el.style.color = this.addEditForm.selectIconFontColor
	      el.style.fontSize = this.addEditForm.selectIconFontSize
	    })
	    // date
	    document.querySelectorAll('.addEdit-block .date .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.dateHeight
	      el.style.color = this.addEditForm.dateFontColor
	      el.style.fontSize = this.addEditForm.dateFontSize
	      el.style.borderWidth = this.addEditForm.dateBorderWidth
	      el.style.borderStyle = this.addEditForm.dateBorderStyle
	      el.style.borderColor = this.addEditForm.dateBorderColor
	      el.style.borderRadius = this.addEditForm.dateBorderRadius
	      el.style.backgroundColor = this.addEditForm.dateBgColor
	    })
	    document.querySelectorAll('.addEdit-block .date .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.dateHeight
	      el.style.color = this.addEditForm.dateLableColor
	      el.style.fontSize = this.addEditForm.dateLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .date .el-input__icon').forEach(el=>{
	      el.style.color = this.addEditForm.dateIconFontColor
	      el.style.fontSize = this.addEditForm.dateIconFontSize
	      el.style.lineHeight = this.addEditForm.dateHeight
	    })
	    // upload
	    let iconLineHeight = parseInt(this.addEditForm.uploadHeight) - parseInt(this.addEditForm.uploadBorderWidth) * 2 + 'px'
	    document.querySelectorAll('.addEdit-block .upload .el-upload--picture-card').forEach(el=>{
	      el.style.width = this.addEditForm.uploadHeight
	      el.style.height = this.addEditForm.uploadHeight
	      el.style.borderWidth = this.addEditForm.uploadBorderWidth
	      el.style.borderStyle = this.addEditForm.uploadBorderStyle
	      el.style.borderColor = this.addEditForm.uploadBorderColor
	      el.style.borderRadius = this.addEditForm.uploadBorderRadius
	      el.style.backgroundColor = this.addEditForm.uploadBgColor
	    })
	    document.querySelectorAll('.addEdit-block .upload .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.uploadHeight
	      el.style.color = this.addEditForm.uploadLableColor
	      el.style.fontSize = this.addEditForm.uploadLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .upload .el-icon-plus').forEach(el=>{
	      el.style.color = this.addEditForm.uploadIconFontColor
	      el.style.fontSize = this.addEditForm.uploadIconFontSize
	      el.style.lineHeight = iconLineHeight
	      el.style.display = 'block'
	    })
	    // 多文本输入框
	    document.querySelectorAll('.addEdit-block .textarea .el-textarea__inner').forEach(el=>{
	      el.style.height = this.addEditForm.textareaHeight
	      el.style.color = this.addEditForm.textareaFontColor
	      el.style.fontSize = this.addEditForm.textareaFontSize
	      el.style.borderWidth = this.addEditForm.textareaBorderWidth
	      el.style.borderStyle = this.addEditForm.textareaBorderStyle
	      el.style.borderColor = this.addEditForm.textareaBorderColor
	      el.style.borderRadius = this.addEditForm.textareaBorderRadius
	      el.style.backgroundColor = this.addEditForm.textareaBgColor
	    })
	    document.querySelectorAll('.addEdit-block .textarea .el-form-item__label').forEach(el=>{
	      // el.style.lineHeight = this.addEditForm.textareaHeight
	      el.style.color = this.addEditForm.textareaLableColor
	      el.style.fontSize = this.addEditForm.textareaLableFontSize
	    })
	    // 保存
	    document.querySelectorAll('.addEdit-block .btn .btn-success').forEach(el=>{
	      el.style.width = this.addEditForm.btnSaveWidth
	      el.style.height = this.addEditForm.btnSaveHeight
	      el.style.color = this.addEditForm.btnSaveFontColor
	      el.style.fontSize = this.addEditForm.btnSaveFontSize
	      el.style.borderWidth = this.addEditForm.btnSaveBorderWidth
	      el.style.borderStyle = this.addEditForm.btnSaveBorderStyle
	      el.style.borderColor = this.addEditForm.btnSaveBorderColor
	      el.style.borderRadius = this.addEditForm.btnSaveBorderRadius
	      el.style.backgroundColor = this.addEditForm.btnSaveBgColor
	    })
	    // 返回
	    document.querySelectorAll('.addEdit-block .btn .btn-close').forEach(el=>{
	      el.style.width = this.addEditForm.btnCancelWidth
	      el.style.height = this.addEditForm.btnCancelHeight
	      el.style.color = this.addEditForm.btnCancelFontColor
	      el.style.fontSize = this.addEditForm.btnCancelFontSize
	      el.style.borderWidth = this.addEditForm.btnCancelBorderWidth
	      el.style.borderStyle = this.addEditForm.btnCancelBorderStyle
	      el.style.borderColor = this.addEditForm.btnCancelBorderColor
	      el.style.borderRadius = this.addEditForm.btnCancelBorderRadius
	      el.style.backgroundColor = this.addEditForm.btnCancelBgColor
	    })
	  })
	},
	addEditUploadStyleChange() {
		this.$nextTick(()=>{
		  document.querySelectorAll('.addEdit-block .upload .el-upload-list--picture-card .el-upload-list__item').forEach(el=>{
			el.style.width = this.addEditForm.uploadHeight
			el.style.height = this.addEditForm.uploadHeight
			el.style.borderWidth = this.addEditForm.uploadBorderWidth
			el.style.borderStyle = this.addEditForm.uploadBorderStyle
			el.style.borderColor = this.addEditForm.uploadBorderColor
			el.style.borderRadius = this.addEditForm.uploadBorderRadius
			el.style.backgroundColor = this.addEditForm.uploadBgColor
		  })
	  })
	},
  }
};
</script>
<style lang="scss">
.editor{
  height: 500px;
  
  & /deep/ .ql-container {
	  height: 310px;
  }
}
.amap-wrapper {
  width: 100%;
  height: 500px;
}
.search-box {
  position: absolute;
}
.addEdit-block {
	margin: -10px;
}
.detail-form-content {
	padding: 12px;
	background-color: transparent;
}
.btn .el-button {
  padding: 0;
}
</style>

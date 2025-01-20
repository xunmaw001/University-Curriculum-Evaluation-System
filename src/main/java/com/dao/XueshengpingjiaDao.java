package com.dao;

import com.entity.XueshengpingjiaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XueshengpingjiaVO;
import com.entity.view.XueshengpingjiaView;


/**
 * 学生评价
 * 
 * @author 
 * @email 
 * @date 2022-03-28 19:33:54
 */
public interface XueshengpingjiaDao extends BaseMapper<XueshengpingjiaEntity> {
	
	List<XueshengpingjiaVO> selectListVO(@Param("ew") Wrapper<XueshengpingjiaEntity> wrapper);
	
	XueshengpingjiaVO selectVO(@Param("ew") Wrapper<XueshengpingjiaEntity> wrapper);
	
	List<XueshengpingjiaView> selectListView(@Param("ew") Wrapper<XueshengpingjiaEntity> wrapper);

	List<XueshengpingjiaView> selectListView(Pagination page,@Param("ew") Wrapper<XueshengpingjiaEntity> wrapper);
	
	XueshengpingjiaView selectView(@Param("ew") Wrapper<XueshengpingjiaEntity> wrapper);
	

}

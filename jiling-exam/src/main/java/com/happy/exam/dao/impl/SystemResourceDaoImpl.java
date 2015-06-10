package com.happy.exam.dao.impl;  
import java.util.List;

import org.springframework.stereotype.Repository;

import com.happy.exam.common.bean.ModuleModel;
import com.happy.exam.dao.SystemResourceDao;
import com.happy.exam.model.SystemResource;

/**
 *  SystemResourceDao
 *
 * @version : Ver 1.0
 * @author	: <a href="mailto:hubo@95190.com">hubo</a>
 * @date	: 2015年5月17日 下午9:01:26 
 */
@Repository
public class SystemResourceDaoImpl extends MybatisBaseDaoImpl<SystemResource, java.lang.String> implements SystemResourceDao {

	/*mapper文件中的查询语句名称*/
	private final String FIND_TREE_GRID = SystemResource.class.getName() + ".findTreegrid";
	
	@Override
	public List<ModuleModel> findTreegrid(SystemResource systemResource) {
		
		return this.getSqlSessionTemplate().selectList(FIND_TREE_GRID, systemResource);
	} 

}

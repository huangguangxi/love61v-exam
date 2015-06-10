package com.happy.exam.service.impl;  
import java.util.List;

import com.happy.exam.service.SystemResourceService;
import com.happy.exam.service.impl.MybatisBaseServiceImpl;
import com.happy.exam.common.bean.ModuleModel;
import com.happy.exam.dao.SystemResourceDao;
import com.happy.exam.model.SystemResource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *  SystemResourceServiceImpl
 *
 * @version : Ver 1.0
 * @author	: <a href="mailto:hubo@95190.com">hubo</a>
 * @date	: 2015年5月17日 下午9:01:26 
 */
@Service
public class SystemResourceServiceImpl extends MybatisBaseServiceImpl<SystemResource, java.lang.String> implements SystemResourceService {

	@Autowired
	private SystemResourceDao systemResourceDao;
	
	@Override
	public List<ModuleModel> findTreegrid(SystemResource systemResource) {
		
		return systemResourceDao.findTreegrid(systemResource);
	} 

}

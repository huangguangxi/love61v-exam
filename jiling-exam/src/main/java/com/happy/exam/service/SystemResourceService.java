package com.happy.exam.service;   
import java.util.List;

import com.happy.exam.common.bean.ModuleModel;
import com.happy.exam.model.SystemResource;

/**
 *  SystemResourceService
 *
 * @version : Ver 1.0
 * @author	: <a href="mailto:hubo@95190.com">hubo</a>
 * @date	: 2015年5月17日 下午9:01:26 
 */
public interface SystemResourceService extends BaseService<SystemResource,java.lang.String>{

	/**
	 * 查询模块树grid
	 * @param moduleDto
	 * @return 树模块集合
	 */
	List<ModuleModel> findTreegrid(SystemResource systemResource);
}

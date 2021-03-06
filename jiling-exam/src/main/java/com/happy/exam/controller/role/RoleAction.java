/*
 * Beijing happy Information Technology Co,Ltd.
 * All rights reserved.
 * 
 * <p>RoleAction.java</p>
 */
package com.happy.exam.controller.role;

import java.util.Arrays;
import java.util.Date;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.happy.exam.common.bean.DataGridModel;
import com.happy.exam.common.dto.DatagridDto;
import com.happy.exam.common.pager.Pager;
import com.happy.exam.common.utils.UUIDutils;
import com.happy.exam.controller.BaseAction;
import com.happy.exam.model.SystemRole;
import com.happy.exam.service.SystemRoleService;

/**
 *  角色action
 *
 * @version : Ver 1.0
 * @author	: <a href="mailto:h358911056@qq.com">hubo</a>
 * @date	: 2015年6月1日 下午9:41:32 
 */
@Controller
@RequestMapping("/role")
public class RoleAction extends BaseAction {

	@Autowired
	private SystemRoleService systemRoleService;
	
	/**
	 * 角色表表页面
	 *
	 * @author 	: <a href="mailto:hubo@95190.com">hubo</a>  
	 * 2015年5月16日 下午11:48:57
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/list.html", method = RequestMethod.GET)
	public String showRoles(Model model) {
		return "/system/role/list";
	}
	
	/**
	 * 返回dataGrid角色数据
	 *
	 * @author 	: <a href="mailto:hubo@95190.com">hubo</a>  
	 * @date 2015年5月16日 下午11:56:08
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/list.json", method = RequestMethod.POST)
	@ResponseBody
	public DataGridModel showRolelist(DatagridDto dgDto,SystemRole role) {
		DataGridModel dataGridModel = new DataGridModel();
		
		role.setSortColumns("CREATETIME DESC");
		Long total = systemRoleService.getTotalCount(role);
		
		Pager pager = new Pager(dgDto.getPage(), dgDto.getRows(), total);
		pager = systemRoleService.findPageList(role, pager);

		dataGridModel.setRows(pager.getDatas());
		dataGridModel.setTotal(total);

		return dataGridModel;
	}
	
	/**
	 * 跳转到编辑用户页面
	 *
	 * @author 	: <a href="mailto:h358911056@qq.com">hubo</a>  2015年6月7日 下午5:11:03
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/beforeEditRole.html", method = RequestMethod.GET)
	public String beforeEditRole(Model model, String roleId,String flag) {
		if(StringUtils.isNotBlank(flag) && flag.equals("2")){//修改用户信息回选
			SystemRole role = systemRoleService.getById(roleId, SystemRole.class);
			model.addAttribute("role", role);
		}
		
		return "/system/role/edit";
	}
	
	/**
	 * 编辑用户
	 * 存在ID则修改，否则添加
	 *
	 * @author 	: <a href="mailto:h358911056@qq.com">hubo</a>  2015年6月7日 下午11:45:43
	 * @param model
	 * @param role
	 * @return
	 */
	@RequestMapping(value = "/editRole.json", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> editRole(Model model, SystemRole role) {
		Map<String, Object> map = getStatusMap();
		
		int count = 0;
		if(null != role && StringUtils.isNotBlank(role.getRoleId())){//修改用户
			role.setUpdateTime(new Date());
			count = systemRoleService.update(role);
			map.put("flag", role.getRoleId());
		}else{//添加
			role.setStatus(1);
			role.setRoleId(UUIDutils.getUUID());
			role.setCreateTime(new Date());
			count =  systemRoleService.save(role);
			map.put("flag", null);
		}
		map.put("status", count);
		
		return map;
	}
	
	/**
	 * 删除用户
	 *
	 * @author 	: <a href="mailto:h358911056@qq.com">hubo</a>  2015年6月7日 下午3:30:41
	 * @param ids id串
	 * @return
	 */
	@RequestMapping(value="/deleteRole.json",method=RequestMethod.POST)
	@ResponseBody public Map<String, Object> deleteRole(String ids){
		Map<String, Object> map = getStatusMap();
		
		if(StringUtils.isNotBlank(ids)){
			String [] idArr = ids.split(",");
			int count = systemRoleService.deleteBatch(Arrays.asList(idArr), SystemRole.class);
			
			map.put("status", count);
		}
		
		return map;
	}
	
}

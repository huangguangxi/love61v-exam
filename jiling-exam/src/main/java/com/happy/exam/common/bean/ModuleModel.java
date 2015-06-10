package com.happy.exam.common.bean;

import com.happy.exam.model.SystemResource;

/**
 * 返回treegrid数据库结构模型
 *
 * @version : Ver 1.0
 * @author : <a href="mailto:h358911056@qq.com">hubo</a>
 * @date : 2015年6月1日 下午11:54:41
 */
public class ModuleModel extends SystemResource{
 
	private static final long serialVersionUID = 1L;

	private String id; //节点ID
	
	private String name; //名称
	 
	private String _parentId;  //节点父ID

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String get_parentId() {
		return _parentId;
	}

	public void set_parentId(String _parentId) {
		this._parentId = _parentId;
	}
}

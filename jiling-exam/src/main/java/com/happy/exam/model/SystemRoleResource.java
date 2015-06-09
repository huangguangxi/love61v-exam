package com.happy.exam.model;

public class SystemRoleResource extends BaseModel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * @备注:     
     * @字段:Id VARCHAR(32)  
     */	
	private java.lang.String id;

	/**
     * @备注:     
     * @字段:RoleId VARCHAR(32)  
     */	
	private java.lang.String roleId;

	/**
     * @备注:     
     * @字段:ResourceId VARCHAR(32)  
     */	
	private java.lang.String resourceId;

	/**
     * @备注:操作ＩＤ串，逗号分隔     
     * @字段:OperateId VARCHAR(500)  
     */	
	private java.lang.String operateId;
	public SystemRoleResource(){
	}

	public SystemRoleResource(
		java.lang.String id
	){
		this.id = id;
	}

	
	/**
	 * @param id 
	 */
	public void setId(java.lang.String id) {
		this.id = id;
	}
	
	/**
	 * @return 
	 */
	public java.lang.String getId() {
		return this.id;
	}
	
	/**
	 * @param roleId 
	 */
	public void setRoleId(java.lang.String roleId) {
		this.roleId = roleId;
	}
	
	/**
	 * @return 
	 */
	public java.lang.String getRoleId() {
		return this.roleId;
	}
	
	/**
	 * @param resourceId 
	 */
	public void setResourceId(java.lang.String resourceId) {
		this.resourceId = resourceId;
	}
	
	/**
	 * @return 
	 */
	public java.lang.String getResourceId() {
		return this.resourceId;
	}
	
	/**
	 * @param operateId 操作ＩＤ串，逗号分隔
	 */
	public void setOperateId(java.lang.String operateId) {
		this.operateId = operateId;
	}
	
	/**
	 * @return 操作ＩＤ串，逗号分隔
	 */
	public java.lang.String getOperateId() {
		return this.operateId;
	}
}

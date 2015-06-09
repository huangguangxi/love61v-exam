package com.happy.exam.model;

public class SystemRoleGroup extends BaseModel{

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
     * @字段:GroupId VARCHAR(32)  
     */	
	private java.lang.String groupId;
	public SystemRoleGroup(){
	}

	public SystemRoleGroup(
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
	 * @param groupId 
	 */
	public void setGroupId(java.lang.String groupId) {
		this.groupId = groupId;
	}
	
	/**
	 * @return 
	 */
	public java.lang.String getGroupId() {
		return this.groupId;
	}
}

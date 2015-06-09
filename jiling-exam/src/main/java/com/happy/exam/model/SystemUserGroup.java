package com.happy.exam.model;

public class SystemUserGroup extends BaseModel{

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
     * @备注:用户表ID     
     * @字段:UserId VARCHAR(32)  
     */	
	private java.lang.String userId;

	/**
     * @备注:组表ID     
     * @字段:GroupId VARCHAR(32)  
     */	
	private java.lang.String groupId;
	public SystemUserGroup(){
	}

	public SystemUserGroup(
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
	 * @param userId 用户表ID
	 */
	public void setUserId(java.lang.String userId) {
		this.userId = userId;
	}
	
	/**
	 * @return 用户表ID
	 */
	public java.lang.String getUserId() {
		return this.userId;
	}
	
	/**
	 * @param groupId 组表ID
	 */
	public void setGroupId(java.lang.String groupId) {
		this.groupId = groupId;
	}
	
	/**
	 * @return 组表ID
	 */
	public java.lang.String getGroupId() {
		return this.groupId;
	}
}

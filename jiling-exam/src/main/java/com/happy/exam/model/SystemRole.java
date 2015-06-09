package com.happy.exam.model;

public class SystemRole extends BaseModel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * @备注:     
     * @字段:RoleId VARCHAR(32)  
     */	
	private java.lang.String roleId;

	/**
     * @备注:     
     * @字段:RoleName VARCHAR(64)  
     */	
	private java.lang.String roleName;

	/**
     * @备注:     
     * @字段:EngName VARCHAR(64)  
     */	
	private java.lang.String engName;

	/**
     * @备注:     
     * @字段:Remark VARCHAR(255)  
     */	
	private java.lang.String remark;

	/**
     * @备注:     
     * @字段:Status TINYINT(3)  
     */	
	private Integer status;

	/**
     * @备注:     
     * @字段:CreateTime DATETIME(19)  
     */	
	private java.util.Date createTime;
	
	 

	/**
     * @备注:     
     * @字段:UpdateTime DATETIME(19)  
     */	
	private java.util.Date updateTime;
	
	 
	public SystemRole(){
	}

	public SystemRole(
		java.lang.String roleId
	){
		this.roleId = roleId;
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
	 * @param roleName 
	 */
	public void setRoleName(java.lang.String roleName) {
		this.roleName = roleName;
	}
	
	/**
	 * @return 
	 */
	public java.lang.String getRoleName() {
		return this.roleName;
	}
	
	/**
	 * @param engName 
	 */
	public void setEngName(java.lang.String engName) {
		this.engName = engName;
	}
	
	/**
	 * @return 
	 */
	public java.lang.String getEngName() {
		return this.engName;
	}
	
	/**
	 * @param remark 
	 */
	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
	
	/**
	 * @return 
	 */
	public java.lang.String getRemark() {
		return this.remark;
	}
	
	/**
	 * @param status 
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	/**
	 * @return 
	 */
	public Integer getStatus() {
		return this.status;
	}
	
	/**
	 * @param createTime 
	 */
	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
	}
	
	/**
	 * @return 
	 */
	public java.util.Date getCreateTime() {
		return this.createTime;
	}
	 
	
	/**
	 * @param updateTime 
	 */
	public void setUpdateTime(java.util.Date updateTime) {
		this.updateTime = updateTime;
	}
	
	/**
	 * @return 
	 */
	public java.util.Date getUpdateTime() {
		return this.updateTime;
	}
	 
}

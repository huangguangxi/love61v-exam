package com.happy.exam.model;

public class Department extends BaseModel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * @备注:uuid     
     * @字段:DeptId VARCHAR(32)  
     */	
	private java.lang.String deptId;

	/**
     * @备注:部门名称     
     * @字段:DeptName VARCHAR(64)  
     */	
	private java.lang.String deptName;

	/**
     * @备注:父部门id     
     * @字段:ParentId BIGINT(19)  
     */	
	private java.lang.Long parentId;

	/**
     * @备注:地区编码     
     * @字段:AreaCode VARCHAR(64)  
     */	
	private java.lang.String areaCode;
	public Department(){
	}

	public Department(
		java.lang.String deptId
	){
		this.deptId = deptId;
	}

	
	/**
	 * @param deptId uuid
	 */
	public void setDeptId(java.lang.String deptId) {
		this.deptId = deptId;
	}
	
	/**
	 * @return uuid
	 */
	public java.lang.String getDeptId() {
		return this.deptId;
	}
	
	/**
	 * @param deptName 部门名称
	 */
	public void setDeptName(java.lang.String deptName) {
		this.deptName = deptName;
	}
	
	/**
	 * @return 部门名称
	 */
	public java.lang.String getDeptName() {
		return this.deptName;
	}
	
	/**
	 * @param parentId 父部门id
	 */
	public void setParentId(java.lang.Long parentId) {
		this.parentId = parentId;
	}
	
	/**
	 * @return 父部门id
	 */
	public java.lang.Long getParentId() {
		return this.parentId;
	}
	
	/**
	 * @param areaCode 地区编码
	 */
	public void setAreaCode(java.lang.String areaCode) {
		this.areaCode = areaCode;
	}
	
	/**
	 * @return 地区编码
	 */
	public java.lang.String getAreaCode() {
		return this.areaCode;
	}
}

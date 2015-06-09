package com.happy.exam.model;

public class SystemUser extends BaseModel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Department department;

	/**
     * @备注:用户uuid     
     * @字段:UserId VARCHAR(32)  
     */	
	private java.lang.String userId;

	/**
     * @备注:部门uuid     
     * @字段:DeptId VARCHAR(32)  
     */	
	private java.lang.String deptId;

	/**
     * @备注:登陆账号     
     * @字段:LoginName VARCHAR(32)  
     */	
	private java.lang.String loginName;

	/**
     * @备注:密码     
     * @字段:Password VARCHAR(64)  
     */	
	private java.lang.String password;

	/**
     * @备注:英文名称     
     * @字段:EngName VARCHAR(32)  
     */	
	private java.lang.String engName;

	/**
     * @备注:用户名     
     * @字段:UserName VARCHAR(20)  
     */	
	private java.lang.String userName;

	/**
     * @备注:电话号码     
     * @字段:PhoneNumber VARCHAR(20)  
     */	
	private java.lang.String phoneNumber;

	/**
     * @备注:     
     * @字段:Email VARCHAR(32)  
     */	
	private java.lang.String email;

	/**
     * @备注:     
     * @字段:Sex CHAR(1)  
     */	
	private java.lang.String sex;

	/**
     * @备注:     
     * @字段:Address VARCHAR(50)  
     */	
	private java.lang.String address;

	/**
     * @备注:     
     * @字段:Remark VARCHAR(255)  
     */	
	private java.lang.String remark;

	/**
     * @备注:1表示已正常登陆,2已禁用登陆，3已被删除     
     * @字段:Status TINYINT UNSIGNED(3)  
     */	
	private Integer status;

	/**
     * @备注:入库时间     
     * @字段:CreateTime DATETIME(19)  
     */	
	private java.util.Date createTime;
	
	 

	/**
     * @备注:变更时间     
     * @字段:UpdateTime DATETIME(19)  
     */	
	private java.util.Date updateTime;
	
	 
	public SystemUser(){
	}

	public SystemUser(
		java.lang.String userId
	){
		this.userId = userId;
	}

	
	/**
	 * @param userId 用户uuid
	 */
	public void setUserId(java.lang.String userId) {
		this.userId = userId;
	}
	
	/**
	 * @return 用户uuid
	 */
	public java.lang.String getUserId() {
		return this.userId;
	}
	
	/**
	 * @param deptId 部门uuid
	 */
	public void setDeptId(java.lang.String deptId) {
		this.deptId = deptId;
	}
	
	/**
	 * @return 部门uuid
	 */
	public java.lang.String getDeptId() {
		return this.deptId;
	}
	
	/**
	 * @param loginName 登陆账号
	 */
	public void setLoginName(java.lang.String loginName) {
		this.loginName = loginName;
	}
	
	/**
	 * @return 登陆账号
	 */
	public java.lang.String getLoginName() {
		return this.loginName;
	}
	
	/**
	 * @param password 密码
	 */
	public void setPassword(java.lang.String password) {
		this.password = password;
	}
	
	/**
	 * @return 密码
	 */
	public java.lang.String getPassword() {
		return this.password;
	}
	
	/**
	 * @param engName 英文名称
	 */
	public void setEngName(java.lang.String engName) {
		this.engName = engName;
	}
	
	/**
	 * @return 英文名称
	 */
	public java.lang.String getEngName() {
		return this.engName;
	}
	
	/**
	 * @param userName 用户名
	 */
	public void setUserName(java.lang.String userName) {
		this.userName = userName;
	}
	
	/**
	 * @return 用户名
	 */
	public java.lang.String getUserName() {
		return this.userName;
	}
	
	/**
	 * @param phoneNumber 电话号码
	 */
	public void setPhoneNumber(java.lang.String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	/**
	 * @return 电话号码
	 */
	public java.lang.String getPhoneNumber() {
		return this.phoneNumber;
	}
	
	/**
	 * @param email 
	 */
	public void setEmail(java.lang.String email) {
		this.email = email;
	}
	
	/**
	 * @return 
	 */
	public java.lang.String getEmail() {
		return this.email;
	}
	
	/**
	 * @param sex 
	 */
	public void setSex(java.lang.String sex) {
		this.sex = sex;
	}
	
	/**
	 * @return 
	 */
	public java.lang.String getSex() {
		return this.sex;
	}
	
	/**
	 * @param address 
	 */
	public void setAddress(java.lang.String address) {
		this.address = address;
	}
	
	/**
	 * @return 
	 */
	public java.lang.String getAddress() {
		return this.address;
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
	 * @param status 1表示已正常登陆,2已禁用登陆，3已被删除
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	/**
	 * @return 1表示已正常登陆,2已禁用登陆，3已被删除
	 */
	public Integer getStatus() {
		return this.status;
	}
	
	/**
	 * @param createTime 入库时间
	 */
	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
	}
	
	/**
	 * @return 入库时间
	 */
	public java.util.Date getCreateTime() {
		return this.createTime;
	}
	 
	
	/**
	 * @param updateTime 变更时间
	 */
	public void setUpdateTime(java.util.Date updateTime) {
		this.updateTime = updateTime;
	}
	
	/**
	 * @return 变更时间
	 */
	public java.util.Date getUpdateTime() {
		return this.updateTime;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}
}

package com.happy.exam.model;

public class SystemOperate extends BaseModel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * @备注:操作uuid     
     * @字段:OperateId VARCHAR(32)  
     */	
	private java.lang.String operateId;

	/**
     * @备注:名称     
     * @字段:HandleName VARCHAR(64)  
     */	
	private java.lang.String handleName;

	/**
     * @备注:英文名称     
     * @字段:EngName VARCHAR(64)  
     */	
	private java.lang.String engName;

	/**
     * @备注:状态     
     * @字段:Status TINYINT(3)  
     */	
	private Integer status;

	/**
     * @备注:备注     
     * @字段:Remark VARCHAR(255)  
     */	
	private java.lang.String remark;
	public SystemOperate(){
	}

	public SystemOperate(
		java.lang.String operateId
	){
		this.operateId = operateId;
	}

	
	/**
	 * @param operateId 操作uuid
	 */
	public void setOperateId(java.lang.String operateId) {
		this.operateId = operateId;
	}
	
	/**
	 * @return 操作uuid
	 */
	public java.lang.String getOperateId() {
		return this.operateId;
	}
	
	/**
	 * @param handleName 名称
	 */
	public void setHandleName(java.lang.String handleName) {
		this.handleName = handleName;
	}
	
	/**
	 * @return 名称
	 */
	public java.lang.String getHandleName() {
		return this.handleName;
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
	 * @param status 状态
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	/**
	 * @return 状态
	 */
	public Integer getStatus() {
		return this.status;
	}
	
	/**
	 * @param remark 备注
	 */
	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
	
	/**
	 * @return 备注
	 */
	public java.lang.String getRemark() {
		return this.remark;
	}
}

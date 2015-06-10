package com.happy.exam.model;

public class SystemResource extends BaseModel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * @备注:资源uuid     
     * @字段:ResourceId VARCHAR(32)  
     */	
	private java.lang.String resourceId;

	/**
     * @备注:名称     
     * @字段:ResourceName VARCHAR(64)  
     */	
	private java.lang.String resourceName;

	/**
     * @备注:英文名称     
     * @字段:EngName VARCHAR(64)  
     */	
	private java.lang.String engName;

	/**
     * @备注:父ID     
     * @字段:ParentId VARCHAR(32)  
     */	
	private java.lang.String parentId;

	/**
     * @备注:URL路径     
     * @字段:Path VARCHAR(255)  
     */	
	private java.lang.String path;

	/**
     * @备注:图标地址     
     * @字段:SourceIcon VARCHAR(255)  
     */	
	private java.lang.String sourceIcon;

	/**
     * @备注:类型     
     * @字段:SourceType VARCHAR(32)  
     */	
	private java.lang.String sourceType;

	/**
     * @备注:1应用；２禁用；３已删除     
     * @字段:Status TINYINT(3)  
     */	
	private Integer status;
	
	/**
     * @备注: 顺序   
     * @字段:Sort INT 
     */	
	private Integer sort;

	/**
     * @备注:备注     
     * @字段:Remark VARCHAR(255)  
     */	
	private java.lang.String remark;

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
	
	 
	public SystemResource(){
	}

	public SystemResource(
		java.lang.String resourceId
	){
		this.resourceId = resourceId;
	}

	
	/**
	 * @param resourceId 资源uuid
	 */
	public void setResourceId(java.lang.String resourceId) {
		this.resourceId = resourceId;
	}
	
	/**
	 * @return 资源uuid
	 */
	public java.lang.String getResourceId() {
		return this.resourceId;
	}
	
	/**
	 * @param resourceName 名称
	 */
	public void setResourceName(java.lang.String resourceName) {
		this.resourceName = resourceName;
	}
	
	/**
	 * @return 名称
	 */
	public java.lang.String getResourceName() {
		return this.resourceName;
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
	 * @param parentId 父ID
	 */
	public void setParentId(java.lang.String parentId) {
		this.parentId = parentId;
	}
	
	/**
	 * @return 父ID
	 */
	public java.lang.String getParentId() {
		return this.parentId;
	}
	
	/**
	 * @param path URL路径
	 */
	public void setPath(java.lang.String path) {
		this.path = path;
	}
	
	/**
	 * @return URL路径
	 */
	public java.lang.String getPath() {
		return this.path;
	}
	
	/**
	 * @param sourceIcon 图标地址
	 */
	public void setSourceIcon(java.lang.String sourceIcon) {
		this.sourceIcon = sourceIcon;
	}
	
	/**
	 * @return 图标地址
	 */
	public java.lang.String getSourceIcon() {
		return this.sourceIcon;
	}
	
	/**
	 * @param sourceType 类型
	 */
	public void setSourceType(java.lang.String sourceType) {
		this.sourceType = sourceType;
	}
	
	/**
	 * @return 类型
	 */
	public java.lang.String getSourceType() {
		return this.sourceType;
	}
	
	/**
	 * @param status 1应用；２禁用；３已删除
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	/**
	 * @return 1应用；２禁用；３已删除
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

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
}

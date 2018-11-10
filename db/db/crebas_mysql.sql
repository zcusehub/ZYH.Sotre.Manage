/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/11/10 11:43:22                          */
/*==============================================================*/


drop index IX_Department on Organization.Department;

drop table if exists Organization.Department;

drop table if exists Organization.DepartmentEmployee;

drop table if exists Organization.DepartmentRole;

drop index IX_Employee on HR.Employee;

drop table if exists HR.Employee;

drop index IX_Employee on HR.EmployeeLogin;

drop table if exists HR.EmployeeLogin;

drop table if exists Finance.FlowingCapital;

drop table if exists Finance.FlowingCapitalItem;

drop table if exists InOrOutMoneyStatistics;

drop table if exists InOrOutMoneyStatisticsItem;

drop table if exists SysMange.MaterialInfo;

drop index IX_MaterialPackage on SysMange.MaterialPackage;

drop table if exists SysMange.MaterialPackage;

drop table if exists SysMange.MaterialTypes;

drop table if exists SysMange.MeasureUnit;

drop table if exists SysMange.Menu;

drop table if exists Organization.MenuRole;

drop table if exists SysMange.Module;

drop table if exists Organization.ModuleRole;

drop table if exists Sales.Product;

drop table if exists Procurement.Purchase;

drop table if exists Procurement.PurchaseItems;

drop table if exists SalesProduct;

drop table if exists SalesProductItem;

drop index IX_WarehouseStock on Inventory.StockTaking;

drop table if exists Inventory.StockTaking;

drop index IX_WarehouseStock on Inventory.StockTakingItem;

drop table if exists Inventory.StockTakingItem;

drop table if exists SysMange.Supplier;

drop index IX_UserPosition on HR.UserPosition;

drop table if exists HR.UserPosition;

drop index IX_Warehouse on Inventory.Warehouse;

drop table if exists Inventory.Warehouse;

drop index IX_WarehouseStock on Inventory.WarehouseInventory;

drop table if exists Inventory.WarehouseInventory;

drop index IX_WarehouseRegion on Inventory.WarehouseRegion;

drop table if exists Inventory.WarehouseRegion;

/*==============================================================*/
/* User: Finance                                                */
/*==============================================================*/
create user Finance;

/*==============================================================*/
/* User: HR                                                     */
/*==============================================================*/
create user HR;

/*==============================================================*/
/* User: Inventory                                              */
/*==============================================================*/
create user Inventory;

/*==============================================================*/
/* User: Organization                                           */
/*==============================================================*/
create user Organization;

/*==============================================================*/
/* User: Procurement                                            */
/*==============================================================*/
create user Procurement;

/*==============================================================*/
/* User: Sales                                                  */
/*==============================================================*/
create user Sales;

/*==============================================================*/
/* User: SysMange                                               */
/*==============================================================*/
create user SysMange;

/*==============================================================*/
/* User: dbo                                                    */
/*==============================================================*/
create user dbo;

/*==============================================================*/
/* Table: Department                                            */
/*==============================================================*/
create table Organization.Department
(
   DepartmentGUID       char(36) not null comment '部门标识',
   DepartmentName       national varchar(20) comment '部门名称',
   ParentDepartmentGUID char(36) comment '上级部门标识',
   DepartmentType       tinyint comment '部门类型 0=普通部门 1=子公司 2=门店 ',
   Deleted              bool,
   DepartmentCode       int auto_increment comment '部门编码',
   DepartmentTel        varchar(50) comment '部门电话',
   Remark               varchar(500) comment '部门描述',
   Enabled              bool default 1 comment '启用标志',
   primary key (DepartmentGUID)
);

alter table Organization.Department comment '人力资源.组织架构.部门';

/*==============================================================*/
/* Index: IX_Department                                         */
/*==============================================================*/
create index IX_Department on Organization.Department
(
   Deleted,
   DepartmentCode,
   Enabled,
   DepartmentName
);

/*==============================================================*/
/* Table: DepartmentEmployee                                    */
/*==============================================================*/
create table Organization.DepartmentEmployee
(
   DepartmentEmployeeID char(36) not null comment '部门角色标识',
   DepartmentGUID       char(36) comment '部门标识',
   DepartmentRoleGUID   char(36) comment '部门角色标识',
   RoleGUID             char(36) comment '角色标识',
   EmployeeID           varcahr(32),
   Enabled              bool,
   primary key (DepartmentEmployeeID)
);

alter table Organization.DepartmentEmployee comment '人力资源.组织架构.部门员工';

/*==============================================================*/
/* Table: DepartmentRole                                        */
/*==============================================================*/
create table Organization.DepartmentRole
(
   DepartmentRoleGUID   char(36) not null comment '部门角色标识',
   DepartmentGUID       char(36) comment '部门标识',
   RoleGUID             char(36) comment '角色标识',
   RoleName             varcahr(32),
   Enabled              bool,
   primary key (DepartmentRoleGUID)
);

alter table Organization.DepartmentRole comment '人力资源.组织架构.部门角色';

/*==============================================================*/
/* Table: Employee                                              */
/*==============================================================*/
create table HR.Employee
(
   EmployeeGUID         char(36) not null comment '员工GUID',
   EmployeeName         varchar(50) not null comment '姓名',
   IndexCode            varchar(10) not null comment '姓名首字母缩写',
   EmployeeCode         varchar(20) comment '员工编号',
   Birthday             datetime comment '出生日期',
   Gender               tinyint comment '性别',
   Address              varchar(150) comment '居住地址',
   IDCardNo             varchar(20) comment '身份证号码',
   InductionDate        datetime comment '入职日期',
   FormalDate           datetime comment '转正日期',
   LeaveDate            datetime comment '离职日期',
   Status               tinyint not null comment '状态',
   DutyID               int comment '职务',
   PositionID           int comment '职位',
   Tel                  varchar(30) comment '联系电话',
   primary key (EmployeeGUID)
);

alter table HR.Employee comment '人力资源.人事管理.员工';

/*==============================================================*/
/* Index: IX_Employee                                           */
/*==============================================================*/
create index IX_Employee on HR.Employee
(
   EmployeeName,
   IndexCode,
   Birthday,
   Gender,
   EmployeeCode,
   InductionDate,
   FormalDate,
   LeaveDate,
   Status
);

/*==============================================================*/
/* Table: EmployeeLogin                                         */
/*==============================================================*/
create table HR.EmployeeLogin
(
   EmployeeLoginID      int not null auto_increment comment '员工GUID',
   EmployeeGUID         char(36) comment '员工编号',
   UserName             varchar(50) not null comment '姓名',
   Pwd                  varchar(50) not null comment '姓名首字母缩写',
   Phone                varchar(11) comment '出生日期',
   LoginCount           int comment '性别',
   LastTime             datetime comment '居住地址',
   Enable               bool comment '身份证号码',
   Deleted              bool not null comment '所在部门',
   primary key (EmployeeLoginID)
);

alter table HR.EmployeeLogin comment '人力资源.人事管理.员工登录';

/*==============================================================*/
/* Index: IX_Employee                                           */
/*==============================================================*/
create index IX_Employee on HR.EmployeeLogin
(
   UserName,
   Pwd,
   Phone,
   LoginCount,
   EmployeeGUID,
   Deleted
);

/*==============================================================*/
/* Table: FlowingCapital                                        */
/*==============================================================*/
create table Finance.FlowingCapital
(
   FlowingCapitalID     int not null auto_increment,
   FlowingCapitalName   varchar(64),
   FlowingCapitalType   int comment '1：收入 2：支出',
   RecordType           int comment '1:采购自动 (支出)2 :销售自动(收入)（销售模块录入后自动填写收支）3:手动录入',
   ApplyUserID          int,
   RecordTime           datatime,
   Amount               float(8,2),
   Remark               varchar(256),
   SourceID             int comment '收支来源于某种类型的业务类型，目前只有，采购 和销售 关联这个字段',
   primary key (FlowingCapitalID)
);

alter table Finance.FlowingCapital comment '这里是统计店面中没一步骤的收入和支出明细统计
1.包括手动录入资金流动情况（如：交房租 交电费等）
                                           -&#';

/*==============================================================*/
/* Table: FlowingCapitalItem                                    */
/*==============================================================*/
create table Finance.FlowingCapitalItem
(
   FlowingCapitalItemID int not null auto_increment,
   FlowingCapitalID     int,
   RecordItemType       int comment '1:水费 2:电费 3:天然气费 4:宽带费 5:交通费 6:房租费 7:通讯费 8:生活费 9:耗损支出 10:其它费用',
   Amount               float(8,2),
   BeginTime            datatime,
   Endtime              datatime,
   RecordTime           datatime,
   Remark               varchar(256),
   primary key (FlowingCapitalItemID)
);

alter table Finance.FlowingCapitalItem comment '财务管理.日常业务.收支管理明细';

/*==============================================================*/
/* Table: InOrOutMoneyStatistics                                */
/*==============================================================*/
create table InOrOutMoneyStatistics
(
   InOrOutMoneyStatisticsID int not null auto_increment,
   Date                 date,
   AmountIn             decimal(18,2),
   AmountOut            decimal(18,2),
   primary key (InOrOutMoneyStatisticsID)
);

alter table InOrOutMoneyStatistics comment '统计每天为单位资金流统计（收入/支出统计）
每天采购,支出管理  每条记录统计
数据来源于收支管';

/*==============================================================*/
/* Table: InOrOutMoneyStatisticsItem                            */
/*==============================================================*/
create table InOrOutMoneyStatisticsItem
(
   InOrOutMoneyStatisticsItemID int not null auto_increment,
   InOrOutMoneyStatisticsID int,
   SourceID             date,
   Amount               decimal(18,2),
   RecordType           int comment '1:采购自动 (支出)2 :销售自动(收入)（销售模块录入后自动填写收支）3:手动录入',
   FlowingCapitalType   int comment '1：收入 2：支出',
   primary key (InOrOutMoneyStatisticsItemID)
);

alter table InOrOutMoneyStatisticsItem comment ' ';

/*==============================================================*/
/* Table: MaterialInfo                                          */
/*==============================================================*/
create table SysMange.MaterialInfo
(
   MaterialID           int not null auto_increment comment '物料ID',
   MaterialCode         varchar(16),
   MaterialName         varchar(64),
   MaterialType         int comment '1:原料 2:半成品 ',
   MaterialTypeID       int,
   Enabled              bool not null default 1 comment '启用状态',
   MaterialShortName    varchar(50) comment '物料简称',
   ShortIndexCode       varchar(10) comment '物料简码',
   MaterialImage        varchar(200) comment '物料图片',
   CreateTime           datetime,
   primary key (MaterialID)
);

alter table SysMange.MaterialInfo comment '系统管理.业务数据.物料';

/*==============================================================*/
/* Table: MaterialPackage                                       */
/*==============================================================*/
create table SysMange.MaterialPackage
(
   MaterialPackageID    int not null auto_increment comment '包装规格ID',
   MaterialID           int not null comment '物料ID',
   MaterialPackageName  varchar(50) not null comment '规格名称',
   Remark               varchar(200) comment '规格说明',
   Ratio                float not null comment '换算比率',
   MeasureUnitID        int not null comment '计量单位',
   BarCode              varchar(36) comment '条码',
   CostPrice            float(8,2) not null default 0 comment '成本价',
   SalePrice            float(8,2) not null default 0 comment '销售价',
   Enabled              bool,
   primary key (MaterialPackageID)
);

alter table SysMange.MaterialPackage comment '系统管理.业务数据.物料包装规格';

/*==============================================================*/
/* Index: IX_MaterialPackage                                    */
/*==============================================================*/
create index IX_MaterialPackage on SysMange.MaterialPackage
(
   MaterialID
);

/*==============================================================*/
/* Table: MaterialTypes                                         */
/*==============================================================*/
create table SysMange.MaterialTypes
(
   MaterialTypeID       int not null auto_increment,
   ParentMaterialTypeID int,
   MaterialTypeName     varchar(64),
   Remark               varchar(200) comment '物料类型说明',
   Enabled              bool not null default 1 comment '启用标志',
   Deleted              bool not null default 0 comment '删除标志',
   primary key (MaterialTypeID)
);

alter table SysMange.MaterialTypes comment '系统管理.业务数据.物料分类';

/*==============================================================*/
/* Table: MeasureUnit                                           */
/*==============================================================*/
create table SysMange.MeasureUnit
(
   MeasureUnitID        int not null auto_increment,
   MeasureUnitName      varchar(16),
   Enable               bool,
   primary key (MeasureUnitID)
);

alter table SysMange.MeasureUnit comment '系统管理.业务数据.计量单位';

/*==============================================================*/
/* Table: Menu                                                  */
/*==============================================================*/
create table SysMange.Menu
(
   MenuID               int not null auto_increment,
   MenuName             varchar(64),
   Index                varchar(64),
   IsEnable             bool,
   MenuImg              varchar(128) comment '1.实体店 2.淘宝 3.京东 4.微信',
   MenuURL              varchar(128),
   Remark               text,
   MenuParentID         int,
   ModuleID             int,
   primary key (MenuID)
);

alter table SysMange.Menu comment '系统管理.菜单管理.模块菜单';

/*==============================================================*/
/* Table: MenuRole                                              */
/*==============================================================*/
create table Organization.MenuRole
(
   MenuRoleID           char(36) not null comment '部门角色标识',
   ModuleRoleID         char(36) comment '部门标识',
   ModuleID             int,
   MenuParentID         int,
   authority            int comment '1:read 2:update 4:delete',
   primary key (MenuRoleID)
);

alter table Organization.MenuRole comment '人力资源.组织架构.角色模块菜单权限';

/*==============================================================*/
/* Table: Module                                                */
/*==============================================================*/
create table SysMange.Module
(
   ModuleID             int not null auto_increment,
   ModuleName           varchar(64),
   Index                varchar(64),
   IsEnable             bool,
   ModuleImg            varchar(128) comment '1.实体店 2.淘宝 3.京东 4.微信',
   ModuleURL            varchar(128),
   Remark               text,
   primary key (ModuleID)
);

alter table SysMange.Module comment '系统管理.菜单管理.模块';

/*==============================================================*/
/* Table: ModuleRole                                            */
/*==============================================================*/
create table Organization.ModuleRole
(
   ModuleRoleID         char(36) not null comment '部门角色标识',
   DepartmentRoleGUID   char(36) comment '部门标识',
   ModuleID             int comment '角色标识',
   IsEnable             bool,
   primary key (ModuleRoleID)
);

alter table Organization.ModuleRole comment '人力资源.组织架构.角色模块权限';

/*==============================================================*/
/* Table: Product                                               */
/*==============================================================*/
create table Sales.Product
(
   ProductID            int not null auto_increment,
   ProductName          varchar(32),
   ProductType          int comment '1.冷串串 2.热串串 3.小吃  4.酒水 5.特色菜 6.主食 7.其它',
   ProductURL           varchar(128),
   Remark               varchar(256),
   CreateTime           datatime,
   CostPrice            float(8,2),
   SalePrice            float(8,2),
   MeasureUnitID        int,
   ProductCreateURL     varchar(128) comment '产品制作流程关联的文档路径',
   primary key (ProductID)
);

alter table Sales.Product comment '销售管理.日常业务.产品';

/*==============================================================*/
/* Table: Purchase                                              */
/*==============================================================*/
create table Procurement.Purchase
(
   PurchaseID           int not null auto_increment,
   Address              varchar(128),
   CostPrice            decimal(18),
   RealPrice            decimal(18),
   EmployeeGUID         char(36),
   Contact              varchar(64),
   RoadPrice            decimal(18),
   Remark               text,
   RecordTime           datatime,
   Status               int comment '0. 待采购  1.采购中  2.采购完成',
   CreateTime           datatime,
   ApplyTime            datatime,
   PlanTime             datatime,
   primary key (PurchaseID)
);

alter table Procurement.Purchase comment '采购管理.日常业务.需求采购';

/*==============================================================*/
/* Table: PurchaseItems                                         */
/*==============================================================*/
create table Procurement.PurchaseItems
(
   PurchaseItemID       int not null auto_increment,
   PurchaseID           int,
   Remark               text,
   Price                decimal(18),
   Count                decimal(18),
   TotalPrice           decimal(18),
   MaterialPackageID    int,
   SupplierID           int,
   MaterialID           int,
   primary key (PurchaseItemID)
);

alter table Procurement.PurchaseItems comment '采购管理.日常业务.需求采购明细';

/*==============================================================*/
/* Table: SalesProduct                                          */
/*==============================================================*/
create table SalesProduct
(
   SalesProductID       int not null auto_increment,
   SalesProductCode     varchar(32),
   SaleTime             datatime,
   PersonCount          int,
   Amount               float(8,2),
   Discount             decimal,
   DiscountAmount       float(8,2),
   ConsumerCode         varchar(64) comment '消费者编码，用来关联消费者的（如：注册了会员，或线上支付等）',
   primary key (SalesProductID)
);

alter table SalesProduct comment '销售管理.日常业务.产品销售';

/*==============================================================*/
/* Table: SalesProductItem                                      */
/*==============================================================*/
create table SalesProductItem
(
   SalesProductItemID   int not null auto_increment,
   SalesProductID       int,
   ProductID            int,
   SaleCount            decimal,
   MeasureUnitID        int,
   Amount               float(8,2),
   DiscountAmount       float(8,2),
   Discount             decimal,
   primary key (SalesProductItemID)
);

alter table SalesProductItem comment '销售管理.日常业务.产品销售明细';

/*==============================================================*/
/* Table: StockTaking                                           */
/*==============================================================*/
create table Inventory.StockTaking
(
   StockTakingID        int not null auto_increment comment '仓库库存ID',
   CreateTime           datetime,
   EmployeeGUID         int not null,
   Status               decimal(16,8) not null default 0.0 comment '0 草稿 1完成',
   WarehouseID          float(8) not null default 0,
   ApplyTime            datetime not null,
   Remark               varchar(128),
   primary key (StockTakingID)
);

alter table Inventory.StockTaking comment '库存管理.报表.仓库库存';

/*==============================================================*/
/* Index: IX_WarehouseStock                                     */
/*==============================================================*/
create index IX_WarehouseStock on Inventory.StockTaking
(
   CreateTime,
   EmployeeGUID,
   ApplyTime
);

/*==============================================================*/
/* Table: StockTakingItem                                       */
/*==============================================================*/
create table Inventory.StockTakingItem
(
   StockTakingItemID    int not null auto_increment,
   StockTakingID        int not null,
   MaterialID           int not null,
   MaterialPackageID    decimal(16,8) not null default 0.0,
   Remark               varchar(128),
   Inventory            decimal(16,8),
   OldInventory         decimal(16,8),
   primary key (StockTakingItemID)
);

alter table Inventory.StockTakingItem comment '库存管理.业务数据.仓库明细';

/*==============================================================*/
/* Index: IX_WarehouseStock                                     */
/*==============================================================*/
create index IX_WarehouseStock on Inventory.StockTakingItem
(
   MaterialID
);

/*==============================================================*/
/* Table: Supplier                                              */
/*==============================================================*/
create table SysMange.Supplier
(
   SupplierID           int not null auto_increment,
   SupplierName         varchar(64),
   ContactName          varchar(64),
   Contact              varchar(64),
   SupplierType         int comment '1.实体店 2.淘宝 3.京东 4.微信',
   Address              varchar(128),
   Remark               text,
   primary key (SupplierID)
);

alter table SysMange.Supplier comment '系统管理.业务数据.供应商';

/*==============================================================*/
/* Table: UserPosition                                          */
/*==============================================================*/
create table HR.UserPosition
(
   PositionID           int not null auto_increment comment '职位ID',
   DepartmentGUID       char(36) comment '部门标识',
   PositionName         varchar(50) not null comment '职位名称',
   IndexCode            varchar(20) not null comment '索引编码',
   ParentPositionID     int not null comment '上级职位ID',
   IsDirector           tinyint not null comment '是否为主管     0=否，1=是',
   Memo                 text comment '职位说明书',
   Enabled              bool not null comment '启用状态 ',
   Deleted              bool not null comment '删除标志',
   primary key (PositionID)
);

alter table HR.UserPosition comment '人力资源.组织架构.职位';

/*==============================================================*/
/* Index: IX_UserPosition                                       */
/*==============================================================*/
create index IX_UserPosition on HR.UserPosition
(
   IndexCode,
   IsDirector,
   Enabled,
   Deleted,
   PositionName
);

/*==============================================================*/
/* Table: Warehouse                                             */
/*==============================================================*/
create table Inventory.Warehouse
(
   WarehouseID          int not null auto_increment comment '仓库ID',
   WarehouseCode        varchar(20) not null comment '仓库编号',
   WarehouseTypeID      int not null comment '仓库类型ID',
   WarehouseName        varchar(50) not null comment '仓库名称',
   IndexCode            varchar(20) not null comment '索引编码',
   DistrictID           int not null comment '所在区域ID',
   Address              varchar(200) comment '仓库地址',
   DepartmentGUID       char(36) comment '所属部门',
   Remark               varchar(500) comment '备注说明',
   Enabled              bool not null default 1 comment '启用状态',
   Deleted              bool not null default 0 comment '删除标志',
   Locked               bool not null comment '锁定状态',
   primary key (WarehouseID)
);

alter table Inventory.Warehouse comment '仓库';

/*==============================================================*/
/* Index: IX_Warehouse                                          */
/*==============================================================*/
create index IX_Warehouse on Inventory.Warehouse
(
   WarehouseTypeID,
   IndexCode,
   Enabled,
   Deleted,
   WarehouseName,
   DistrictID,
   WarehouseCode,
   DepartmentGUID
);

/*==============================================================*/
/* Table: WarehouseInventory                                    */
/*==============================================================*/
create table Inventory.WarehouseInventory
(
   WarehouseInventoryID int not null auto_increment comment '仓库库存ID',
   WarehouseRegionID    int comment '仓库区域ID',
   NewestPrice          float(8) not null default 0 comment '最近价格',
   MaterialID           int not null comment '物料ID',
   MaterialPackageID    int,
   Inventory            decimal(16,8) not null default 0.0 comment '当前库存',
   Cost                 float(8) not null default 0 comment '当前成本',
   primary key (WarehouseInventoryID)
);

alter table Inventory.WarehouseInventory comment '库存管理.报表.仓库库存';

/*==============================================================*/
/* Index: IX_WarehouseStock                                     */
/*==============================================================*/
create index IX_WarehouseStock on Inventory.WarehouseInventory
(
   WarehouseRegionID,
   MaterialID
);

/*==============================================================*/
/* Table: WarehouseRegion                                       */
/*==============================================================*/
create table Inventory.WarehouseRegion
(
   WarehouseRegionID    int not null auto_increment comment '仓库区域ID',
   WarehouseID          int not null comment '仓库ID',
   RegionName           int not null comment '区域ID',
   Deleted              bool not null comment '删除标志',
   Remark               varchar(128),
   primary key (WarehouseRegionID)
);

alter table Inventory.WarehouseRegion comment '库存管理.基础数据.仓库区域';

/*==============================================================*/
/* Index: IX_WarehouseRegion                                    */
/*==============================================================*/
create index IX_WarehouseRegion on Inventory.WarehouseRegion
(
   WarehouseID,
   RegionName,
   Deleted
);

alter table Organization.DepartmentEmployee add constraint FK_Reference_18 foreign key (DepartmentGUID)
      references Organization.Department (DepartmentGUID);

alter table Organization.DepartmentEmployee add constraint FK_Reference_19 foreign key (DepartmentRoleGUID)
      references Organization.DepartmentRole (DepartmentRoleGUID);

alter table Organization.DepartmentRole add constraint FK_Reference_17 foreign key (DepartmentGUID)
      references Organization.Department (DepartmentGUID);

alter table HR.EmployeeLogin add constraint FK_Reference_2 foreign key (EmployeeGUID)
      references HR.Employee (EmployeeGUID);

alter table Finance.FlowingCapitalItem add constraint FK_Reference_11 foreign key (FlowingCapitalID)
      references Finance.FlowingCapital (FlowingCapitalID);

alter table InOrOutMoneyStatisticsItem add constraint FK_Reference_23 foreign key (InOrOutMoneyStatisticsID)
      references InOrOutMoneyStatistics (InOrOutMoneyStatisticsID);

alter table SysMange.MaterialInfo add constraint FK_Reference_3 foreign key (MaterialTypeID)
      references SysMange.MaterialTypes (MaterialTypeID);

alter table SysMange.MaterialPackage add constraint FK_Reference_25 foreign key (MeasureUnitID)
      references SysMange.MeasureUnit (MeasureUnitID);

alter table SysMange.MaterialPackage add constraint FK_Reference_5 foreign key (MaterialID)
      references SysMange.MaterialInfo (MaterialID);

alter table SysMange.MaterialPackage add constraint FK_Reference_9 foreign key (MaterialID)
      references SysMange.MaterialInfo (MaterialID);

alter table SysMange.Menu add constraint FK_Reference_20 foreign key (ModuleID)
      references SysMange.Module (ModuleID);

alter table Organization.MenuRole add constraint FK_Reference_22 foreign key (ModuleRoleID)
      references Organization.ModuleRole (ModuleRoleID);

alter table Organization.ModuleRole add constraint FK_Reference_21 foreign key (DepartmentRoleGUID)
      references Organization.DepartmentRole (DepartmentRoleGUID);

alter table Procurement.PurchaseItems add constraint FK_Reference_10 foreign key (MaterialPackageID)
      references SysMange.MaterialPackage (MaterialPackageID);

alter table Procurement.PurchaseItems add constraint FK_Reference_6 foreign key (PurchaseID)
      references Procurement.Purchase (PurchaseID);

alter table Procurement.PurchaseItems add constraint FK_Reference_8 foreign key (SupplierID)
      references SysMange.Supplier (SupplierID);

alter table SalesProductItem add constraint FK_Reference_12 foreign key (SalesProductID)
      references SalesProduct (SalesProductID);

alter table SalesProductItem add constraint FK_Reference_13 foreign key (ProductID)
      references Sales.Product (ProductID);

alter table SalesProductItem add constraint FK_Reference_14 foreign key (MeasureUnitID)
      references SysMange.MeasureUnit (MeasureUnitID);

alter table Inventory.StockTakingItem add constraint FK_Reference_24 foreign key (StockTakingID)
      references Inventory.StockTaking (StockTakingID);

alter table HR.UserPosition add constraint FK_Reference_1 foreign key (DepartmentGUID)
      references Organization.Department (DepartmentGUID);

alter table Inventory.WarehouseInventory add constraint FK_Reference_16 foreign key (WarehouseRegionID)
      references Inventory.WarehouseRegion (WarehouseRegionID);

alter table Inventory.WarehouseRegion add constraint FK_Reference_15 foreign key (WarehouseID)
      references Inventory.Warehouse (WarehouseID);


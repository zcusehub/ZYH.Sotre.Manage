/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2019/1/30 16:55:02                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Organization.DepartmentEmployee') and o.name = 'FK_DEPARTME_REFERENCE_DEPARTME')
alter table Organization.DepartmentEmployee
   drop constraint FK_DEPARTME_REFERENCE_DEPARTME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Organization.DepartmentEmployee') and o.name = 'FK_DEPARTME_REFERENCE_DEPARTME')
alter table Organization.DepartmentEmployee
   drop constraint FK_DEPARTME_REFERENCE_DEPARTME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Organization.DepartmentRole') and o.name = 'FK_DEPARTME_REFERENCE_DEPARTME')
alter table Organization.DepartmentRole
   drop constraint FK_DEPARTME_REFERENCE_DEPARTME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HR.EmployeeLogin') and o.name = 'FK_EMPLOYEE_REFERENCE_EMPLOYEE')
alter table HR.EmployeeLogin
   drop constraint FK_EMPLOYEE_REFERENCE_EMPLOYEE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Finance.FlowingCapitalItem') and o.name = 'FK_FLOWINGC_REFERENCE_FLOWINGC')
alter table Finance.FlowingCapitalItem
   drop constraint FK_FLOWINGC_REFERENCE_FLOWINGC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('InOrOutMoneyStatisticsItem') and o.name = 'FK_INOROUTM_REFERENCE_INOROUTM')
alter table InOrOutMoneyStatisticsItem
   drop constraint FK_INOROUTM_REFERENCE_INOROUTM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMange.MaterialInfo') and o.name = 'FK_MATERIAL_REFERENCE_MATERIAL')
alter table SysMange.MaterialInfo
   drop constraint FK_MATERIAL_REFERENCE_MATERIAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMange.MaterialPackage') and o.name = 'FK_MATERIAL_REFERENCE_MEASUREU')
alter table SysMange.MaterialPackage
   drop constraint FK_MATERIAL_REFERENCE_MEASUREU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMange.MaterialPackage') and o.name = 'FK_MATERIAL_REFERENCE_MATERIAL')
alter table SysMange.MaterialPackage
   drop constraint FK_MATERIAL_REFERENCE_MATERIAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMange.MaterialPackage') and o.name = 'FK_MATERIAL_REFERENCE_MATERIAL')
alter table SysMange.MaterialPackage
   drop constraint FK_MATERIAL_REFERENCE_MATERIAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMange.Menu') and o.name = 'FK_MENU_REFERENCE_MODULE')
alter table SysMange.Menu
   drop constraint FK_MENU_REFERENCE_MODULE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Organization.MenuRole') and o.name = 'FK_MENUROLE_REFERENCE_MODULERO')
alter table Organization.MenuRole
   drop constraint FK_MENUROLE_REFERENCE_MODULERO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Organization.ModuleRole') and o.name = 'FK_MODULERO_REFERENCE_DEPARTME')
alter table Organization.ModuleRole
   drop constraint FK_MODULERO_REFERENCE_DEPARTME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Procurement.PurchaseItems') and o.name = 'FK_PURCHASE_REFERENCE_MATERIAL')
alter table Procurement.PurchaseItems
   drop constraint FK_PURCHASE_REFERENCE_MATERIAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Procurement.PurchaseItems') and o.name = 'FK_PURCHASE_REFERENCE_PURCHASE')
alter table Procurement.PurchaseItems
   drop constraint FK_PURCHASE_REFERENCE_PURCHASE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Procurement.PurchaseItems') and o.name = 'FK_PURCHASE_REFERENCE_SUPPLIER')
alter table Procurement.PurchaseItems
   drop constraint FK_PURCHASE_REFERENCE_SUPPLIER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sales.SalesProductItem') and o.name = 'FK_SALESPRO_REFERENCE_SALESPRO')
alter table Sales.SalesProductItem
   drop constraint FK_SALESPRO_REFERENCE_SALESPRO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sales.SalesProductItem') and o.name = 'FK_SALESPRO_REFERENCE_PRODUCT')
alter table Sales.SalesProductItem
   drop constraint FK_SALESPRO_REFERENCE_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sales.SalesProductItem') and o.name = 'FK_SALESPRO_REFERENCE_MEASUREU')
alter table Sales.SalesProductItem
   drop constraint FK_SALESPRO_REFERENCE_MEASUREU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Inventory.StockTakingItem') and o.name = 'FK_STOCKTAK_REFERENCE_STOCKTAK')
alter table Inventory.StockTakingItem
   drop constraint FK_STOCKTAK_REFERENCE_STOCKTAK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HR.UserPosition') and o.name = 'FK_USERPOSI_REFERENCE_DEPARTME')
alter table HR.UserPosition
   drop constraint FK_USERPOSI_REFERENCE_DEPARTME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Inventory.WarehouseInventory') and o.name = 'FK_WAREHOUS_REFERENCE_WAREHOUS')
alter table Inventory.WarehouseInventory
   drop constraint FK_WAREHOUS_REFERENCE_WAREHOUS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Inventory.WarehouseRegion') and o.name = 'FK_WAREHOUS_REFERENCE_WAREHOUS')
alter table Inventory.WarehouseRegion
   drop constraint FK_WAREHOUS_REFERENCE_WAREHOUS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Organization.Department')
            and   type = 'U')
   drop table Organization.Department
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Organization.DepartmentEmployee')
            and   type = 'U')
   drop table Organization.DepartmentEmployee
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Organization.DepartmentRole')
            and   type = 'U')
   drop table Organization.DepartmentRole
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HR.Employee')
            and   type = 'U')
   drop table HR.Employee
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HR.EmployeeLogin')
            and   type = 'U')
   drop table HR.EmployeeLogin
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Finance.FlowingCapital')
            and   type = 'U')
   drop table Finance.FlowingCapital
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Finance.FlowingCapitalItem')
            and   type = 'U')
   drop table Finance.FlowingCapitalItem
go

if exists (select 1
            from  sysobjects
           where  id = object_id('InOrOutMoneyStatistics')
            and   type = 'U')
   drop table InOrOutMoneyStatistics
go

if exists (select 1
            from  sysobjects
           where  id = object_id('InOrOutMoneyStatisticsItem')
            and   type = 'U')
   drop table InOrOutMoneyStatisticsItem
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMange.MaterialInfo')
            and   type = 'U')
   drop table SysMange.MaterialInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMange.MaterialPackage')
            and   type = 'U')
   drop table SysMange.MaterialPackage
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMange.MaterialTypes')
            and   type = 'U')
   drop table SysMange.MaterialTypes
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMange.MeasureUnit')
            and   type = 'U')
   drop table SysMange.MeasureUnit
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMange.Menu')
            and   type = 'U')
   drop table SysMange.Menu
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Organization.MenuRole')
            and   type = 'U')
   drop table Organization.MenuRole
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMange.Module')
            and   type = 'U')
   drop table SysMange.Module
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Organization.ModuleRole')
            and   type = 'U')
   drop table Organization.ModuleRole
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sales.Product')
            and   type = 'U')
   drop table Sales.Product
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Procurement.Purchase')
            and   type = 'U')
   drop table Procurement.Purchase
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Procurement.PurchaseItems')
            and   type = 'U')
   drop table Procurement.PurchaseItems
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sales.SalesProduct')
            and   type = 'U')
   drop table Sales.SalesProduct
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sales.SalesProductItem')
            and   type = 'U')
   drop table Sales.SalesProductItem
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Inventory.StockTaking')
            and   type = 'U')
   drop table Inventory.StockTaking
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Inventory.StockTakingItem')
            and   type = 'U')
   drop table Inventory.StockTakingItem
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMange.Supplier')
            and   type = 'U')
   drop table SysMange.Supplier
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HR.UserPosition')
            and   type = 'U')
   drop table HR.UserPosition
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Inventory.Warehouse')
            and   type = 'U')
   drop table Inventory.Warehouse
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Inventory.WarehouseInventory')
            and   type = 'U')
   drop table Inventory.WarehouseInventory
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Inventory.WarehouseRegion')
            and   type = 'U')
   drop table Inventory.WarehouseRegion
go

drop schema Finance
go

drop schema HR
go

drop schema Inventory
go

drop schema Organization
go

drop schema Procurement
go

drop schema Sales
go

drop schema SysMange
go

drop schema dbo
go

/*==============================================================*/
/* User: Finance                                                */
/*==============================================================*/
create schema Finance
go

Add comment on schema Finance
'�������'
go

/*==============================================================*/
/* User: HR                                                     */
/*==============================================================*/
create schema HR
go

Add comment on schema HR
'������Դ'
go

/*==============================================================*/
/* User: Inventory                                              */
/*==============================================================*/
create schema Inventory
go

Add comment on schema Inventory
'���ϵͳ'
go

/*==============================================================*/
/* User: Organization                                           */
/*==============================================================*/
create schema Organization
go

Add comment on schema Organization
'��֯�ܹ�'
go

/*==============================================================*/
/* User: Procurement                                            */
/*==============================================================*/
create schema Procurement
go

Add comment on schema Procurement
'�ɹ�����'
go

/*==============================================================*/
/* User: Sales                                                  */
/*==============================================================*/
create schema Sales
go

Add comment on schema Sales
'���۹���'
go

/*==============================================================*/
/* User: SysMange                                               */
/*==============================================================*/
create schema SysMange
go

Add comment on schema SysMange
'ϵͳ����'
go

/*==============================================================*/
/* User: dbo                                                    */
/*==============================================================*/
create schema dbo
go

Add comment on schema dbo
'dbo'
go

/*==============================================================*/
/* Table: Department                                            */
/*==============================================================*/
create table Organization.Department (
   DepartmentGUID       char(36)             not null,
   DepartmentName       varchar(20)          null,
   ParentDepartmentGUID char(36)             null,
   DepartmentType       tinyint              null,
   Deleted              bit                  null,
   DepartmentCode       int                  null,
   DepartmentTel        varchar(50)          null,
   Remark               varchar(500)         null,
   Enabled              bit                  null default 1,
   constraint PK_Department primary key nonclustered (DepartmentGUID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Organization.Department') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Organization', 'table', 'Department' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������Դ.��֯�ܹ�.����', 
   'user', 'Organization', 'table', 'Department'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'Department', 'column', 'DepartmentGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ű�ʶ',
   'user', 'Organization', 'table', 'Department', 'column', 'DepartmentGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'Department', 'column', 'DepartmentName'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', 'Organization', 'table', 'Department', 'column', 'DepartmentName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ParentDepartmentGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'Department', 'column', 'ParentDepartmentGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ϼ����ű�ʶ',
   'user', 'Organization', 'table', 'Department', 'column', 'ParentDepartmentGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentType')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'Department', 'column', 'DepartmentType'

end


execute sp_addextendedproperty 'MS_Description', 
   '�������� 0=��ͨ���� 1=�ӹ�˾ 2=�ŵ� ',
   'user', 'Organization', 'table', 'Department', 'column', 'DepartmentType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Deleted')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'Department', 'column', 'Deleted'

end


execute sp_addextendedproperty 'MS_Description', 
   'ɾ����־',
   'user', 'Organization', 'table', 'Department', 'column', 'Deleted'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentCode')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'Department', 'column', 'DepartmentCode'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ű���',
   'user', 'Organization', 'table', 'Department', 'column', 'DepartmentCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentTel')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'Department', 'column', 'DepartmentTel'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ŵ绰',
   'user', 'Organization', 'table', 'Department', 'column', 'DepartmentTel'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'Department', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', 'Organization', 'table', 'Department', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Enabled')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'Department', 'column', 'Enabled'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ñ�־',
   'user', 'Organization', 'table', 'Department', 'column', 'Enabled'
go

/*==============================================================*/
/* Table: DepartmentEmployee                                    */
/*==============================================================*/
create table Organization.DepartmentEmployee (
   DepartmentEmployeeID char(36)             not null,
   DepartmentGUID       char(36)             null,
   DepartmentRoleGUID   char(36)             null,
   RoleGUID             char(36)             null,
   EmployeeGUID         char(32)             null,
   Enabled              bit                  null,
   constraint PK_DEPARTMENTEMPLOYEE primary key (DepartmentEmployeeID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Organization.DepartmentEmployee') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Organization', 'table', 'DepartmentEmployee' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������Դ.��֯�ܹ�.����Ա��', 
   'user', 'Organization', 'table', 'DepartmentEmployee'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.DepartmentEmployee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentEmployeeID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'DepartmentEmployeeID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���Ž�ɫ��ʶ',
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'DepartmentEmployeeID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.DepartmentEmployee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'DepartmentGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ű�ʶ',
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'DepartmentGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.DepartmentEmployee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentRoleGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'DepartmentRoleGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���Ž�ɫ��ʶ',
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'DepartmentRoleGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.DepartmentEmployee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoleGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'RoleGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ɫ��ʶ',
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'RoleGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.DepartmentEmployee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'EmployeeGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   'Ա��GUID',
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'EmployeeGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.DepartmentEmployee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Enabled')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'Enabled'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ñ�־',
   'user', 'Organization', 'table', 'DepartmentEmployee', 'column', 'Enabled'
go

/*==============================================================*/
/* Table: DepartmentRole                                        */
/*==============================================================*/
create table Organization.DepartmentRole (
   DepartmentRoleGUID   char(36)             not null,
   DepartmentGUID       char(36)             null,
   RoleGUID             char(36)             null,
   RoleName             varchar(32)          null,
   Enabled              bit                  null,
   constraint PK_DepartmentRole primary key nonclustered (DepartmentRoleGUID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Organization.DepartmentRole') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Organization', 'table', 'DepartmentRole' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������Դ.��֯�ܹ�.���Ž�ɫ', 
   'user', 'Organization', 'table', 'DepartmentRole'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.DepartmentRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentRoleGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'DepartmentRole', 'column', 'DepartmentRoleGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���Ž�ɫ��ʶ',
   'user', 'Organization', 'table', 'DepartmentRole', 'column', 'DepartmentRoleGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.DepartmentRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'DepartmentRole', 'column', 'DepartmentGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ű�ʶ',
   'user', 'Organization', 'table', 'DepartmentRole', 'column', 'DepartmentGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.DepartmentRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoleGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'DepartmentRole', 'column', 'RoleGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ɫ��ʶ',
   'user', 'Organization', 'table', 'DepartmentRole', 'column', 'RoleGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.DepartmentRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoleName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'DepartmentRole', 'column', 'RoleName'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ɫ����',
   'user', 'Organization', 'table', 'DepartmentRole', 'column', 'RoleName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.DepartmentRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Enabled')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'DepartmentRole', 'column', 'Enabled'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ñ�־',
   'user', 'Organization', 'table', 'DepartmentRole', 'column', 'Enabled'
go

/*==============================================================*/
/* Table: Employee                                              */
/*==============================================================*/
create table HR.Employee (
   EmployeeGUID         char(36)             not null,
   EmployeeName         varchar(50)          null,
   IndexCode            varchar(10)          null,
   EmployeeCode         varchar(20)          null,
   Birthday             datetime             null,
   Gender               tinyint              null,
   Address              varchar(150)         null,
   IDCardNo             varchar(20)          null,
   InductionDate        datetime             null,
   FormalDate           datetime             null,
   LeaveDate            datetime             null,
   Status               tinyint              null,
   DutyID               int                  null,
   PositionID           int                  null,
   Tel                  varchar(30)          null,
   constraint PK_EMPLOYEE primary key nonclustered (EmployeeGUID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('HR.Employee') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'HR', 'table', 'Employee' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������Դ.���¹���.Ա��', 
   'user', 'HR', 'table', 'Employee'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'EmployeeGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   'Ա��GUID',
   'user', 'HR', 'table', 'Employee', 'column', 'EmployeeGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'EmployeeName'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'HR', 'table', 'Employee', 'column', 'EmployeeName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IndexCode')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'IndexCode'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������ĸ��д',
   'user', 'HR', 'table', 'Employee', 'column', 'IndexCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeCode')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'EmployeeCode'

end


execute sp_addextendedproperty 'MS_Description', 
   'Ա�����',
   'user', 'HR', 'table', 'Employee', 'column', 'EmployeeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Birthday')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'Birthday'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', 'HR', 'table', 'Employee', 'column', 'Birthday'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Gender')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'Gender'

end


execute sp_addextendedproperty 'MS_Description', 
   '�Ա�',
   'user', 'HR', 'table', 'Employee', 'column', 'Gender'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Address')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'Address'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ס��ַ',
   'user', 'HR', 'table', 'Employee', 'column', 'Address'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDCardNo')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'IDCardNo'

end


execute sp_addextendedproperty 'MS_Description', 
   '���֤����',
   'user', 'HR', 'table', 'Employee', 'column', 'IDCardNo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'InductionDate')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'InductionDate'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ְ����',
   'user', 'HR', 'table', 'Employee', 'column', 'InductionDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FormalDate')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'FormalDate'

end


execute sp_addextendedproperty 'MS_Description', 
   'ת������',
   'user', 'HR', 'table', 'Employee', 'column', 'FormalDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LeaveDate')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'LeaveDate'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ְ����',
   'user', 'HR', 'table', 'Employee', 'column', 'LeaveDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Status')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'Status'

end


execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', 'HR', 'table', 'Employee', 'column', 'Status'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DutyID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'DutyID'

end


execute sp_addextendedproperty 'MS_Description', 
   'ְ��',
   'user', 'HR', 'table', 'Employee', 'column', 'DutyID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PositionID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'PositionID'

end


execute sp_addextendedproperty 'MS_Description', 
   'ְλ',
   'user', 'HR', 'table', 'Employee', 'column', 'PositionID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Tel')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'Employee', 'column', 'Tel'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ϵ�绰',
   'user', 'HR', 'table', 'Employee', 'column', 'Tel'
go

/*==============================================================*/
/* Table: EmployeeLogin                                         */
/*==============================================================*/
create table HR.EmployeeLogin (
   EmployeeLoginID      int                  identity,
   EmployeeGUID         char(36)             null,
   UserName             varchar(50)          null,
   Pwd                  varchar(50)          null,
   Phone                varchar(11)          null,
   LoginCount           int                  null,
   LastTime             datetime             null,
   Enable               bit                  null,
   Deleted              bit                  null,
   constraint PK_EMPLOYEELOGIN primary key nonclustered (EmployeeLoginID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('HR.EmployeeLogin') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'HR', 'table', 'EmployeeLogin' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������Դ.���¹���.Ա����¼', 
   'user', 'HR', 'table', 'EmployeeLogin'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.EmployeeLogin')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeLoginID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'EmployeeLoginID'

end


execute sp_addextendedproperty 'MS_Description', 
   'Ա��GUID',
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'EmployeeLoginID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.EmployeeLogin')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'EmployeeGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   'Ա�����',
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'EmployeeGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.EmployeeLogin')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UserName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'UserName'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'UserName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.EmployeeLogin')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Pwd')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'Pwd'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������ĸ��д',
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'Pwd'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.EmployeeLogin')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Phone')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'Phone'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'Phone'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.EmployeeLogin')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LoginCount')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'LoginCount'

end


execute sp_addextendedproperty 'MS_Description', 
   '�Ա�',
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'LoginCount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.EmployeeLogin')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LastTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'LastTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ס��ַ',
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'LastTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.EmployeeLogin')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Enable')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'Enable'

end


execute sp_addextendedproperty 'MS_Description', 
   '���֤����',
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'Enable'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.EmployeeLogin')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Deleted')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'Deleted'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ڲ���',
   'user', 'HR', 'table', 'EmployeeLogin', 'column', 'Deleted'
go

/*==============================================================*/
/* Table: FlowingCapital                                        */
/*==============================================================*/
create table Finance.FlowingCapital (
   FlowingCapitalID     int                  identity,
   FlowingCapitalName   varchar(64)          null,
   FlowingCapitalType   int                  null,
   RecordType           int                  null,
   ApplyUserID          int                  null,
   RecordTime           datetime             null,
   Amount               money                null,
   Remark               varchar(256)         null,
   SourceID             int                  null,
   constraint PK_FLOWINGCAPITAL primary key (FlowingCapitalID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Finance.FlowingCapital') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Finance', 'table', 'FlowingCapital' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������ͳ�Ƶ�����ûһ����������֧����ϸͳ��
   1.�����ֶ�¼���ʽ�����������磺������ ����ѵȣ�
   2.�Զ�¼����Ŀ
     2.1�ɹ�������¼��Ĳɹ���Ϣ����Ҫ�Զ�ͬ������֧������ϸ����
     2.2���۶���¼�룬���Զ�ͬ������֧��ϸ�� 
   ', 
   'user', 'Finance', 'table', 'FlowingCapital'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapital')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FlowingCapitalID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'FlowingCapitalID'

end


execute sp_addextendedproperty 'MS_Description', 
   'FlowingCapitalID',
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'FlowingCapitalID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapital')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FlowingCapitalName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'FlowingCapitalName'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ŀ����',
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'FlowingCapitalName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapital')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FlowingCapitalType')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'FlowingCapitalType'

end


execute sp_addextendedproperty 'MS_Description', 
   '1������ 2��֧��',
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'FlowingCapitalType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapital')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RecordType')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'RecordType'

end


execute sp_addextendedproperty 'MS_Description', 
   '1:�ɹ��Զ� (֧��)2 :�����Զ�(����)������ģ��¼����Զ���д��֧��3:�ֶ�¼��',
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'RecordType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapital')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ApplyUserID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'ApplyUserID'

end


execute sp_addextendedproperty 'MS_Description', 
   '¼����Ա',
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'ApplyUserID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapital')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RecordTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'RecordTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '¼��ʱ��',
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'RecordTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapital')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Amount')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'Amount'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ܽ��',
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'Amount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapital')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapital')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SourceID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'SourceID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��֧��Դ��ĳ�����͵�ҵ�����ͣ�Ŀǰֻ�У��ɹ� ������ ��������ֶ�',
   'user', 'Finance', 'table', 'FlowingCapital', 'column', 'SourceID'
go

/*==============================================================*/
/* Table: FlowingCapitalItem                                    */
/*==============================================================*/
create table Finance.FlowingCapitalItem (
   FlowingCapitalItemID int                  identity,
   FlowingCapitalID     int                  null,
   RecordItemType       int                  null,
   Amount               money                null,
   BeginTime            datetime             null,
   Endtime              datetime             null,
   RecordTime           datetime             null,
   Remark               varchar(256)         null,
   constraint PK_FLOWINGCAPITALITEM primary key (FlowingCapitalItemID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Finance.FlowingCapitalItem') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Finance', 'table', 'FlowingCapitalItem' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '�������.�ճ�ҵ��.��֧������ϸ', 
   'user', 'Finance', 'table', 'FlowingCapitalItem'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapitalItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FlowingCapitalItemID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'FlowingCapitalItemID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��֧��ϸID',
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'FlowingCapitalItemID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapitalItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FlowingCapitalID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'FlowingCapitalID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��֧����ID',
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'FlowingCapitalID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapitalItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RecordItemType')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'RecordItemType'

end


execute sp_addextendedproperty 'MS_Description', 
   '1:ˮ�� 2:��� 3:��Ȼ���� 4:����� 5:��ͨ�� 6:����� 7:ͨѶ�� 8:����� 9:����֧�� 10:��������',
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'RecordItemType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapitalItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Amount')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'Amount'

end


execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'Amount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapitalItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BeginTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'BeginTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ÿ�ʼʱ��',
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'BeginTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapitalItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Endtime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'Endtime'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ý���ʱ��',
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'Endtime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapitalItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RecordTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'RecordTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '¼��ʱ��',
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'RecordTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Finance.FlowingCapitalItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'Finance', 'table', 'FlowingCapitalItem', 'column', 'Remark'
go

/*==============================================================*/
/* Table: InOrOutMoneyStatistics                                */
/*==============================================================*/
create table InOrOutMoneyStatistics (
   InOrOutMoneyStatisticsID int                  identity,
   Date                 date                 null,
   AmountIn             decimal(18,2)        null,
   AmountOut            decimal(18,2)        null,
   constraint PK_INOROUTMONEYSTATISTICS primary key (InOrOutMoneyStatisticsID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('InOrOutMoneyStatistics') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatistics' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'ͳ��ÿ��Ϊ��λ�ʽ���ͳ�ƣ�����/֧��ͳ�ƣ�
   ÿ��ɹ�,֧������  ÿ����¼ͳ��
   ������Դ����֧����ͨ�����ڿ��Թ���ÿ�����֧��ϸ', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatistics'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('InOrOutMoneyStatistics')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'InOrOutMoneyStatisticsID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatistics', 'column', 'InOrOutMoneyStatisticsID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��֧ID',
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatistics', 'column', 'InOrOutMoneyStatisticsID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('InOrOutMoneyStatistics')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Date')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatistics', 'column', 'Date'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����(ÿ��һ��)',
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatistics', 'column', 'Date'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('InOrOutMoneyStatistics')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AmountIn')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatistics', 'column', 'AmountIn'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatistics', 'column', 'AmountIn'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('InOrOutMoneyStatistics')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AmountOut')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatistics', 'column', 'AmountOut'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '֧��',
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatistics', 'column', 'AmountOut'
go

/*==============================================================*/
/* Table: InOrOutMoneyStatisticsItem                            */
/*==============================================================*/
create table InOrOutMoneyStatisticsItem (
   InOrOutMoneyStatisticsItemID int                  identity,
   InOrOutMoneyStatisticsID int                  null,
   SourceID             date                 null,
   Amount               decimal(18,2)        null,
   RecordType           int                  null,
   FlowingCapitalType   int                  null,
   constraint PK_INOROUTMONEYSTATISTICSITEM primary key (InOrOutMoneyStatisticsItemID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('InOrOutMoneyStatisticsItem') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   ' ', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('InOrOutMoneyStatisticsItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'InOrOutMoneyStatisticsItemID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'InOrOutMoneyStatisticsItemID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��֧��ϸID',
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'InOrOutMoneyStatisticsItemID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('InOrOutMoneyStatisticsItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'InOrOutMoneyStatisticsID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'InOrOutMoneyStatisticsID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��֧ID',
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'InOrOutMoneyStatisticsID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('InOrOutMoneyStatisticsItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SourceID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'SourceID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Դ����ID',
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'SourceID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('InOrOutMoneyStatisticsItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Amount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'Amount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'Amount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('InOrOutMoneyStatisticsItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RecordType')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'RecordType'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1:�ɹ��Զ� (֧��)2 :�����Զ�(����)������ģ��¼����Զ���д��֧��3:�ֶ�¼��',
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'RecordType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('InOrOutMoneyStatisticsItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FlowingCapitalType')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'FlowingCapitalType'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1������ 2��֧��',
   'user', @CurrentUser, 'table', 'InOrOutMoneyStatisticsItem', 'column', 'FlowingCapitalType'
go

/*==============================================================*/
/* Table: MaterialInfo                                          */
/*==============================================================*/
create table SysMange.MaterialInfo (
   MaterialID           int                  identity,
   MaterialCode         varchar(16)          null,
   MaterialName         varchar(64)          null,
   MaterialType         int                  null,
   MaterialTypeID       int                  null,
   Enabled              bit                  not null default 1,
   MaterialShortName    varchar(50)          null,
   ShortIndexCode       varchar(10)          null,
   MaterialImage        varchar(200)         null,
   CreateTime           datetime             null,
   constraint PK_MATERIALINFO primary key (MaterialID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysMange.MaterialInfo') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'SysMange', 'table', 'MaterialInfo' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'ϵͳ����.ҵ������.����', 
   'user', 'SysMange', 'table', 'MaterialInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialID'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialCode')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialCode'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ϱ���',
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialName'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialType')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialType'

end


execute sp_addextendedproperty 'MS_Description', 
   '1:ԭ�� 2:���Ʒ ',
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialTypeID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialTypeID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���Ϸ���ID',
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialTypeID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Enabled')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'Enabled'

end


execute sp_addextendedproperty 'MS_Description', 
   '����״̬',
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'Enabled'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialShortName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialShortName'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ϼ��',
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialShortName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ShortIndexCode')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'ShortIndexCode'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ϼ���',
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'ShortIndexCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialImage')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialImage'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ͼƬ',
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'MaterialImage'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'SysMange', 'table', 'MaterialInfo', 'column', 'CreateTime'
go

/*==============================================================*/
/* Table: MaterialPackage                                       */
/*==============================================================*/
create table SysMange.MaterialPackage (
   MaterialPackageID    int                  identity,
   MaterialID           int                  not null,
   MaterialPackageName  varchar(50)          not null,
   Remark               varchar(200)         null,
   Ratio                float                not null,
   MeasureUnitID        int                  not null,
   BarCode              varchar(36)          null,
   CostPrice            money                not null default 0,
   SalePrice            money                not null default 0,
   Enabled              bit                  null,
   constraint PK_MATERIALPACKAGE primary key nonclustered (MaterialPackageID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysMange.MaterialPackage') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'SysMange', 'table', 'MaterialPackage' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'ϵͳ����.ҵ������.���ϰ�װ���', 
   'user', 'SysMange', 'table', 'MaterialPackage'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialPackage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialPackageID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'MaterialPackageID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��װ���ID',
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'MaterialPackageID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialPackage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'MaterialID'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'MaterialID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialPackage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialPackageName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'MaterialPackageName'

end


execute sp_addextendedproperty 'MS_Description', 
   '�������',
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'MaterialPackageName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialPackage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '���˵��',
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialPackage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Ratio')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'Ratio'

end


execute sp_addextendedproperty 'MS_Description', 
   '�������',
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'Ratio'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialPackage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MeasureUnitID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'MeasureUnitID'

end


execute sp_addextendedproperty 'MS_Description', 
   '������λ',
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'MeasureUnitID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialPackage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BarCode')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'BarCode'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'BarCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialPackage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CostPrice')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'CostPrice'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ɱ���',
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'CostPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialPackage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SalePrice')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'SalePrice'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ۼ�',
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'SalePrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialPackage')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Enabled')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'Enabled'

end


execute sp_addextendedproperty 'MS_Description', 
   '����״̬',
   'user', 'SysMange', 'table', 'MaterialPackage', 'column', 'Enabled'
go

/*==============================================================*/
/* Table: MaterialTypes                                         */
/*==============================================================*/
create table SysMange.MaterialTypes (
   MaterialTypeID       int                  identity,
   ParentMaterialTypeID int                  null,
   MaterialTypeName     varchar(64)          null,
   Remark               varchar(200)         null,
   Enabled              bit                  not null default 1,
   Deleted              bit                  not null default 0,
   constraint PK_MATERIALTYPES primary key (MaterialTypeID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysMange.MaterialTypes') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'SysMange', 'table', 'MaterialTypes' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'ϵͳ����.ҵ������.���Ϸ���', 
   'user', 'SysMange', 'table', 'MaterialTypes'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialTypes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialTypeID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'MaterialTypeID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���Ϸ���ID',
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'MaterialTypeID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialTypes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ParentMaterialTypeID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'ParentMaterialTypeID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���Ϸ��ุ��ID',
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'ParentMaterialTypeID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialTypes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialTypeName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'MaterialTypeName'

end


execute sp_addextendedproperty 'MS_Description', 
   '���Ϸ�������',
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'MaterialTypeName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialTypes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������˵��',
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialTypes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Enabled')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'Enabled'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ñ�־',
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'Enabled'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MaterialTypes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Deleted')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'Deleted'

end


execute sp_addextendedproperty 'MS_Description', 
   'ɾ����־',
   'user', 'SysMange', 'table', 'MaterialTypes', 'column', 'Deleted'
go

/*==============================================================*/
/* Table: MeasureUnit                                           */
/*==============================================================*/
create table SysMange.MeasureUnit (
   MeasureUnitID        int                  identity,
   MeasureUnitName      varchar(16)          null,
   Enable               bit                  null,
   constraint PK_MEASUREUNIT primary key (MeasureUnitID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysMange.MeasureUnit') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'SysMange', 'table', 'MeasureUnit' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'ϵͳ����.ҵ������.������λ', 
   'user', 'SysMange', 'table', 'MeasureUnit'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MeasureUnit')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MeasureUnitID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MeasureUnit', 'column', 'MeasureUnitID'

end


execute sp_addextendedproperty 'MS_Description', 
   '������λID',
   'user', 'SysMange', 'table', 'MeasureUnit', 'column', 'MeasureUnitID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MeasureUnit')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MeasureUnitName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MeasureUnit', 'column', 'MeasureUnitName'

end


execute sp_addextendedproperty 'MS_Description', 
   '������λ����',
   'user', 'SysMange', 'table', 'MeasureUnit', 'column', 'MeasureUnitName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.MeasureUnit')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Enable')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'MeasureUnit', 'column', 'Enable'

end


execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', 'SysMange', 'table', 'MeasureUnit', 'column', 'Enable'
go

/*==============================================================*/
/* Table: Menu                                                  */
/*==============================================================*/
create table SysMange.Menu (
   MenuID               int                  identity,
   MenuName             varchar(64)          null,
   "Index"              varchar(64)          null,
   IsEnable             bit                  null,
   MenuImg              varchar(128)         null,
   MenuURL              varchar(128)         null,
   Remark               text                 null,
   MenuParentID         int                  null,
   ModuleID             int                  null,
   constraint PK_MENU primary key (MenuID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysMange.Menu') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'SysMange', 'table', 'Menu' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'ϵͳ����.�˵�����.ģ��˵�', 
   'user', 'SysMange', 'table', 'Menu'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Menu', 'column', 'MenuID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�˵�ID',
   'user', 'SysMange', 'table', 'Menu', 'column', 'MenuID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Menu', 'column', 'MenuName'

end


execute sp_addextendedproperty 'MS_Description', 
   '�˵�����',
   'user', 'SysMange', 'table', 'Menu', 'column', 'MenuName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Index')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Menu', 'column', 'Index'

end


execute sp_addextendedproperty 'MS_Description', 
   '˳��',
   'user', 'SysMange', 'table', 'Menu', 'column', 'Index'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsEnable')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Menu', 'column', 'IsEnable'

end


execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', 'SysMange', 'table', 'Menu', 'column', 'IsEnable'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuImg')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Menu', 'column', 'MenuImg'

end


execute sp_addextendedproperty 'MS_Description', 
   '1.ʵ��� 2.�Ա� 3.���� 4.΢��',
   'user', 'SysMange', 'table', 'Menu', 'column', 'MenuImg'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuURL')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Menu', 'column', 'MenuURL'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ַ',
   'user', 'SysMange', 'table', 'Menu', 'column', 'MenuURL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Menu', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   'Remark',
   'user', 'SysMange', 'table', 'Menu', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuParentID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Menu', 'column', 'MenuParentID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�˵����ڵ�ID',
   'user', 'SysMange', 'table', 'Menu', 'column', 'MenuParentID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ModuleID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Menu', 'column', 'ModuleID'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ģ��ID',
   'user', 'SysMange', 'table', 'Menu', 'column', 'ModuleID'
go

/*==============================================================*/
/* Table: MenuRole                                              */
/*==============================================================*/
create table Organization.MenuRole (
   MenuRoleID           char(36)             not null,
   ModuleRoleID         char(36)             null,
   ModuleID             int                  null,
   MenuParentID         int                  null,
   authority            int                  null,
   MenuID               int                  null,
   constraint PK_MENUROLE primary key (MenuRoleID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Organization.MenuRole') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Organization', 'table', 'MenuRole' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������Դ.��֯�ܹ�.��ɫģ��˵�Ȩ��', 
   'user', 'Organization', 'table', 'MenuRole'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.MenuRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuRoleID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'MenuRole', 'column', 'MenuRoleID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���Ž�ɫ��ʶ',
   'user', 'Organization', 'table', 'MenuRole', 'column', 'MenuRoleID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.MenuRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ModuleRoleID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'MenuRole', 'column', 'ModuleRoleID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���Ž�ɫ��ʶ',
   'user', 'Organization', 'table', 'MenuRole', 'column', 'ModuleRoleID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.MenuRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ModuleID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'MenuRole', 'column', 'ModuleID'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ģ��ID',
   'user', 'Organization', 'table', 'MenuRole', 'column', 'ModuleID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.MenuRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuParentID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'MenuRole', 'column', 'MenuParentID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�˵����ڵ�ID',
   'user', 'Organization', 'table', 'MenuRole', 'column', 'MenuParentID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.MenuRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'authority')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'MenuRole', 'column', 'authority'

end


execute sp_addextendedproperty 'MS_Description', 
   '1:read 2:update 4:delete',
   'user', 'Organization', 'table', 'MenuRole', 'column', 'authority'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.MenuRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'MenuRole', 'column', 'MenuID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�˵��ڵ�ID',
   'user', 'Organization', 'table', 'MenuRole', 'column', 'MenuID'
go

/*==============================================================*/
/* Table: Module                                                */
/*==============================================================*/
create table SysMange.Module (
   ModuleID             int                  identity,
   ModuleName           varchar(64)          null,
   "Index"              varchar(64)          null,
   IsEnable             bit                  null,
   ModuleImg            varchar(128)         null,
   ModuleURL            varchar(128)         null,
   Remark               text                 null,
   constraint PK_MODULE primary key (ModuleID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysMange.Module') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'SysMange', 'table', 'Module' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'ϵͳ����.�˵�����.ģ��', 
   'user', 'SysMange', 'table', 'Module'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Module')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ModuleID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Module', 'column', 'ModuleID'

end


execute sp_addextendedproperty 'MS_Description', 
   'ģ��ID',
   'user', 'SysMange', 'table', 'Module', 'column', 'ModuleID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Module')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ModuleName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Module', 'column', 'ModuleName'

end


execute sp_addextendedproperty 'MS_Description', 
   'ģ������',
   'user', 'SysMange', 'table', 'Module', 'column', 'ModuleName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Module')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Index')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Module', 'column', 'Index'

end


execute sp_addextendedproperty 'MS_Description', 
   '˳��',
   'user', 'SysMange', 'table', 'Module', 'column', 'Index'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Module')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsEnable')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Module', 'column', 'IsEnable'

end


execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', 'SysMange', 'table', 'Module', 'column', 'IsEnable'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Module')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ModuleImg')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Module', 'column', 'ModuleImg'

end


execute sp_addextendedproperty 'MS_Description', 
   '1.ʵ��� 2.�Ա� 3.���� 4.΢��',
   'user', 'SysMange', 'table', 'Module', 'column', 'ModuleImg'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Module')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ModuleURL')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Module', 'column', 'ModuleURL'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ַ',
   'user', 'SysMange', 'table', 'Module', 'column', 'ModuleURL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Module')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Module', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   'Remark',
   'user', 'SysMange', 'table', 'Module', 'column', 'Remark'
go

/*==============================================================*/
/* Table: ModuleRole                                            */
/*==============================================================*/
create table Organization.ModuleRole (
   ModuleRoleID         char(36)             not null,
   DepartmentRoleGUID   char(36)             null,
   ModuleID             int                  null,
   IsEnable             bit                  null,
   constraint PK_MODULEROLE primary key (ModuleRoleID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Organization.ModuleRole') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Organization', 'table', 'ModuleRole' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������Դ.��֯�ܹ�.��ɫģ��Ȩ��', 
   'user', 'Organization', 'table', 'ModuleRole'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.ModuleRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ModuleRoleID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'ModuleRole', 'column', 'ModuleRoleID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���Ž�ɫ��ʶ',
   'user', 'Organization', 'table', 'ModuleRole', 'column', 'ModuleRoleID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.ModuleRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentRoleGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'ModuleRole', 'column', 'DepartmentRoleGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ű�ʶ',
   'user', 'Organization', 'table', 'ModuleRole', 'column', 'DepartmentRoleGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.ModuleRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ModuleID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'ModuleRole', 'column', 'ModuleID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ɫ��ʶ',
   'user', 'Organization', 'table', 'ModuleRole', 'column', 'ModuleID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Organization.ModuleRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsEnable')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Organization', 'table', 'ModuleRole', 'column', 'IsEnable'

end


execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', 'Organization', 'table', 'ModuleRole', 'column', 'IsEnable'
go

/*==============================================================*/
/* Table: Product                                               */
/*==============================================================*/
create table Sales.Product (
   ProductID            int                  identity,
   ProductName          varchar(32)          null,
   ProductType          int                  null,
   ProductURL           varchar(128)         null,
   Remark               varchar(256)         null,
   CreateTime           datetime             null,
   CostPrice            money                null,
   SalePrice            money                null,
   MeasureUnitID        int                  null,
   ProductCreateURL     varchar(128)         null,
   constraint PK_PRODUCT primary key (ProductID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Sales.Product') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Sales', 'table', 'Product' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '���۹���.�ճ�ҵ��.��Ʒ', 
   'user', 'Sales', 'table', 'Product'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.Product')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProductID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'Product', 'column', 'ProductID'

end


execute sp_addextendedproperty 'MS_Description', 
   'ProductID',
   'user', 'Sales', 'table', 'Product', 'column', 'ProductID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.Product')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProductName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'Product', 'column', 'ProductName'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ʒ����',
   'user', 'Sales', 'table', 'Product', 'column', 'ProductName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.Product')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProductType')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'Product', 'column', 'ProductType'

end


execute sp_addextendedproperty 'MS_Description', 
   '1.�䴮�� 2.�ȴ��� 3.С��  4.��ˮ 5.��ɫ�� 6.��ʳ 7.����',
   'user', 'Sales', 'table', 'Product', 'column', 'ProductType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.Product')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProductURL')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'Product', 'column', 'ProductURL'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ƷͼƬ',
   'user', 'Sales', 'table', 'Product', 'column', 'ProductURL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.Product')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'Product', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ʒ����',
   'user', 'Sales', 'table', 'Product', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.Product')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'Product', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'Sales', 'table', 'Product', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.Product')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CostPrice')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'Product', 'column', 'CostPrice'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ɱ��۸�',
   'user', 'Sales', 'table', 'Product', 'column', 'CostPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.Product')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SalePrice')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'Product', 'column', 'SalePrice'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ۼ۸�',
   'user', 'Sales', 'table', 'Product', 'column', 'SalePrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.Product')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MeasureUnitID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'Product', 'column', 'MeasureUnitID'

end


execute sp_addextendedproperty 'MS_Description', 
   '������λ',
   'user', 'Sales', 'table', 'Product', 'column', 'MeasureUnitID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.Product')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProductCreateURL')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'Product', 'column', 'ProductCreateURL'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ʒ�������̹������ĵ�·��',
   'user', 'Sales', 'table', 'Product', 'column', 'ProductCreateURL'
go

/*==============================================================*/
/* Table: Purchase                                              */
/*==============================================================*/
create table Procurement.Purchase (
   PurchaseID           int                  identity,
   Address              varchar(128)         null,
   CostPrice            decimal(18)          null,
   RealPrice            decimal(18)          null,
   EmployeeGUID         char(36)             null,
   Contact              varchar(64)          null,
   RoadPrice            decimal(18)          null,
   Remark               text                 null,
   RecordTime           datetime             null,
   Status               int                  null,
   CreateTime           datetime             null,
   ApplyTime            datetime             null,
   PlanTime             datetime             null,
   constraint PK_PURCHASE primary key (PurchaseID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Procurement.Purchase') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Procurement', 'table', 'Purchase' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '�ɹ�����.�ճ�ҵ��.����ɹ�', 
   'user', 'Procurement', 'table', 'Purchase'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PurchaseID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'PurchaseID'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ɹ�ID',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'PurchaseID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Address')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'Address'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ɹ��ص�',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'Address'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CostPrice')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'CostPrice'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ɹ����',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'CostPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RealPrice')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'RealPrice'

end


execute sp_addextendedproperty 'MS_Description', 
   'ʵ�ʼ۸�',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'RealPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'EmployeeGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ɹ�Ա��',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'EmployeeGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Contact')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'Contact'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ϵ��ʽ',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'Contact'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoadPrice')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'RoadPrice'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ͨ·��',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'RoadPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RecordTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'RecordTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '¼��ʱ��',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'RecordTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Status')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'Status'

end


execute sp_addextendedproperty 'MS_Description', 
   '0. ���ɹ�  1.�ɹ���  2.�ɹ����',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'Status'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ApplyTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'ApplyTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ʱ��',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'ApplyTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.Purchase')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PlanTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'Purchase', 'column', 'PlanTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ƻ��ɹ�ʱ��',
   'user', 'Procurement', 'table', 'Purchase', 'column', 'PlanTime'
go

/*==============================================================*/
/* Table: PurchaseItems                                         */
/*==============================================================*/
create table Procurement.PurchaseItems (
   PurchaseItemID       int                  identity,
   PurchaseID           int                  null,
   Remark               text                 null,
   Price                decimal(18)          null,
   Count                decimal(18)          null,
   TotalPrice           decimal(18)          null,
   MaterialPackageID    int                  null,
   SupplierID           int                  null,
   MaterialID           int                  null,
   constraint PK_PURCHASEITEMS primary key (PurchaseItemID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Procurement.PurchaseItems') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Procurement', 'table', 'PurchaseItems' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '�ɹ�����.�ճ�ҵ��.����ɹ���ϸ', 
   'user', 'Procurement', 'table', 'PurchaseItems'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.PurchaseItems')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PurchaseItemID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'PurchaseItemID'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ɹ���ϸID',
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'PurchaseItemID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.PurchaseItems')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PurchaseID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'PurchaseID'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ɹ�ID',
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'PurchaseID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.PurchaseItems')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   'Remark',
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.PurchaseItems')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Price')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'Price'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'Price'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.PurchaseItems')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Count')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'Count'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'Count'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.PurchaseItems')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TotalPrice')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'TotalPrice'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ܼ�',
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'TotalPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.PurchaseItems')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialPackageID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'MaterialPackageID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��װ���ID',
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'MaterialPackageID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.PurchaseItems')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SupplierID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'SupplierID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ӧ��ID',
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'SupplierID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Procurement.PurchaseItems')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'MaterialID'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', 'Procurement', 'table', 'PurchaseItems', 'column', 'MaterialID'
go

/*==============================================================*/
/* Table: SalesProduct                                          */
/*==============================================================*/
create table Sales.SalesProduct (
   SalesProductID       int                  identity,
   SalesProductCode     varchar(32)          null,
   SaleTime             datetime             null,
   PersonCount          int                  null,
   Amount               money                null,
   Discount             decimal              null,
   DiscountAmount       money                null,
   ConsumerCode         varchar(64)          null,
   constraint PK_SALESPRODUCT primary key (SalesProductID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Sales.SalesProduct') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Sales', 'table', 'SalesProduct' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '���۹���.�ճ�ҵ��.��Ʒ����', 
   'user', 'Sales', 'table', 'SalesProduct'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProduct')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SalesProductID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'SalesProductID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ʒ����ID',
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'SalesProductID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProduct')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SalesProductCode')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'SalesProductCode'

end


execute sp_addextendedproperty 'MS_Description', 
   '�˵�����',
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'SalesProductCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProduct')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SaleTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'SaleTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'SaleTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProduct')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PersonCount')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'PersonCount'

end


execute sp_addextendedproperty 'MS_Description', 
   '�˵�����',
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'PersonCount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProduct')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Amount')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'Amount'

end


execute sp_addextendedproperty 'MS_Description', 
   '�˵����',
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'Amount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProduct')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Discount')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'Discount'

end


execute sp_addextendedproperty 'MS_Description', 
   '�˵��ۿ�',
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'Discount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProduct')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DiscountAmount')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'DiscountAmount'

end


execute sp_addextendedproperty 'MS_Description', 
   '�˵��ۿۺ���',
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'DiscountAmount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProduct')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ConsumerCode')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'ConsumerCode'

end


execute sp_addextendedproperty 'MS_Description', 
   '�����߱��룬�������������ߵģ��磺ע���˻�Ա��������֧���ȣ�',
   'user', 'Sales', 'table', 'SalesProduct', 'column', 'ConsumerCode'
go

/*==============================================================*/
/* Table: SalesProductItem                                      */
/*==============================================================*/
create table Sales.SalesProductItem (
   SalesProductItemID   int                  identity,
   SalesProductID       int                  null,
   ProductID            int                  null,
   SaleCount            decimal              null,
   MeasureUnitID        int                  null,
   Amount               money                null,
   DiscountAmount       money                null,
   Discount             decimal              null,
   constraint PK_SALESPRODUCTITEM primary key (SalesProductItemID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Sales.SalesProductItem') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Sales', 'table', 'SalesProductItem' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '���۹���.�ճ�ҵ��.��Ʒ������ϸ', 
   'user', 'Sales', 'table', 'SalesProductItem'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProductItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SalesProductItemID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'SalesProductItemID'

end


execute sp_addextendedproperty 'MS_Description', 
   'SalesProductItemID',
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'SalesProductItemID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProductItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SalesProductID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'SalesProductID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ʒ����ID',
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'SalesProductID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProductItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProductID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'ProductID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ʒ����ID',
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'ProductID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProductItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SaleCount')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'SaleCount'

end


execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'SaleCount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProductItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MeasureUnitID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'MeasureUnitID'

end


execute sp_addextendedproperty 'MS_Description', 
   '������λID',
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'MeasureUnitID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProductItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Amount')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'Amount'

end


execute sp_addextendedproperty 'MS_Description', 
   '���۽��',
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'Amount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProductItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DiscountAmount')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'DiscountAmount'

end


execute sp_addextendedproperty 'MS_Description', 
   'ʵ�ʽ��',
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'DiscountAmount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sales.SalesProductItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Discount')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'Discount'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ۿ�',
   'user', 'Sales', 'table', 'SalesProductItem', 'column', 'Discount'
go

/*==============================================================*/
/* Table: StockTaking                                           */
/*==============================================================*/
create table Inventory.StockTaking (
   StockTakingID        int                  identity,
   CreateTime           datetime             null,
   EmployeeGUID         int                  not null,
   Status               decimal(16,8)        not null default 0.0,
   WarehouseID          float(8)             not null default 0,
   ApplyTime            datetime             not null,
   Remark               varchar(128)         null,
   constraint PK_STOCKTAKING primary key nonclustered (StockTakingID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Inventory.StockTaking') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Inventory', 'table', 'StockTaking' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������.����.�ֿ���', 
   'user', 'Inventory', 'table', 'StockTaking'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTaking')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StockTakingID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'StockTakingID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֿ���ID',
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'StockTakingID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTaking')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '�̵�ʱ��',
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTaking')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'EmployeeGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�̵�Ա��GUID',
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'EmployeeGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTaking')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Status')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'Status'

end


execute sp_addextendedproperty 'MS_Description', 
   '0 �ݸ� 1���',
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'Status'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTaking')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WarehouseID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'WarehouseID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�̵�ֿ�',
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'WarehouseID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTaking')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ApplyTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'ApplyTime'

end


execute sp_addextendedproperty 'MS_Description', 
   '�̵����ʱ��',
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'ApplyTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTaking')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'Inventory', 'table', 'StockTaking', 'column', 'Remark'
go

/*==============================================================*/
/* Table: StockTakingItem                                       */
/*==============================================================*/
create table Inventory.StockTakingItem (
   StockTakingItemID    int                  identity,
   StockTakingID        int                  not null,
   MaterialID           int                  not null,
   MaterialPackageID    decimal(16,8)        not null default 0.0,
   Remark               varchar(128)         null,
   Inventory            decimal(16,8)        null,
   OldInventory         decimal(16,8)        null,
   constraint PK_STOCKTAKINGITEM primary key nonclustered (StockTakingItemID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Inventory.StockTakingItem') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Inventory', 'table', 'StockTakingItem' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������.ҵ������.�ֿ���ϸ', 
   'user', 'Inventory', 'table', 'StockTakingItem'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTakingItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StockTakingItemID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'StockTakingItemID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�̵���ϸID',
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'StockTakingItemID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTakingItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StockTakingID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'StockTakingID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�̵�ID',
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'StockTakingID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTakingItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'MaterialID'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'MaterialID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTakingItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialPackageID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'MaterialPackageID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��װ���ID',
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'MaterialPackageID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTakingItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTakingItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Inventory')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'Inventory'

end


execute sp_addextendedproperty 'MS_Description', 
   '���¿��',
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'Inventory'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.StockTakingItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OldInventory')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'OldInventory'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ǰ���',
   'user', 'Inventory', 'table', 'StockTakingItem', 'column', 'OldInventory'
go

/*==============================================================*/
/* Table: Supplier                                              */
/*==============================================================*/
create table SysMange.Supplier (
   SupplierID           int                  identity,
   SupplierName         varchar(64)          null,
   ContactName          varchar(64)          null,
   Contact              varchar(64)          null,
   SupplierType         int                  null,
   Address              varchar(128)         null,
   Remark               text                 null,
   constraint PK_SUPPLIER primary key (SupplierID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysMange.Supplier') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'SysMange', 'table', 'Supplier' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'ϵͳ����.ҵ������.��Ӧ��', 
   'user', 'SysMange', 'table', 'Supplier'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Supplier')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SupplierID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Supplier', 'column', 'SupplierID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ӧ��ID',
   'user', 'SysMange', 'table', 'Supplier', 'column', 'SupplierID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Supplier')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SupplierName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Supplier', 'column', 'SupplierName'

end


execute sp_addextendedproperty 'MS_Description', 
   '��Ӧ������',
   'user', 'SysMange', 'table', 'Supplier', 'column', 'SupplierName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Supplier')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ContactName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Supplier', 'column', 'ContactName'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ϵ������',
   'user', 'SysMange', 'table', 'Supplier', 'column', 'ContactName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Supplier')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Contact')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Supplier', 'column', 'Contact'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ϵ��ʽ',
   'user', 'SysMange', 'table', 'Supplier', 'column', 'Contact'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Supplier')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SupplierType')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Supplier', 'column', 'SupplierType'

end


execute sp_addextendedproperty 'MS_Description', 
   '1.ʵ��� 2.�Ա� 3.���� 4.΢��',
   'user', 'SysMange', 'table', 'Supplier', 'column', 'SupplierType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Supplier')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Address')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Supplier', 'column', 'Address'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ַ',
   'user', 'SysMange', 'table', 'Supplier', 'column', 'Address'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysMange.Supplier')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'SysMange', 'table', 'Supplier', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   'Remark',
   'user', 'SysMange', 'table', 'Supplier', 'column', 'Remark'
go

/*==============================================================*/
/* Table: UserPosition                                          */
/*==============================================================*/
create table HR.UserPosition (
   PositionID           int                  identity,
   DepartmentGUID       char(36)             null,
   PositionName         varchar(50)          not null,
   IndexCode            varchar(20)          not null,
   ParentPositionID     int                  not null,
   IsDirector           tinyint              not null,
   Memo                 text                 null,
   Enabled              bit                  not null,
   Deleted              bit                  not null,
   constraint PK_UserPosition primary key nonclustered (PositionID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('HR.UserPosition') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'HR', 'table', 'UserPosition' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������Դ.��֯�ܹ�.ְλ', 
   'user', 'HR', 'table', 'UserPosition'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.UserPosition')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PositionID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'UserPosition', 'column', 'PositionID'

end


execute sp_addextendedproperty 'MS_Description', 
   'ְλID',
   'user', 'HR', 'table', 'UserPosition', 'column', 'PositionID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.UserPosition')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'UserPosition', 'column', 'DepartmentGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '���ű�ʶ',
   'user', 'HR', 'table', 'UserPosition', 'column', 'DepartmentGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.UserPosition')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PositionName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'UserPosition', 'column', 'PositionName'

end


execute sp_addextendedproperty 'MS_Description', 
   'ְλ����',
   'user', 'HR', 'table', 'UserPosition', 'column', 'PositionName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.UserPosition')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IndexCode')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'UserPosition', 'column', 'IndexCode'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', 'HR', 'table', 'UserPosition', 'column', 'IndexCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.UserPosition')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ParentPositionID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'UserPosition', 'column', 'ParentPositionID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ϼ�ְλID',
   'user', 'HR', 'table', 'UserPosition', 'column', 'ParentPositionID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.UserPosition')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsDirector')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'UserPosition', 'column', 'IsDirector'

end


execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�Ϊ����     0=��1=��',
   'user', 'HR', 'table', 'UserPosition', 'column', 'IsDirector'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.UserPosition')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Memo')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'UserPosition', 'column', 'Memo'

end


execute sp_addextendedproperty 'MS_Description', 
   'ְλ˵����',
   'user', 'HR', 'table', 'UserPosition', 'column', 'Memo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.UserPosition')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Enabled')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'UserPosition', 'column', 'Enabled'

end


execute sp_addextendedproperty 'MS_Description', 
   '����״̬ ',
   'user', 'HR', 'table', 'UserPosition', 'column', 'Enabled'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('HR.UserPosition')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Deleted')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'HR', 'table', 'UserPosition', 'column', 'Deleted'

end


execute sp_addextendedproperty 'MS_Description', 
   'ɾ����־',
   'user', 'HR', 'table', 'UserPosition', 'column', 'Deleted'
go

/*==============================================================*/
/* Table: Warehouse                                             */
/*==============================================================*/
create table Inventory.Warehouse (
   WarehouseID          int                  identity,
   WarehouseCode        varchar(20)          not null,
   WarehouseTypeID      int                  not null,
   WarehouseName        varchar(50)          not null,
   IndexCode            varchar(20)          not null,
   DistrictID           int                  not null,
   Address              varchar(200)         null,
   DepartmentGUID       char(36)             null,
   Remark               varchar(500)         null,
   Enabled              bit                  not null default 1,
   Deleted              bit                  not null default 0,
   Locked               bit                  not null,
   constraint PK_Warehouse primary key nonclustered (WarehouseID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Inventory.Warehouse') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Inventory', 'table', 'Warehouse' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '�ֿ�', 
   'user', 'Inventory', 'table', 'Warehouse'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WarehouseID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'WarehouseID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֿ�ID',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'WarehouseID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WarehouseCode')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'WarehouseCode'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֿ���',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'WarehouseCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WarehouseTypeID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'WarehouseTypeID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֿ�����ID',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'WarehouseTypeID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WarehouseName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'WarehouseName'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֿ�����',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'WarehouseName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IndexCode')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'IndexCode'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'IndexCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DistrictID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'DistrictID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������ID',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'DistrictID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Address')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'Address'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֿ��ַ',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'Address'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentGUID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'DepartmentGUID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'DepartmentGUID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע˵��',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Enabled')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'Enabled'

end


execute sp_addextendedproperty 'MS_Description', 
   '����״̬',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'Enabled'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Deleted')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'Deleted'

end


execute sp_addextendedproperty 'MS_Description', 
   'ɾ����־',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'Deleted'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.Warehouse')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Locked')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'Locked'

end


execute sp_addextendedproperty 'MS_Description', 
   '����״̬',
   'user', 'Inventory', 'table', 'Warehouse', 'column', 'Locked'
go

/*==============================================================*/
/* Table: WarehouseInventory                                    */
/*==============================================================*/
create table Inventory.WarehouseInventory (
   WarehouseInventoryID int                  identity,
   WarehouseRegionID    int                  null,
   NewestPrice          float(8)             not null default 0,
   MaterialID           int                  not null,
   MaterialPackageID    int                  null,
   Inventory            decimal(16,8)        not null default 0.0,
   Cost                 float(8)             not null default 0,
   constraint PK_WAREHOUSEINVENTORY primary key nonclustered (WarehouseInventoryID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Inventory.WarehouseInventory') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Inventory', 'table', 'WarehouseInventory' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������.����.�ֿ���', 
   'user', 'Inventory', 'table', 'WarehouseInventory'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseInventory')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WarehouseInventoryID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'WarehouseInventoryID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֿ���ID',
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'WarehouseInventoryID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseInventory')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WarehouseRegionID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'WarehouseRegionID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֿ�����ID',
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'WarehouseRegionID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseInventory')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NewestPrice')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'NewestPrice'

end


execute sp_addextendedproperty 'MS_Description', 
   '����۸�',
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'NewestPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseInventory')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'MaterialID'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'MaterialID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseInventory')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MaterialPackageID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'MaterialPackageID'

end


execute sp_addextendedproperty 'MS_Description', 
   '��װ���ID',
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'MaterialPackageID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseInventory')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Inventory')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'Inventory'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ǰ���',
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'Inventory'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseInventory')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Cost')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'Cost'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ǰ�ɱ�',
   'user', 'Inventory', 'table', 'WarehouseInventory', 'column', 'Cost'
go

/*==============================================================*/
/* Table: WarehouseRegion                                       */
/*==============================================================*/
create table Inventory.WarehouseRegion (
   WarehouseRegionID    int                  identity,
   WarehouseID          int                  not null,
   RegionName           int                  not null,
   Deleted              bit                  not null,
   Remark               varchar(128)         null,
   constraint PK_WAREHOUSEREGION primary key nonclustered (WarehouseRegionID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Inventory.WarehouseRegion') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'Inventory', 'table', 'WarehouseRegion' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   '������.��������.�ֿ�����', 
   'user', 'Inventory', 'table', 'WarehouseRegion'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseRegion')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WarehouseRegionID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseRegion', 'column', 'WarehouseRegionID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֿ�����ID',
   'user', 'Inventory', 'table', 'WarehouseRegion', 'column', 'WarehouseRegionID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseRegion')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WarehouseID')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseRegion', 'column', 'WarehouseID'

end


execute sp_addextendedproperty 'MS_Description', 
   '�ֿ�ID',
   'user', 'Inventory', 'table', 'WarehouseRegion', 'column', 'WarehouseID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseRegion')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RegionName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseRegion', 'column', 'RegionName'

end


execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', 'Inventory', 'table', 'WarehouseRegion', 'column', 'RegionName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseRegion')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Deleted')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseRegion', 'column', 'Deleted'

end


execute sp_addextendedproperty 'MS_Description', 
   'ɾ����־',
   'user', 'Inventory', 'table', 'WarehouseRegion', 'column', 'Deleted'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Inventory.WarehouseRegion')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'Inventory', 'table', 'WarehouseRegion', 'column', 'Remark'

end


execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', 'Inventory', 'table', 'WarehouseRegion', 'column', 'Remark'
go

alter table Organization.DepartmentEmployee
   add constraint FK_DEPARTME_REFERENCE_DEPARTME foreign key (DepartmentGUID)
      references Organization.Department (DepartmentGUID)
go

alter table Organization.DepartmentEmployee
   add constraint FK_DEPARTME_REFERENCE_DEPARTME foreign key (DepartmentRoleGUID)
      references Organization.DepartmentRole (DepartmentRoleGUID)
go

alter table Organization.DepartmentRole
   add constraint FK_DEPARTME_REFERENCE_DEPARTME foreign key (DepartmentGUID)
      references Organization.Department (DepartmentGUID)
go

alter table HR.EmployeeLogin
   add constraint FK_EMPLOYEE_REFERENCE_EMPLOYEE foreign key (EmployeeGUID)
      references HR.Employee (EmployeeGUID)
go

alter table Finance.FlowingCapitalItem
   add constraint FK_FLOWINGC_REFERENCE_FLOWINGC foreign key (FlowingCapitalID)
      references Finance.FlowingCapital (FlowingCapitalID)
go

alter table InOrOutMoneyStatisticsItem
   add constraint FK_INOROUTM_REFERENCE_INOROUTM foreign key (InOrOutMoneyStatisticsID)
      references InOrOutMoneyStatistics (InOrOutMoneyStatisticsID)
go

alter table SysMange.MaterialInfo
   add constraint FK_MATERIAL_REFERENCE_MATERIAL foreign key (MaterialTypeID)
      references SysMange.MaterialTypes (MaterialTypeID)
go

alter table SysMange.MaterialPackage
   add constraint FK_MATERIAL_REFERENCE_MEASUREU foreign key (MeasureUnitID)
      references SysMange.MeasureUnit (MeasureUnitID)
go

alter table SysMange.MaterialPackage
   add constraint FK_MATERIAL_REFERENCE_MATERIAL foreign key (MaterialID)
      references SysMange.MaterialInfo (MaterialID)
go

alter table SysMange.MaterialPackage
   add constraint FK_MATERIAL_REFERENCE_MATERIAL foreign key (MaterialID)
      references SysMange.MaterialInfo (MaterialID)
go

alter table SysMange.Menu
   add constraint FK_MENU_REFERENCE_MODULE foreign key (ModuleID)
      references SysMange.Module (ModuleID)
go

alter table Organization.MenuRole
   add constraint FK_MENUROLE_REFERENCE_MODULERO foreign key (ModuleRoleID)
      references Organization.ModuleRole (ModuleRoleID)
go

alter table Organization.ModuleRole
   add constraint FK_MODULERO_REFERENCE_DEPARTME foreign key (DepartmentRoleGUID)
      references Organization.DepartmentRole (DepartmentRoleGUID)
go

alter table Procurement.PurchaseItems
   add constraint FK_PURCHASE_REFERENCE_MATERIAL foreign key (MaterialPackageID)
      references SysMange.MaterialPackage (MaterialPackageID)
go

alter table Procurement.PurchaseItems
   add constraint FK_PURCHASE_REFERENCE_PURCHASE foreign key (PurchaseID)
      references Procurement.Purchase (PurchaseID)
go

alter table Procurement.PurchaseItems
   add constraint FK_PURCHASE_REFERENCE_SUPPLIER foreign key (SupplierID)
      references SysMange.Supplier (SupplierID)
go

alter table Sales.SalesProductItem
   add constraint FK_SALESPRO_REFERENCE_SALESPRO foreign key (SalesProductID)
      references Sales.SalesProduct (SalesProductID)
go

alter table Sales.SalesProductItem
   add constraint FK_SALESPRO_REFERENCE_PRODUCT foreign key (ProductID)
      references Sales.Product (ProductID)
go

alter table Sales.SalesProductItem
   add constraint FK_SALESPRO_REFERENCE_MEASUREU foreign key (MeasureUnitID)
      references SysMange.MeasureUnit (MeasureUnitID)
go

alter table Inventory.StockTakingItem
   add constraint FK_STOCKTAK_REFERENCE_STOCKTAK foreign key (StockTakingID)
      references Inventory.StockTaking (StockTakingID)
go

alter table HR.UserPosition
   add constraint FK_USERPOSI_REFERENCE_DEPARTME foreign key (DepartmentGUID)
      references Organization.Department (DepartmentGUID)
go

alter table Inventory.WarehouseInventory
   add constraint FK_WAREHOUS_REFERENCE_WAREHOUS foreign key (WarehouseRegionID)
      references Inventory.WarehouseRegion (WarehouseRegionID)
go

alter table Inventory.WarehouseRegion
   add constraint FK_WAREHOUS_REFERENCE_WAREHOUS foreign key (WarehouseID)
      references Inventory.Warehouse (WarehouseID)
go


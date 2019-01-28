using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class ZYHmanageContext : DbContext
    {
        public ZYHmanageContext()
        {
        }

        public ZYHmanageContext(DbContextOptions<ZYHmanageContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Department> Department { get; set; }
        public virtual DbSet<DepartmentEmployee> DepartmentEmployee { get; set; }
        public virtual DbSet<DepartmentRole> DepartmentRole { get; set; }
        public virtual DbSet<Employee> Employee { get; set; }
        public virtual DbSet<EmployeeLogin> EmployeeLogin { get; set; }
        public virtual DbSet<FlowingCapital> FlowingCapital { get; set; }
        public virtual DbSet<FlowingCapitalItem> FlowingCapitalItem { get; set; }
        public virtual DbSet<InOrOutMoneyStatistics> InOrOutMoneyStatistics { get; set; }
        public virtual DbSet<InOrOutMoneyStatisticsItem> InOrOutMoneyStatisticsItem { get; set; }
        public virtual DbSet<MaterialInfo> MaterialInfo { get; set; }
        public virtual DbSet<MaterialPackage> MaterialPackage { get; set; }
        public virtual DbSet<MaterialTypes> MaterialTypes { get; set; }
        public virtual DbSet<MeasureUnit> MeasureUnit { get; set; }
        public virtual DbSet<Menu> Menu { get; set; }
        public virtual DbSet<MenuRole> MenuRole { get; set; }
        public virtual DbSet<Module> Module { get; set; }
        public virtual DbSet<ModuleRole> ModuleRole { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<Purchase> Purchase { get; set; }
        public virtual DbSet<PurchaseItems> PurchaseItems { get; set; }
        public virtual DbSet<SalesProduct> SalesProduct { get; set; }
        public virtual DbSet<SalesProductItem> SalesProductItem { get; set; }
        public virtual DbSet<StockTaking> StockTaking { get; set; }
        public virtual DbSet<StockTakingItem> StockTakingItem { get; set; }
        public virtual DbSet<Supplier> Supplier { get; set; }
        public virtual DbSet<UserPosition> UserPosition { get; set; }
        public virtual DbSet<Warehouse> Warehouse { get; set; }
        public virtual DbSet<WarehouseInventory> WarehouseInventory { get; set; }
        public virtual DbSet<WarehouseRegion> WarehouseRegion { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            { 
                optionsBuilder.UseSqlServer("Data Source=192.168.102.180;Initial Catalog=ZYH.manage;uid=sa;pwd=53372047;MultipleActiveResultSets=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Department>(entity =>
            {
                entity.HasKey(e => e.DepartmentGuid)
                    .ForSqlServerIsClustered(false);

                entity.ToTable("Department", "Organization");

                entity.Property(e => e.DepartmentGuid)
                    .HasColumnName("DepartmentGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.DepartmentCode).ValueGeneratedOnAdd();

                entity.Property(e => e.DepartmentName)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.DepartmentTel)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Enabled).HasDefaultValueSql("((1))");

                entity.Property(e => e.ParentDepartmentGuid)
                    .HasColumnName("ParentDepartmentGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.Remark)
                    .HasMaxLength(500)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<DepartmentEmployee>(entity =>
            {
                entity.ToTable("DepartmentEmployee", "Organization");

                entity.Property(e => e.DepartmentEmployeeId)
                    .HasColumnName("DepartmentEmployeeID")
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.DepartmentGuid)
                    .HasColumnName("DepartmentGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.DepartmentRoleGuid)
                    .HasColumnName("DepartmentRoleGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeGuid)
                    .HasColumnName("EmployeeGUID")
                    .HasMaxLength(32)
                    .IsUnicode(false);

                entity.Property(e => e.RoleGuid)
                    .HasColumnName("RoleGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.HasOne(d => d.DepartmentGu)
                    .WithMany(p => p.DepartmentEmployee)
                    .HasForeignKey(d => d.DepartmentGuid)
                    .HasConstraintName("FK_DEPARTME_REFERENCE_DEPARTME");
            });

            modelBuilder.Entity<DepartmentRole>(entity =>
            {
                entity.HasKey(e => e.DepartmentRoleGuid)
                    .ForSqlServerIsClustered(false);

                entity.ToTable("DepartmentRole", "Organization");

                entity.Property(e => e.DepartmentRoleGuid)
                    .HasColumnName("DepartmentRoleGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.DepartmentGuid)
                    .HasColumnName("DepartmentGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.RoleGuid)
                    .HasColumnName("RoleGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.RoleName)
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Employee>(entity =>
            {
                entity.HasKey(e => e.EmployeeGuid)
                    .ForSqlServerIsClustered(false);

                entity.ToTable("Employee", "HR");

                entity.Property(e => e.EmployeeGuid)
                    .HasColumnName("EmployeeGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Address)
                    .HasMaxLength(150)
                    .IsUnicode(false);

                entity.Property(e => e.Birthday).HasColumnType("datetime");

                entity.Property(e => e.DutyId).HasColumnName("DutyID");

                entity.Property(e => e.EmployeeCode)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeName)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.FormalDate).HasColumnType("datetime");

                entity.Property(e => e.IdcardNo)
                    .HasColumnName("IDCardNo")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.IndexCode)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.InductionDate).HasColumnType("datetime");

                entity.Property(e => e.LeaveDate).HasColumnType("datetime");

                entity.Property(e => e.PositionId).HasColumnName("PositionID");

                entity.Property(e => e.Tel)
                    .HasMaxLength(30)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<EmployeeLogin>(entity =>
            {
                entity.HasKey(e => e.EmployeeLoginId)
                    .ForSqlServerIsClustered(false);

                entity.ToTable("EmployeeLogin", "HR");

                entity.Property(e => e.EmployeeLoginId).HasColumnName("EmployeeLoginID");

                entity.Property(e => e.EmployeeGuid)
                    .HasColumnName("EmployeeGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.LastTime).HasColumnType("datetime");

                entity.Property(e => e.Phone)
                    .HasMaxLength(11)
                    .IsUnicode(false);

                entity.Property(e => e.Pwd)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.UserName)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.HasOne(d => d.EmployeeGu)
                    .WithMany(p => p.EmployeeLogin)
                    .HasForeignKey(d => d.EmployeeGuid)
                    .HasConstraintName("FK_EMPLOYEE_REFERENCE_EMPLOYEE");
            });

            modelBuilder.Entity<FlowingCapital>(entity =>
            {
                entity.ToTable("FlowingCapital", "Finance");

                entity.Property(e => e.FlowingCapitalId).HasColumnName("FlowingCapitalID");

                entity.Property(e => e.Amount).HasColumnType("money");

                entity.Property(e => e.ApplyUserId).HasColumnName("ApplyUserID");

                entity.Property(e => e.FlowingCapitalName)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.RecordTime).HasColumnType("datetime");

                entity.Property(e => e.Remark)
                    .HasMaxLength(256)
                    .IsUnicode(false);

                entity.Property(e => e.SourceId).HasColumnName("SourceID");
            });

            modelBuilder.Entity<FlowingCapitalItem>(entity =>
            {
                entity.ToTable("FlowingCapitalItem", "Finance");

                entity.Property(e => e.FlowingCapitalItemId).HasColumnName("FlowingCapitalItemID");

                entity.Property(e => e.Amount).HasColumnType("money");

                entity.Property(e => e.BeginTime).HasColumnType("datetime");

                entity.Property(e => e.Endtime).HasColumnType("datetime");

                entity.Property(e => e.FlowingCapitalId).HasColumnName("FlowingCapitalID");

                entity.Property(e => e.RecordTime).HasColumnType("datetime");

                entity.Property(e => e.Remark)
                    .HasMaxLength(256)
                    .IsUnicode(false);

                entity.HasOne(d => d.FlowingCapital)
                    .WithMany(p => p.FlowingCapitalItem)
                    .HasForeignKey(d => d.FlowingCapitalId)
                    .HasConstraintName("FK_FLOWINGC_REFERENCE_FLOWINGC");
            });

            modelBuilder.Entity<InOrOutMoneyStatistics>(entity =>
            {
                entity.Property(e => e.InOrOutMoneyStatisticsId).HasColumnName("InOrOutMoneyStatisticsID");

                entity.Property(e => e.Date).HasColumnType("date");
            });

            modelBuilder.Entity<InOrOutMoneyStatisticsItem>(entity =>
            {
                entity.Property(e => e.InOrOutMoneyStatisticsItemId).HasColumnName("InOrOutMoneyStatisticsItemID");

                entity.Property(e => e.InOrOutMoneyStatisticsId).HasColumnName("InOrOutMoneyStatisticsID");

                entity.Property(e => e.SourceId)
                    .HasColumnName("SourceID")
                    .HasColumnType("date");

                entity.HasOne(d => d.InOrOutMoneyStatistics)
                    .WithMany(p => p.InOrOutMoneyStatisticsItem)
                    .HasForeignKey(d => d.InOrOutMoneyStatisticsId)
                    .HasConstraintName("FK_INOROUTM_REFERENCE_INOROUTM");
            });

            modelBuilder.Entity<MaterialInfo>(entity =>
            {
                entity.HasKey(e => e.MaterialId);

                entity.ToTable("MaterialInfo", "SysMange");

                entity.Property(e => e.MaterialId).HasColumnName("MaterialID");

                entity.Property(e => e.CreateTime).HasColumnType("datetime");

                entity.Property(e => e.Enabled)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.MaterialCode)
                    .HasMaxLength(16)
                    .IsUnicode(false);

                entity.Property(e => e.MaterialImage)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.MaterialName)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.MaterialShortName)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.MaterialTypeId).HasColumnName("MaterialTypeID");

                entity.Property(e => e.ShortIndexCode)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.HasOne(d => d.MaterialTypeNavigation)
                    .WithMany(p => p.MaterialInfo)
                    .HasForeignKey(d => d.MaterialTypeId)
                    .HasConstraintName("FK_MATERIAL_REFERENCE_MATERIAL");
            });

            modelBuilder.Entity<MaterialPackage>(entity =>
            {
                entity.HasKey(e => e.MaterialPackageId)
                    .ForSqlServerIsClustered(false);

                entity.ToTable("MaterialPackage", "SysMange");

                entity.Property(e => e.MaterialPackageId).HasColumnName("MaterialPackageID");

                entity.Property(e => e.BarCode)
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.CostPrice).HasColumnType("money");

                entity.Property(e => e.MaterialId).HasColumnName("MaterialID");

                entity.Property(e => e.MaterialPackageName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.MeasureUnitId).HasColumnName("MeasureUnitID");

                entity.Property(e => e.Remark)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.SalePrice).HasColumnType("money");

                entity.HasOne(d => d.MeasureUnit)
                    .WithMany(p => p.MaterialPackage)
                    .HasForeignKey(d => d.MeasureUnitId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MATERIAL_REFERENCE_MEASUREU");
            });

            modelBuilder.Entity<MaterialTypes>(entity =>
            {
                entity.HasKey(e => e.MaterialTypeId);

                entity.ToTable("MaterialTypes", "SysMange");

                entity.Property(e => e.MaterialTypeId).HasColumnName("MaterialTypeID");

                entity.Property(e => e.Enabled)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.MaterialTypeName)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.ParentMaterialTypeId).HasColumnName("ParentMaterialTypeID");

                entity.Property(e => e.Remark)
                    .HasMaxLength(200)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<MeasureUnit>(entity =>
            {
                entity.ToTable("MeasureUnit", "SysMange");

                entity.Property(e => e.MeasureUnitId).HasColumnName("MeasureUnitID");

                entity.Property(e => e.MeasureUnitName)
                    .HasMaxLength(16)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Menu>(entity =>
            {
                entity.ToTable("Menu", "SysMange");

                entity.Property(e => e.MenuId).HasColumnName("MenuID");

                entity.Property(e => e.Index)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.MenuImg)
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.MenuName)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.MenuParentId).HasColumnName("MenuParentID");

                entity.Property(e => e.MenuUrl)
                    .HasColumnName("MenuURL")
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.ModuleId).HasColumnName("ModuleID");

                entity.Property(e => e.Remark).HasColumnType("text");

                entity.HasOne(d => d.Module)
                    .WithMany(p => p.Menu)
                    .HasForeignKey(d => d.ModuleId)
                    .HasConstraintName("FK_MENU_REFERENCE_MODULE");
            });

            modelBuilder.Entity<MenuRole>(entity =>
            {
                entity.ToTable("MenuRole", "Organization");

                entity.Property(e => e.MenuRoleId)
                    .HasColumnName("MenuRoleID")
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Authority).HasColumnName("authority");

                entity.Property(e => e.MenuParentId).HasColumnName("MenuParentID");

                entity.Property(e => e.ModuleId).HasColumnName("ModuleID");

                entity.Property(e => e.ModuleRoleId)
                    .HasColumnName("ModuleRoleID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.HasOne(d => d.ModuleRole)
                    .WithMany(p => p.MenuRole)
                    .HasForeignKey(d => d.ModuleRoleId)
                    .HasConstraintName("FK_MENUROLE_REFERENCE_MODULERO");
            });

            modelBuilder.Entity<Module>(entity =>
            {
                entity.ToTable("Module", "SysMange");

                entity.Property(e => e.ModuleId).HasColumnName("ModuleID");

                entity.Property(e => e.Index)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.ModuleImg)
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.ModuleName)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.ModuleUrl)
                    .HasColumnName("ModuleURL")
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.Remark).HasColumnType("text");
            });

            modelBuilder.Entity<ModuleRole>(entity =>
            {
                entity.ToTable("ModuleRole", "Organization");

                entity.Property(e => e.ModuleRoleId)
                    .HasColumnName("ModuleRoleID")
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.DepartmentRoleGuid)
                    .HasColumnName("DepartmentRoleGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.ModuleId).HasColumnName("ModuleID");

                entity.HasOne(d => d.DepartmentRoleGu)
                    .WithMany(p => p.ModuleRole)
                    .HasForeignKey(d => d.DepartmentRoleGuid)
                    .HasConstraintName("FK_MODULERO_REFERENCE_DEPARTME");
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.ToTable("Product", "Sales");

                entity.Property(e => e.ProductId).HasColumnName("ProductID");

                entity.Property(e => e.CostPrice).HasColumnType("money");

                entity.Property(e => e.CreateTime).HasColumnType("datetime");

                entity.Property(e => e.MeasureUnitId).HasColumnName("MeasureUnitID");

                entity.Property(e => e.ProductCreateUrl)
                    .HasColumnName("ProductCreateURL")
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.ProductName)
                    .HasMaxLength(32)
                    .IsUnicode(false);

                entity.Property(e => e.ProductUrl)
                    .HasColumnName("ProductURL")
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.Remark)
                    .HasMaxLength(256)
                    .IsUnicode(false);

                entity.Property(e => e.SalePrice).HasColumnType("money");
            });

            modelBuilder.Entity<Purchase>(entity =>
            {
                entity.ToTable("Purchase", "Procurement");

                entity.Property(e => e.PurchaseId).HasColumnName("PurchaseID");

                entity.Property(e => e.Address)
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.ApplyTime).HasColumnType("datetime");

                entity.Property(e => e.Contact)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.CostPrice).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.CreateTime).HasColumnType("datetime");

                entity.Property(e => e.EmployeeGuid)
                    .HasColumnName("EmployeeGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.PlanTime).HasColumnType("datetime");

                entity.Property(e => e.RealPrice).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.RecordTime).HasColumnType("datetime");

                entity.Property(e => e.Remark).HasColumnType("text");

                entity.Property(e => e.RoadPrice).HasColumnType("decimal(18, 0)");
            });

            modelBuilder.Entity<PurchaseItems>(entity =>
            {
                entity.HasKey(e => e.PurchaseItemId);

                entity.ToTable("PurchaseItems", "Procurement");

                entity.Property(e => e.PurchaseItemId).HasColumnName("PurchaseItemID");

                entity.Property(e => e.Count).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.MaterialId).HasColumnName("MaterialID");

                entity.Property(e => e.MaterialPackageId).HasColumnName("MaterialPackageID");

                entity.Property(e => e.Price).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.PurchaseId).HasColumnName("PurchaseID");

                entity.Property(e => e.Remark).HasColumnType("text");

                entity.Property(e => e.SupplierId).HasColumnName("SupplierID");

                entity.Property(e => e.TotalPrice).HasColumnType("decimal(18, 0)");

                entity.HasOne(d => d.MaterialPackage)
                    .WithMany(p => p.PurchaseItems)
                    .HasForeignKey(d => d.MaterialPackageId)
                    .HasConstraintName("FK_PURCHASE_REFERENCE_MATERIAL");

                entity.HasOne(d => d.Purchase)
                    .WithMany(p => p.PurchaseItems)
                    .HasForeignKey(d => d.PurchaseId)
                    .HasConstraintName("FK_PURCHASE_REFERENCE_PURCHASE");

                entity.HasOne(d => d.Supplier)
                    .WithMany(p => p.PurchaseItems)
                    .HasForeignKey(d => d.SupplierId)
                    .HasConstraintName("FK_PURCHASE_REFERENCE_SUPPLIER");
            });

            modelBuilder.Entity<SalesProduct>(entity =>
            {
                entity.ToTable("SalesProduct", "Sales");

                entity.Property(e => e.SalesProductId).HasColumnName("SalesProductID");

                entity.Property(e => e.Amount).HasColumnType("money");

                entity.Property(e => e.ConsumerCode)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.Discount).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.DiscountAmount).HasColumnType("money");

                entity.Property(e => e.SaleTime).HasColumnType("datetime");

                entity.Property(e => e.SalesProductCode)
                    .HasMaxLength(32)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<SalesProductItem>(entity =>
            {
                entity.ToTable("SalesProductItem", "Sales");

                entity.Property(e => e.SalesProductItemId).HasColumnName("SalesProductItemID");

                entity.Property(e => e.Amount).HasColumnType("money");

                entity.Property(e => e.Discount).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.DiscountAmount).HasColumnType("money");

                entity.Property(e => e.MeasureUnitId).HasColumnName("MeasureUnitID");

                entity.Property(e => e.ProductId).HasColumnName("ProductID");

                entity.Property(e => e.SaleCount).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.SalesProductId).HasColumnName("SalesProductID");

                entity.HasOne(d => d.MeasureUnit)
                    .WithMany(p => p.SalesProductItem)
                    .HasForeignKey(d => d.MeasureUnitId)
                    .HasConstraintName("FK_SALESPRO_REFERENCE_MEASUREU");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.SalesProductItem)
                    .HasForeignKey(d => d.ProductId)
                    .HasConstraintName("FK_SALESPRO_REFERENCE_PRODUCT");

                entity.HasOne(d => d.SalesProduct)
                    .WithMany(p => p.SalesProductItem)
                    .HasForeignKey(d => d.SalesProductId)
                    .HasConstraintName("FK_SALESPRO_REFERENCE_SALESPRO");
            });

            modelBuilder.Entity<StockTaking>(entity =>
            {
                entity.HasKey(e => e.StockTakingId)
                    .ForSqlServerIsClustered(false);

                entity.ToTable("StockTaking", "Inventory");

                entity.Property(e => e.StockTakingId).HasColumnName("StockTakingID");

                entity.Property(e => e.ApplyTime).HasColumnType("datetime");

                entity.Property(e => e.CreateTime).HasColumnType("datetime");

                entity.Property(e => e.EmployeeGuid).HasColumnName("EmployeeGUID");

                entity.Property(e => e.Remark)
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.Status).HasColumnType("decimal(16, 8)");

                entity.Property(e => e.WarehouseId).HasColumnName("WarehouseID");
            });

            modelBuilder.Entity<StockTakingItem>(entity =>
            {
                entity.HasKey(e => e.StockTakingItemId)
                    .ForSqlServerIsClustered(false);

                entity.ToTable("StockTakingItem", "Inventory");

                entity.Property(e => e.StockTakingItemId).HasColumnName("StockTakingItemID");

                entity.Property(e => e.Inventory).HasColumnType("decimal(16, 8)");

                entity.Property(e => e.MaterialId).HasColumnName("MaterialID");

                entity.Property(e => e.MaterialPackageId)
                    .HasColumnName("MaterialPackageID")
                    .HasColumnType("decimal(16, 8)");

                entity.Property(e => e.OldInventory).HasColumnType("decimal(16, 8)");

                entity.Property(e => e.Remark)
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.StockTakingId).HasColumnName("StockTakingID");

                entity.HasOne(d => d.StockTaking)
                    .WithMany(p => p.StockTakingItem)
                    .HasForeignKey(d => d.StockTakingId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_STOCKTAK_REFERENCE_STOCKTAK");
            });

            modelBuilder.Entity<Supplier>(entity =>
            {
                entity.ToTable("Supplier", "SysMange");

                entity.Property(e => e.SupplierId).HasColumnName("SupplierID");

                entity.Property(e => e.Address)
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.Contact)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.ContactName)
                    .HasMaxLength(64)
                    .IsUnicode(false);

                entity.Property(e => e.Remark).HasColumnType("text");

                entity.Property(e => e.SupplierName)
                    .HasMaxLength(64)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<UserPosition>(entity =>
            {
                entity.HasKey(e => e.PositionId)
                    .ForSqlServerIsClustered(false);

                entity.ToTable("UserPosition", "HR");

                entity.Property(e => e.PositionId).HasColumnName("PositionID");

                entity.Property(e => e.DepartmentGuid)
                    .HasColumnName("DepartmentGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.IndexCode)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Memo).HasColumnType("text");

                entity.Property(e => e.ParentPositionId).HasColumnName("ParentPositionID");

                entity.Property(e => e.PositionName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.HasOne(d => d.DepartmentGu)
                    .WithMany(p => p.UserPosition)
                    .HasForeignKey(d => d.DepartmentGuid)
                    .HasConstraintName("FK_USERPOSI_REFERENCE_DEPARTME");
            });

            modelBuilder.Entity<Warehouse>(entity =>
            {
                entity.HasKey(e => e.WarehouseId)
                    .ForSqlServerIsClustered(false);

                entity.ToTable("Warehouse", "Inventory");

                entity.Property(e => e.WarehouseId).HasColumnName("WarehouseID");

                entity.Property(e => e.Address)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.DepartmentGuid)
                    .HasColumnName("DepartmentGUID")
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.DistrictId).HasColumnName("DistrictID");

                entity.Property(e => e.Enabled)
                    .IsRequired()
                    .HasDefaultValueSql("((1))");

                entity.Property(e => e.IndexCode)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Remark)
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.WarehouseCode)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.WarehouseName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.WarehouseTypeId).HasColumnName("WarehouseTypeID");
            });

            modelBuilder.Entity<WarehouseInventory>(entity =>
            {
                entity.HasKey(e => e.WarehouseInventoryId)
                    .ForSqlServerIsClustered(false);

                entity.ToTable("WarehouseInventory", "Inventory");

                entity.Property(e => e.WarehouseInventoryId).HasColumnName("WarehouseInventoryID");

                entity.Property(e => e.Inventory).HasColumnType("decimal(16, 8)");

                entity.Property(e => e.MaterialId).HasColumnName("MaterialID");

                entity.Property(e => e.MaterialPackageId).HasColumnName("MaterialPackageID");

                entity.Property(e => e.WarehouseRegionId).HasColumnName("WarehouseRegionID");

                entity.HasOne(d => d.WarehouseRegion)
                    .WithMany(p => p.WarehouseInventory)
                    .HasForeignKey(d => d.WarehouseRegionId)
                    .HasConstraintName("FK_WAREHOUS_REFERENCE_WAREHOUS");
            });

            modelBuilder.Entity<WarehouseRegion>(entity =>
            {
                entity.HasKey(e => e.WarehouseRegionId)
                    .ForSqlServerIsClustered(false);

                entity.ToTable("WarehouseRegion", "Inventory");

                entity.Property(e => e.WarehouseRegionId).HasColumnName("WarehouseRegionID");

                entity.Property(e => e.Remark)
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.WarehouseId).HasColumnName("WarehouseID");
            });
        }
    }
}

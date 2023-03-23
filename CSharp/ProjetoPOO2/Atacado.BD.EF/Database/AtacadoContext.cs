using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Atacado.BD.EF.Database;

public partial class AtacadoContext : DbContext
{
    public AtacadoContext()
    {
    }

    public AtacadoContext(DbContextOptions<AtacadoContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Categorium> Categoria { get; set; }

    public virtual DbSet<Produto> Produtos { get; set; }

    public virtual DbSet<Subcategorium> Subcategoria { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=cgr_lab15_maq02\\sqlexpress;Initial Catalog=bdAtacado;User=usrAtacado;Password=senha123;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Categorium>(entity =>
        {
            entity.Property(e => e.DataInclusao).HasDefaultValueSql("(getdate())");
        });

        modelBuilder.Entity<Produto>(entity =>
        {
            entity.Property(e => e.DataInclusao).HasDefaultValueSql("(getdate())");

            entity.HasOne(d => d.CodigoSubcategoriaNavigation).WithMany(p => p.Produtos)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Produto_Subcategoria");
        });

        modelBuilder.Entity<Subcategorium>(entity =>
        {
            entity.Property(e => e.DataInclusao).HasDefaultValueSql("(getdate())");

            entity.HasOne(d => d.CodigoCategoriaNavigation).WithMany(p => p.Subcategoria)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Subcategoria_Categoria");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
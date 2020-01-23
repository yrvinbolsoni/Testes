namespace Testes.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ContextText : DbContext
    {
        public ContextText()
            : base("name=ContextText")
        {
        }

        public virtual DbSet<arquivo> arquivo { get; set; }
        public virtual DbSet<D> D { get; set; }
        public virtual DbSet<PhoneBook> PhoneBook { get; set; }
        public virtual DbSet<ListVoip> ListVoip { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<arquivo>()
                .Property(e => e.fileName)
                .IsUnicode(false);

            modelBuilder.Entity<D>()
                .Property(e => e.fileName)
                .IsUnicode(false);

            modelBuilder.Entity<PhoneBook>()
                .Property(e => e.FirstName)
                .IsUnicode(false);

            modelBuilder.Entity<PhoneBook>()
                .Property(e => e.LastName)
                .IsUnicode(false);

            modelBuilder.Entity<PhoneBook>()
                .Property(e => e.Contact)
                .IsUnicode(false);

            modelBuilder.Entity<PhoneBook>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<ListVoip>()
                .Property(e => e.Ramal)
                .IsUnicode(false);

            modelBuilder.Entity<ListVoip>()
                .Property(e => e.Empresa)
                .IsUnicode(false);

            modelBuilder.Entity<ListVoip>()
                .Property(e => e.Funcionario)
                .IsUnicode(false);

            modelBuilder.Entity<ListVoip>()
                .Property(e => e.Senha)
                .IsUnicode(false);

            modelBuilder.Entity<ListVoip>()
                .Property(e => e.Ip)
                .IsUnicode(false);

            modelBuilder.Entity<ListVoip>()
                .Property(e => e.Status)
                .IsUnicode(false);
        }
    }
}

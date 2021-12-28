using Microsoft.EntityFrameworkCore;
using Mangut.Models;

namespace Mangut.Models
{
    public class Context:DbContext
    {
        public Context(DbContextOptions<Context> options) : base(options)
        {

        }
        public DbSet<Cliente> Clientes { get; set;}
        public DbSet<Vendedor> Vendedores { get; set;}
        public DbSet<Produto> Produtos { get; set;}
        public DbSet<Compra> Compras { get; set;}
        public DbSet<Avaliacao> Avaliacaoes { get; set;}
        public DbSet<Mangut.Models.Categoria> Categoria { get; set; }
    }
}

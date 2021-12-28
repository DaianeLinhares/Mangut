using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mangut.Models
{
    public class Compra
    {
        [Key]
        public int IdCompra { get; set; }
        public DateTime DataCompra { get; set; }
        [ForeignKey("Cliente")]
        public int IdCliente { get; set; }
        public virtual Cliente Cliente { get; set; }
        [ForeignKey("Produto")]
        public int IdProduto { get; set; }
        public virtual Produto Produto { get; set; }
        

    }
}

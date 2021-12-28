using System.ComponentModel.DataAnnotations;

namespace Mangut.Models
{
    public class Produto
    {
        [Key]
        public int IdProduto { get; set; }
        public string Nome { get; set; }
        public string Tipo { get; set; }
        public string Preco { get; set; }
        public virtual List<Compra> Compras { get; set; }
        
    }
}

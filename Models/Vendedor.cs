using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mangut.Models
{
    public class Vendedor
    {
        [Key]
        public int IdVendedor { get; set; }
        [Required]
        [StringLength(11)]
        public string CPF { get; set; }
        public string Endereco { get; set; }
        public string Telefone { get; set; }
        public string Email { get; set; }   
        public string Senha { get; set; }
        [ForeignKey("Produto")]
        public int IdProduto { get; set; }
        public virtual Produto Produto { get; set; }
        [ForeignKey("Avaliacao")]
        public int IdAvaliacao { get; set; }
        public virtual Avaliacao Avaliacao { get; set; }
    }
}

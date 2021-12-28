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
        public string Endereço { get; set; }
        public string telefone { get; set; }
        public string email { get; set; }   
        public string senha { get; set; }
        [ForeignKey("Avaliacao")]
        public int IdAvaliacao { get; set; }
        public virtual Avaliacao Avaliacao { get; set; }
    }
}

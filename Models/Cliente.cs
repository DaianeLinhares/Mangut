using System.ComponentModel.DataAnnotations;

namespace Mangut.Models
{
    public class Cliente
    {
        [Key]
        public int IdCliente { get; set; }
        [Required]
        public string Nome { get; set; }
        [Required]
        public string telefone { get; set; }
        [Required]
        public string email { get; set; }
        [Required]
        public string senha { get; set; }
        public virtual List<Compra> Compras { get; set; }
        
    }
}

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
        [StringLength(11)]
        public string CPF { get; set; }
        [Required]
        public string Telefone { get; set; }
        [Required]
        public string Email { get; set; }
        [Required]
        public string Senha { get; set; }
        public virtual List<Compra> Compras { get; set; }

    }
}

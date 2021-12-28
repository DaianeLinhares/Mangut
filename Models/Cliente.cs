using System.ComponentModel.DataAnnotations;

namespace Mangut.Models
{
    public class Cliente
    {
        [Key]
        public int IdCliente { get; set; }
        public string Nome { get; set; }
        public string telefone { get; set; }
        public string email { get; set; }
        public string senha { get; set; }
        public virtual List<Compra> Compras { get; set; }
        
    }
}

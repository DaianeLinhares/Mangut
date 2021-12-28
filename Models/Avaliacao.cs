using System.ComponentModel.DataAnnotations;

namespace Mangut.Models
{
    public class Avaliacao
    {
        [Key]
        public int IdAvaliacao { get; set; }
        public int Nota { get; set; }
        public string Mensagem { get; set; }
        public virtual List<Vendedor> Vendedor { get; set; }
    }
}

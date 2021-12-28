using System.ComponentModel.DataAnnotations;

namespace Mangut.Models
{
    public class Categoria
    {
        [Key]
        public int IdCategoria { get; set; }
        public string Tipo { get; set; }
        public List<Categoria> Categorias { get; set; }
    }
}


using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace lib_entidades
{
    public class Bebidas
    {
        [Key] public int Id { get; set; }
        public string? Nombre { get; set; }
        public DateTime Tipo { get; set; }
        public int Fecha { get; set; }
        public bool Activo { get; set; }
        [NotMapped] public Tipos? _Tipo { get; set; }
    }
}

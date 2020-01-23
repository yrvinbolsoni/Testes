namespace Testes.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ListVoip")]
    public partial class ListVoip
    {
        [StringLength(200)]
        public string Ramal { get; set; }

        [StringLength(200)]
        public string Empresa { get; set; }

        [StringLength(200)]
        public string Funcionario { get; set; }

        [StringLength(200)]
        public string Senha { get; set; }

        [StringLength(200)]
        public string Ip { get; set; }

        public int id { get; set; }

        [StringLength(50)]
        public string Status { get; set; }
    }
}

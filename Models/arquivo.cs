namespace Testes.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("arquivo")]
    public partial class arquivo
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [Required]
        public byte[] data { get; set; }

        [Required]
        [StringLength(50)]
        public string fileName { get; set; }

        [Required]
        [MaxLength(50)]
        public byte[] fileExtension { get; set; }
    }
}

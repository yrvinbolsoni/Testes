namespace Testes.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhoneBook")]
    public partial class PhoneBook
    {
        public int PhoneBookID { get; set; }

        [StringLength(50)]
        public string FirstName { get; set; }

        [StringLength(50)]
        public string LastName { get; set; }

        [StringLength(50)]
        public string Contact { get; set; }

        [StringLength(50)]
        public string Email { get; set; }
    }
}

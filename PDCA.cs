using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDCA.Data
{
    class PDCA
    {
        public Int64 PDCAID { get; set; }
        public DateTime DateEntered { get; set; }
        public DateTime LastUpdate { get; set; }
        public string EnteredBy { get; set; }
        public string UpdatedBy { get; set; }
        public string Department { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }

    }
}

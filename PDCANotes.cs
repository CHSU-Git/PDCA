using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDCA.Data
{
    class PDCANotes
    {
        public Int64 PDCAID { get; set; }
        public Int64 NoteID { get; set; }
        public Int64 PDCAFieldID { get; set; }
        public string FieldName { get; set; }
        public string FieldDescription { get; set; }
        public DateTime DateEntered { get; set; }
        public DateTime LastUpdate { get; set; }
        public string EnteredBy { get; set; }
        public string UpdatedBy { get; set; }
        public string Department { get; set; }
        public string Title { get; set; }
        public string PDCADescription { get; set; }
        public string Note { get; set; }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDCA.Data
{
    class PDCAFields
    {
        public Int64 PDCAFieldID { get; set; }
        public string FieldName { get; set; }
        public string Description { get; set; }
        public string ToolTip { get; set; }
        public double DisplayOrder { get; set; }

    }
}

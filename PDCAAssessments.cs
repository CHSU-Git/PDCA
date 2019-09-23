using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDCA.Data
{
    class PDCAAssessments
    {
        public Int64 PDCAAssessmentID { get; set; }
        public Int64 PDCAID { get; set; }
        public Int64 AssessmentID { get; set; }

        public string AssessmentName { get; set; }

    }
}

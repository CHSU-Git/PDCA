using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using System.Data.SqlClient;
using System.Diagnostics;


namespace PDCA.Data
{
    class PDCAAccreditationStandardsManager
    {
        public static List<PDCAAccreditationStandards> GetPDCAAccreditationStandardss(string connectionString)
        {

            connectionString = "Data Source=B4FFMH2;Initial Catalog=PDCA;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            const string GetApplicantsQuery = "PDCAAccreditationStandards_Select ";
            var StandardsList = new List<PDCAAccreditationStandards>();
            try
            {

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    if (conn.State == System.Data.ConnectionState.Open)
                    {
                        using (SqlCommand cmd = conn.CreateCommand())
                        {
                            cmd.CommandText = GetApplicantsQuery;
                            using (SqlDataReader reader = cmd.ExecuteReader())
                            {
                                while (reader.Read())
                                {
                                    var PDCAAccreditationStandard = new PDCAAccreditationStandards();
                                    PDCAAccreditationStandard.PDCAAccreditationStandardID = reader.GetInt64(0);
                                    PDCAAccreditationStandard.PDCAID = reader.GetInt64(1);
                                    PDCAAccreditationStandard.AccreditationStandardID = reader.GetInt64(2);
                                    StandardsList.Add(PDCAAccreditationStandard);
                                }
                            }
                        }
                    }
                }
                return StandardsList;
            }
            catch (Exception eSql)
            {
                Debug.WriteLine("Exception: " + eSql.Message);
            }
            return null;
        }
    }
}

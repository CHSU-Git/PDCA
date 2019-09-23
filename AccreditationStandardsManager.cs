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
    class AccreditationStandardsManager
    {
        public static List<AccreditationStandards> GetAccreditationStandards(string connectionString)
        {

            connectionString = "Data Source=B4FFMH2;Initial Catalog=PDCA;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            const string GetApplicantsQuery = "AccreditationStandard_Select ";
            var Standards = new List<AccreditationStandards>();
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
                                    var Standard = new AccreditationStandards();
                                    Standard.AccreditationStandardID = reader.GetInt64(0);
                                    Standard.AccreditationOrganizationID = reader.GetInt64(1);
                                    Standard.Standard = reader.GetString(2);
                                    Standards.Add(Standard);
                                }
                            }
                        }
                    }
                }
                return Standards;
            }
            catch (Exception eSql)
            {
                Debug.WriteLine("Exception: " + eSql.Message);
            }
            return null;
        }
    }
}

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
    class PDCAAssessmentsManager
    {
        public static List<AccreditationOrganization> GetAccreditationOrganizations(string connectionString)
        {

            connectionString = "Data Source=B4FFMH2;Initial Catalog=PDCA;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            const string GetApplicantsQuery = "AccreditationOrganization_Select ";
            var PDAssessnents = new List<AccreditationOrganization>();
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
                                    var PDAssessnent = new AccreditationOrganization();
                                    PDAssessnent.AccreditationOrganizationID = reader.GetInt64(0);
                                    PDAssessnent.Name = reader.GetString(1);
                                    PDAssessnent.Description = reader.GetString(2);
                                    PDAssessnents.Add(PDAssessnent);
                                }
                            }
                        }
                    }
                }
                return PDAssessnents;
            }
            catch (Exception eSql)
            {
                Debug.WriteLine("Exception: " + eSql.Message);
            }
            return null;
        }
    }
}

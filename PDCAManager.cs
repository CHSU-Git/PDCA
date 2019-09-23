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
    class PDCAManager
    {
        public static List<PDCA> GetPDCAs(string connectionString)
        {

            connectionString = "Data Source=B4FFMH2;Initial Catalog=PDCA;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            const string GetApplicantsQuery = "PDCA_Select ";
            var pdcas = new List<PDCA>();
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
                                    var pdca = new PDCA();
                                    pdca.PDCAID = reader.GetInt64(0);
                                    pdca.DateEntered = reader.GetDateTime(1);
                                    pdca.LastUpdate = reader.GetDateTime(2);
                                    pdca.EnteredBy = reader.GetString(3);
                                    pdca.UpdatedBy = reader.GetString(4);
                                    pdca.Department = reader.GetString(5);
                                    pdca.Title = reader.GetString(6);
                                    pdca.Description = reader.GetString(7);
                                    
                                    pdcas.Add(pdca);
                                }
                            }
                        }
                    }
                }
                return pdcas;
            }
            catch (Exception eSql)
            {
                Debug.WriteLine("Exception: " + eSql.Message);
            }
            return null;
        }
    }
}

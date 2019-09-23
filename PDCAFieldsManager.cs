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
    class PDCAFieldsManager
    {
        public static List<PDCAFields> GetPDCAFields(string connectionString)
        {

            connectionString = "Data Source=B4FFMH2;Initial Catalog=PDCA;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            const string GetApplicantsQuery = "PDCAField_Select ";
            var PFields = new List<PDCAFields>();
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
                                    var PField = new PDCAFields();
                                    PField.PDCAFieldID = reader.GetInt64(0);
                                    PField.FieldName = reader.GetString(1);
                                    PField.Description = reader.GetString(2);
                                    PField.ToolTip = reader.GetString(3);
                                    PField.DisplayOrder = reader.GetDouble(4);
                                    PFields.Add(PField);
                                }
                            }
                        }
                    }
                }
                return PFields;
            }
            catch (Exception eSql)
            {
                Debug.WriteLine("Exception: " + eSql.Message);
            }
            return null;
        }
    }
}

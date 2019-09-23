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
    class EntityManager
    {
        public static List<Entity> GetEntitys(string connectionString)
        {

            connectionString = "Data Source=B4FFMH2;Initial Catalog=PDCA;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            const string GetApplicantsQuery = "Entity_Select ";
            var Entities = new List<Entity>();
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
                                    var entity = new Entity();
                                    entity.EntityID = reader.GetInt64(0);
                                    entity.Name = reader.GetString(1);
                                    entity.Description = reader.GetString(2);
                                    Entities.Add(entity);
                                }
                            }
                        }
                    }
                }
                return Entities;
            }
            catch (Exception eSql)
            {
                Debug.WriteLine("Exception: " + eSql.Message);
            }
            return null;
        }
    }
}

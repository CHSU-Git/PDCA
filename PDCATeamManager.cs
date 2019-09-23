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
    class PDCATeamManager
    {
        public static List<PDCATeam> GetAccreditationOrganizations(string connectionString)
        {

            connectionString = "Data Source=B4FFMH2;Initial Catalog=PDCA;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            const string GetApplicantsQuery = "PDCATeam_Select ";
            var TeamMembers = new List<PDCATeam>();
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
                                    var TeamMember = new PDCATeam();
                                    TeamMember.PDCATeamID = reader.GetInt64(0);
                                    TeamMember.PDCAID = reader.GetInt64(1);
                                    TeamMember.UserID = reader.GetString(2);                                    
                                    TeamMembers.Add(TeamMember);
                                }
                            }
                        }
                    }
                }
                return TeamMembers;
            }
            catch (Exception eSql)
            {
                Debug.WriteLine("Exception: " + eSql.Message);
            }
            return null;
        }
    }
}

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
    class PDCANotesManager
    {
        public static List<PDCANotes> GetNotes(string connectionString)
        {

            connectionString = "Data Source=B4FFMH2;Initial Catalog=PDCA;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            const string GetApplicantsQuery = "Note_Select ";
            var PNotes = new List<PDCANotes>();
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
                                    var pnote = new PDCANotes();
                                    pnote.NoteID = reader.GetInt64(0);
                                    pnote.PDCAID = reader.GetInt64(1);
                                    pnote.PDCAFieldID = reader.GetInt64(2);
                                    pnote.FieldName = reader.GetString(3);
                                    pnote.FieldDescription = reader.GetString(4);
                                    pnote.DateEntered = reader.GetDateTime(5);
                                    pnote.LastUpdate = reader.GetDateTime(6);
                                    pnote.EnteredBy = reader.GetString(7);
                                    pnote.UpdatedBy = reader.GetString(8);
                                    pnote.Title = reader.GetString(9);
                                    pnote.PDCADescription = reader.GetString(10);
                                    pnote.Note = reader.GetString(11);
                                    PNotes.Add(pnote);
                                }
                            }
                        }
                    }
                }
                return PNotes;
            }
            catch (Exception eSql)
            {
                Debug.WriteLine("Exception: " + eSql.Message);
            }
            return null;
        }
    }
}

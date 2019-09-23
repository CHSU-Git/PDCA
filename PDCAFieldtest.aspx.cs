using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI.WebControls;

namespace PDCA_ASPX
{
    public partial class PDCAFieldtest : System.Web.UI.Page
    {
        private SqlConnection connection = new SqlConnection();
        private string strConnectionstring = "Data Source = 4QLJWK2; Initial Catalog = PDCA; Integrated Security = True";
        private string userName = System.Security.Principal.WindowsIdentity.GetCurrent().Name;
        private string WCUSCAccreditation = "";
        private string COCAAccreditation = "";
        private string ACPEAccreditation = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            OpenConnection();
            if (IsPostBack)
            {
            }
            else
            {
                if (!String.IsNullOrEmpty(Request.QueryString["PDCAID"]))
                {
                    this.txtPDCAID.Text = Request.QueryString["PDCAID"];
                }
                else
                {
                    this.txtPDCAID.Text = "0";
                    this.ddSchoolYear.SelectedValue = DateTime.Now.Year.ToString();
                }
                if (this.txtPDCAID.Text != "0")
                {
                    LoadData();
                    this.ddSchoolYear.Enabled = false;
                }
                LoadNoteFieldDescriptions();
            }
        }

        private void OpenConnection()
        {
            if (connection.State != ConnectionState.Open)
            {
                connection.Close();
                connection.ConnectionString = strConnectionstring;
                connection.Open();
            }
        }
        private void LoadData()
        {
            OpenConnection();
            string sQuery = "PDCA_select ";

            sQuery += "@pdcaid =" + this.txtPDCAID.Text + " ";
            
            using (connection)
            {
                SqlCommand command = new SqlCommand(sQuery, connection);
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        this.txtPDCAID.Text = reader.GetInt32(0).ToString();
                        this.lblPCDAID.Text = reader.GetInt32(0).ToString();
                        this.lblDate.Text = reader.GetDateTime(1).ToString();

                        this.txtOriginatorName.Text = reader.GetString(3);
                        this.txtDepartment.Text = reader.GetString(5);
                        this.txtTitle.Text = reader.GetString(6);
                        this.txtDescription.Text = reader.GetString(7);

                        this.ddSchoolYear.SelectedValue = reader.GetInt32(8).ToString();
                        this.lblSchoolYearID.Text = reader.GetInt32(9).ToString();
                        this.lblStatus.Text = reader.GetString(10);

                        //-- submissionteam
                        this.ckSurveyResults.Checked = Convert.ToBoolean(reader.GetString(12));
                        this.ckFocusGroupResults.Checked = Convert.ToBoolean(reader.GetString(13));
                        this.ckFormative.Checked = Convert.ToBoolean(reader.GetString(14));
                        this.ckProgramOutcome.Checked = Convert.ToBoolean(reader.GetString(15));
                        this.ckInputData.Checked = Convert.ToBoolean(reader.GetString(16));
                        this.ckExternalReview.Checked = Convert.ToBoolean(reader.GetString(17));
                        this.ckTests.Checked = Convert.ToBoolean(reader.GetString(18));
                        this.ckReview.Checked = Convert.ToBoolean(reader.GetString(19));
                        this.ckCLO.Checked = Convert.ToBoolean(reader.GetString(20));
                        this.ckPlan.Checked = Convert.ToBoolean(reader.GetString(21));
                        this.ckPeerReview.Checked = Convert.ToBoolean(reader.GetString(22));
                        this.ckOther.Checked = Convert.ToBoolean(reader.GetString(23));
                        if (reader.GetString(24).Contains("CHSU"))
                        {
                            this.ckCHSU.Checked = true;
                        }
                        if (reader.GetString(24).Contains("COP"))
                        {
                            this.ckCOP.Checked = true;
                        }
                        if (reader.GetString(24).Contains("COM"))
                        {
                            this.ckCOM.Checked = true;
                        }
                        if (reader.GetString(24).Contains("Unsure"))
                        {
                            this.ckUnsure.Checked = true;
                        }
                        WCUSCAccreditation = reader.GetString(25);
                        COCAAccreditation = reader.GetString(26);
                        ACPEAccreditation = reader.GetString(27);
                        if (lblStatus.Text == "Submitted")
                        {
                            btnSaveContinue.Enabled = false;
                            btnSaveSubmit.Text = "Save as Complete";
                        }
                        if (lblStatus.Text == "Complete")
                        {
                            LockAllControls();
                        }
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
                LoadNoteFieldDescriptions();
                LoadNoteFields();
            }
        }

        private void LockAllControls()
        {
            this.txtPDCAID.Enabled = false;
            this.lblPCDAID.Enabled = false;
            this.lblDate.Enabled = false;

            this.txtOriginatorName.Enabled = false;
            this.txtDepartment.Enabled = false;
            this.txtTitle.Enabled = false;
            this.txtDescription.Enabled = false;

            this.ddSchoolYear.Enabled = false;
            this.lblSchoolYearID.Enabled = false;
            this.lblStatus.Enabled = false;
            //-- submissionteam
            this.ckSurveyResults.Enabled = false;
            this.ckFocusGroupResults.Enabled = false;
            this.ckFormative.Enabled = false;
            this.ckProgramOutcome.Enabled = false;
            this.ckInputData.Enabled = false;
            this.ckExternalReview.Enabled = false;
            this.ckTests.Enabled = false;
            this.ckReview.Enabled = false;
            this.ckCLO.Enabled = false;
            this.ckPlan.Enabled = false;
            this.ckPeerReview.Enabled = false;
            this.ckOther.Enabled = false;
            this.ckCHSU.Enabled = false;
            this.ckCOP.Enabled = false;
            this.ckCOM.Enabled = false;
        }

        private void SetAccreditationCheckboxes()
        {
            string[] WCUSCAccreditationList = WCUSCAccreditation.Split('|');
            string[] COCAAccreditationList = COCAAccreditation.Split('|');
            foreach (ListItem item in ckblWCUSC1.Items)
            {
                if (WCUSCAccreditationList.Contains(item.Value))
                {
                    item.Selected = true;
                }
            }
            foreach (ListItem item in ckblWCUSC2.Items)
            {
                if (WCUSCAccreditationList.Contains(item.Value))
                {
                    item.Selected = true;
                }
            }
            foreach (ListItem item in ckblWCUSC3.Items)
            {
                if (WCUSCAccreditationList.Contains(item.Value))
                {
                    item.Selected = true;
                }
            }
            foreach (ListItem item in ckblWCUSC4.Items)
            {
                if (WCUSCAccreditationList.Contains(item.Value))
                {
                    item.Selected = true;
                }
            }

            foreach (ListItem item in ckblCOCA1.Items)
            {
                if (COCAAccreditationList.Contains(item.Value))
                {
                    item.Selected = true;
                }
            }
            foreach (ListItem item in ckblCOCA2.Items)
            {
                if (COCAAccreditationList.Contains(item.Value))
                {
                    item.Selected = true;
                }
            }
            foreach (ListItem item in ckblCOCA3.Items)
            {
                if (COCAAccreditationList.Contains(item.Value))
                {
                    item.Selected = true;
                }
            }

            foreach (ListItem item in ckblCOCA4.Items)
            {
                if (COCAAccreditationList.Contains(item.Value))
                {
                    item.Selected = true;
                }
            }

            foreach (ListItem item in ckblCOCA5.Items)
            {
                if (COCAAccreditationList.Contains(item.Value))
                {
                    item.Selected = true;
                }
            }
        }

        private void LoadNoteFieldDescriptions()
        {
            OpenConnection();
            SqlCommand commanda = new SqlCommand("", connection);
            for (int i = 1; i <= 10; i++)
            {
                string sQuery = "PDCAFields_select @pdcafieldid= " + i.ToString();
                commanda.CommandText = sQuery;

                SqlDataReader readera = commanda.ExecuteReader();
                if (readera.HasRows)
                {
                    while (readera.Read())
                    {
                        if (i == 1)
                        {
                            this.litSubjectofAssessmentDescription.Text = readera.GetString(2);
                        }
                        if (i == 2)
                        {
                            this.litAssessmentNameDescription.Text = readera.GetString(2);
                        }
                        if (i == 3)
                        {
                            this.litStrengthsDescription.Text = readera.GetString(2);
                        }
                        if (i == 4)
                        {
                            this.litInsightsDescription.Text = readera.GetString(2);
                        }
                        if (i == 5)
                        {
                            this.litAreasForImprovementDescription.Text = readera.GetString(2);
                        }
                        if (i == 6)
                        {
                            this.litPlanDescription.Text = readera.GetString(2);
                        }
                        if (i == 7)
                        {
                            this.litDoDescription.Text = readera.GetString(2);
                        }
                        if (i == 8)
                        {
                            this.litCheckDescription.Text = readera.GetString(2);
                        }
                        if (i == 9)
                        {
                            this.litAdditionalCommentsDescription.Text = readera.GetString(2);
                        }
                        if (i == 10)
                        {
                            this.litReportDescription.Text = readera.GetString(2);
                        }
                    }
                }
                readera.Close();
            }
            //connection.Close();
        }

        public struct vPage
        {
            public string controlname;
            public string fieldtitle;
            public string errormessage;
        }

        public int ValidatePage()
        {
            string sreturn = "";

            List<vPage> errors = new List<vPage>();
            lblErrorAdditionalComments.Text = "";
            lblErrorAreasForImprovement.Text = "";
            lblErrorAssessments.Text = "";
            lblErrorCheck.Text = "";
            lblErrorDo.Text = "";
            lblErrorHeader.Text = "";
            lblErrorInsights.Text = "";
            lblErrorPlan.Text = "";
            lblErrorReport.Text = "";
            lblErrorStrengths.Text = "";
            lblErrorSubjectofAssessment.Text = "";
            lblErrorSurveyResults.Text = "";

            if (this.ckAdditionalCommentsNotApplicable.Checked == true && this.txtAdditionalComments.Text.Trim() != "")
            {
                errors.Add(new vPage() { controlname = "txtAdditionalComments", fieldtitle = "Additional Comments", errormessage = "Additional Comments must be blank if N/A is checked." });
                this.lblErrorAdditionalComments.Text = "Additional Comments must be blank if N/A is checked.";
            }
            if (this.ckAreasForImprovementNotApplicable.Checked == true && this.txtAreasForImprovement.Text.Trim() != "")
            {
                errors.Add(new vPage() { controlname = "txtAreasforImprovement", fieldtitle = "Areas for Improvement", errormessage = "Areas for Improvement must be blank if N/A is checked." });
                this.lblErrorAreasForImprovement.Text = "Areas for Improvement must be blank if N/A is checked.";
            }
            if (this.ckAssessmentsNotApplicable.Checked == true && this.txtAssessmentName.Text.Trim() != "")
            {
                errors.Add(new vPage() { controlname = "txtAssessmentName", fieldtitle = "AssessmentName", errormessage = "Assessment Name must be blank if N/A is checked." });
                this.lblErrorAssessments.Text = "Assessment Name must be blank if N/A is checked.";
            }
            if (this.ckCheckNotApplicable.Checked == true && this.txtCheck.Text.Trim() != "")
            {
                errors.Add(new vPage() { controlname = "txtCheck", fieldtitle = "Check", errormessage = "Check  must be blank if N/A is checked." });
                lblErrorCheck.Text = "Check  must be blank if N/A is checked.";
            }
            if (this.ckDoNotApplicable.Checked == true && this.txtDo.Text.Trim() != "")
            {
                errors.Add(new vPage() { controlname = "txtDo", fieldtitle = "Do", errormessage = "Do must be blank if N/A is checked." });
                lblErrorDo.Text = "Do must be blank if N/A is checked.";
            }
            if (this.ckInsightsNotApplicable.Checked == true && this.txtInsights.Text.Trim() != "")
            {
                errors.Add(new vPage() { controlname = "txtInsights", fieldtitle = "Insights", errormessage = "Insights must be blank if N/A is checked." });
                lblErrorInsights.Text = "Insights must be blank if N/A is checked.";
            }
            if (this.ckPlanNotApplicable.Checked == true && this.txtPlan.Text.Trim() != "")
            {
                errors.Add(new vPage() { controlname = "txtPlan", fieldtitle = "Plan", errormessage = "Plan must be blank if N/A is checked." });
                lblErrorPlan.Text = "Plan must be blank if N/A is checked.";
            }
            if (this.ckReportNotApplicable.Checked == true && this.txtReport.Text.Trim() != "")
            {
                errors.Add(new vPage() { controlname = "txtReport", fieldtitle = "Report", errormessage = "Report must be blank if N/A is checked." });
                lblErrorReport.Text = "Report must be blank if N/A is checked.";
            }
            if (this.ckStrengthsNotApplicable.Checked == true && this.txtStrengths.Text.Trim() != "")
            {
                errors.Add(new vPage() { controlname = "txtStrengths", fieldtitle = "Strengths", errormessage = "Strengths must be blank if N/A is checked." });
            }

            if (this.ckSubjectNotApplicable.Checked == true && this.txtSubjectOfAssessmentExamples.Text.Trim() != "")
            {
                errors.Add(new vPage() { controlname = "txtSubjectOfAssessmentExamples", fieldtitle = "Subject Of Assessment Examples", errormessage = "Subject of Assessment Examples must be blank if N/A is checked." });
                lblErrorSubjectofAssessment.Text = "Subject of Assessment Examples must be blank if N/A is checked.";
            }

            if (this.ckAdditionalCommentsNotApplicable.Checked == false && this.txtAdditionalComments.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtAdditionalComments", fieldtitle = "Additional Comments", errormessage = "Additional Comments must be entered or N/A must be checked." });
                lblErrorAdditionalComments.Text = "Additional Comments must be entered or N/A must be checked.";
            }
            if (this.ckAreasForImprovementNotApplicable.Checked == false && this.txtAreasForImprovement.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtAreasforImprovement", fieldtitle = "Areas for Improvement", errormessage = "Areas for Improvement must be entered or N/A must be checked." });
                lblErrorAreasForImprovement.Text = "Areas for Improvement must be entered or N/A must be checked.";
            }
            if (this.ckAssessmentsNotApplicable.Checked == false && this.txtAssessmentName.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtAssessmentName", fieldtitle = "AssessmentName", errormessage = "Assessment Name must be entered or N/A must be checked." });
                lblErrorAssessments.Text = "Assessment Name must be entered or N/A must be checked.";
            }
            if (this.ckCheckNotApplicable.Checked == false && this.txtCheck.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtCheck", fieldtitle = "Check", errormessage = "Check must be entered or N/A must be checked." });
                lblErrorCheck.Text = "Check must be entered or N/A must be checked.";
            }
            if (this.ckDoNotApplicable.Checked == false && this.txtDo.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtDo", fieldtitle = "Do", errormessage = "Do must be entered or N/A must be checked." });
                lblErrorDo.Text = "Do must be entered or N/A must be checked.";
            }
            if (this.ckInsightsNotApplicable.Checked == false && this.txtInsights.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtInsights", fieldtitle = "Insights", errormessage = "Insights must be entered or N/A must be checked." });
                lblErrorInsights.Text = "Insights must be entered or N/A must be checked.";
            }
            if (this.ckPlanNotApplicable.Checked == false && this.txtPlan.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtPlan", fieldtitle = "Plan", errormessage = "Plan must be entered or N/A must be checked." });
                lblErrorPlan.Text = "Plan must be entered or N/A must be checked.";
            }
            if (this.ckReportNotApplicable.Checked == false && this.txtReport.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtReport", fieldtitle = "Report", errormessage = "Report Must be Submitted must be entered or N/A must be checked." });
                lblErrorReport.Text = "Report Must be Submitted must be entered or N/A must be checked.";
            }
            if (this.ckStrengthsNotApplicable.Checked == false && this.txtStrengths.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtStrengths", fieldtitle = "Strengths", errormessage = "Strengths must be entered or N/A must be checked." });
                lblErrorStrengths.Text = "Strengths must be entered or N/A must be checked.";
            }

            if (this.ckSubjectNotApplicable.Checked == false && this.txtSubjectOfAssessmentExamples.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtSubjectOfAssessmentExamples", fieldtitle = "Subject Of Assessment Examples", errormessage = "Subject of Assessment Examples must be entered or N/A must be checked." });
                lblErrorSubjectofAssessment.Text = "Subject of Assessment Examples must be entered or N/A must be checked.";
            }

            if (this.txtTitle.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtTitle", fieldtitle = "Title", errormessage = "Title must be entered." });
                lblErrorHeader.Text = "Title must be entered.";
            }
            if (this.txtDescription.Text.Trim() == "")
            {
                errors.Add(new vPage() { controlname = "txtDescription", fieldtitle = "Description", errormessage = "Description must be entered." });
                lblErrorHeader.Text = "Description must be entered.";
            }
            //if ((this.ckCHSU.Checked == false) && this.ckCOM.Checked == false && ckCOP.Checked = false && ckUnsure.Checked == false)
            if ((this.ckCHSU.Checked == false) && (this.ckCOM.Checked == false) && (ckCOP.Checked = false) && (ckUnsure.Checked == false))
            {
                errors.Add(new vPage() { controlname = "Entity", fieldtitle = "Entity", errormessage = "Entity must be selected." });
                lblErrorHeader.Text = "Entity must be selected.";
            }

            return errors.Count;
        }

        private void LoadNoteFields()
        {
            this.txtSubjectOfAssessmentExamples.Text = GetNote(1);
            this.txtAssessmentName.Text = GetNote(2);
            this.txtStrengths.Text = GetNote(3);
            this.txtInsights.Text = GetNote(4);
            this.txtAreasForImprovement.Text = GetNote(5);
            this.txtPlan.Text = GetNote(6);
            this.txtDo.Text = GetNote(7);
            this.txtCheck.Text = GetNote(8);
            this.txtAdditionalComments.Text = GetNote(9);
            this.txtReport.Text = GetNote(10);
        }

        private string GetNote(Int32 fieldID)
        {
            OpenConnection();
            string sReturn = "";
            SqlCommand commanda = new SqlCommand("", connection);
            string sQuery = "PDCANotes_select @pdcaid=" + txtPDCAID.Text;
            string sQuery2 = sQuery + " ,@pdcafieldid= " + fieldID.ToString();
            commanda.CommandText = sQuery2;
            SqlDataReader readera = commanda.ExecuteReader();
            if (readera.HasRows)
            {
                while (readera.Read())
                {
                    sReturn = readera.GetString(12);
                }
            }
            readera.Close();
            return sReturn;
        }

        private void SaveData(string strStatus)
        {
            if (ValidatePage() == 0)
            {
                OpenConnection();
                string SQLQuery = "";
                string SQLQueryNotes = "";
                string SQLQueryNotesFull = "";
                //connection.Open();
                if (this.txtPDCAID.Text == "0")
                {
                    SQLQuery = "PDCA_Insert ";
                    SQLQueryNotes = "PDCANotes_insert ";
                }
                else
                {
                    SQLQuery = "PDCA_Update @pdcaid =" + this.txtPDCAID.Text + ",";
                    SQLQuery += " ,@status='" + strStatus + "' ";
                    SQLQueryNotes = "PDCANotes_update ";
                }

                SQLQuery += " @username= '" + this.txtOriginatorName.Text + "'";
                SQLQuery += ", @Department= '" + this.txtDepartment.Text.Replace("'", "''") + "'";
                SQLQuery += ", @Title= '" + this.txtTitle.Text.Replace("'", "''") + "'";
                string Ent = "";
                if (this.ckCHSU.Checked)
                {
                    Ent += "|CHSU";
                }
                if (this.ckCOM.Checked)
                {
                    Ent += "|COM";
                }
                if (this.ckCOP.Checked)
                {
                    Ent += "|COP";
                }
                if (this.ckUnsure.Checked)
                {
                    Ent += "|Unsure";
                }
                SQLQuery += ", @entity= '" + Ent + "'";
                SQLQuery += ", @Description= '" + this.txtDescription.Text.Replace("'", "''") + "'";

                SQLQuery += ", @ckCHSU= '" + this.ckCHSU.Checked + "'";
                SQLQuery += ", @ckCOM= '" + this.ckCOM.Checked.ToString() + "'";
                SQLQuery += ", @ckCOP= '" + this.ckCOP.Checked.ToString() + "'";
                SQLQuery += ", @ckUnsure= '" + this.ckUnsure.Checked.ToString() + "'";

                SQLQuery += ", @ckExternalReview= '" + this.ckReview.Checked.ToString() + "'";
                SQLQuery += ", @ckFocusGroupResults= '" + this.ckFocusGroupResults.Checked.ToString() + "'";

                SQLQuery += ", @ckFormative= '" + this.ckFormative.Checked.ToString() + "'";
                SQLQuery += ", @ckInputData= '" + this.ckInputData.Checked.ToString() + "'";

                SQLQuery += ", @ckOther= '" + this.ckOther.Checked.ToString() + "'";
                SQLQuery += ", @ckPeerReview= '" + this.ckPeerReview.Checked.ToString() + "'";

                SQLQuery += ", @ckPlan= '" + this.ckPlan.Checked.ToString() + "'";
                SQLQuery += ", @ckProgramOutcome= '" + this.ckProgramOutcome.Checked.ToString() + "'";

                SQLQuery += ", @ckReview= '" + this.ckReview.Checked.ToString() + "'";
                SQLQuery += ", @ckSurveyResults= '" + this.ckSurveyResults.Checked.ToString() + "'";
                SQLQuery += ", @ckCLO= '" + this.ckCLO.Checked.ToString() + "'";
                SQLQuery += ", @ckTests= '" + this.ckTests.Checked.ToString() + "'";
                WCUSCAccreditation = "";
                COCAAccreditation = "";
                foreach (ListItem item in ckblWCUSC1.Items)
                {
                    if (item.Selected == true)
                    {
                        WCUSCAccreditation += item.Value + "|";
                    }
                }
                foreach (ListItem item in ckblWCUSC2.Items)
                {
                    if (item.Selected == true)
                    {
                        WCUSCAccreditation += item.Value + "|";
                    }
                }
                foreach (ListItem item in ckblWCUSC3.Items)
                {
                    if (item.Selected == true)
                    {
                        WCUSCAccreditation += item.Value + "|";
                    }
                }
                foreach (ListItem item in ckblWCUSC4.Items)
                {
                    if (item.Selected == true)
                    {
                        WCUSCAccreditation += item.Value + "|";
                    }
                }

                foreach (ListItem item in ckblCOCA1.Items)
                {
                    if (item.Selected == true)
                    {
                        COCAAccreditation += item.Value + "|";
                    }
                }
                foreach (ListItem item in ckblCOCA2.Items)
                {
                    if (item.Selected == true)
                    {
                        COCAAccreditation += item.Value + "|";
                    }
                }
                foreach (ListItem item in ckblCOCA3.Items)
                {
                    if (item.Selected == true)
                    {
                        COCAAccreditation += item.Value + "|";
                    }
                }
                foreach (ListItem item in ckblCOCA4.Items)
                {
                    if (item.Selected == true)
                    {
                        COCAAccreditation += item.Value + "|";
                    }
                }
                foreach (ListItem item in ckblCOCA5.Items)
                {
                    if (item.Selected == true)
                    {
                        COCAAccreditation += item.Value + "|";
                    }
                }

                SqlCommand commanda = new SqlCommand("", connection);
                commanda.CommandText = SQLQuery;
                SqlDataReader readera = commanda.ExecuteReader();
                if (readera.HasRows)
                {
                    while (readera.Read())
                    {
                        this.txtPDCAID.Text = readera.GetInt32(0).ToString();
                    }
                }
                readera.Close();

                SaveNotes(1, SQLQueryNotes, this.txtSubjectOfAssessmentExamples.Text);
                SaveNotes(2, SQLQueryNotes, this.txtAssessmentName.Text);
                SaveNotes(3, SQLQueryNotes, this.txtStrengths.Text);
                SaveNotes(4, SQLQueryNotes, this.txtInsights.Text);
                SaveNotes(5, SQLQueryNotes, this.txtAreasForImprovement.Text);
                SaveNotes(6, SQLQueryNotes, this.txtPlan.Text);
                SaveNotes(7, SQLQueryNotes, this.txtDo.Text);
                SaveNotes(8, SQLQueryNotes, this.txtCheck.Text);
                SaveNotes(9, SQLQueryNotes, this.txtAdditionalComments.Text);
                SaveNotes(10, SQLQueryNotes, this.txtReport.Text);
                //connection.Close();
            }  // end of validate page test
        }

        private void SaveNotes(Int32 fieldID, string Qry, string Notes)
        {
            
            string SQLQueryNotesFull = Qry + " @pdcaid = " + this.txtPDCAID.Text + " ";
            SQLQueryNotesFull += ", @PDCAFieldID=" + fieldID;
            SQLQueryNotesFull += ", @Note='" + Notes.Replace("'", "''") + "'";
            SqlCommand command10 = new SqlCommand(
                 SQLQueryNotesFull,
                 connection);
            command10.ExecuteNonQuery();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SaveData(this.lblStatus.Text);
        }

        protected void btnSaveSubmit_Click(object sender, EventArgs e)
        {
            if (btnSaveSubmit.Text == "Save and Submit")
            {
                SaveData("Submitted");
            }
            if (btnSaveSubmit.Text == "Save as Complete")
            {
                SaveData("Complete");
            }
        }
    }
}
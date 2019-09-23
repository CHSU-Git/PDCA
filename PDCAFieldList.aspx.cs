using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace PDCA_ASPX
{
    public partial class PDCAFieldList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGridData();
            }
        }

        private void LoadGridData()
        {
            string sQuery = "PDCAFields_select ";
            gvPDCAFieldList.DataSource = GetData(sQuery);
            gvPDCAFieldList.DataBind();
        }

        private static DataTable GetData(string query)
        {
            //string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            string strConnString = "Data Source=4QLJWK2;Initial Catalog=PDCA;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = query;
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //string customerId = gvSONISStudents.DataKeys[e.Row.RowIndex].Value.ToString();
                //GridView gvEducation = e.Row.FindControl("gvEducation") as GridView;
                //gvEducation.DataSource = GetData(string.Format("select * from vwSonisEducation where [Source Id]='{0}'", customerId));
                //gvEducation.DataBind();

                //GridView gvMAddress = e.Row.FindControl("gvMailingAddress") as GridView;
                //gvMAddress.DataSource = GetData(string.Format("select * from vwSonisAddressesMailing where [Source Id]='{0}'", customerId));
                //gvMAddress.DataBind();

                //GridView gvPAddress = e.Row.FindControl("gvPermanentAddress") as GridView;
                //gvPAddress.DataSource = GetData(string.Format("select * from vwSonisAddressesPermanent where [Source Id]='{0}'", customerId));
                //gvPAddress.DataBind();

                //GridView gvLAddress = e.Row.FindControl("gvLocalAddress") as GridView;
                //gvLAddress.DataSource = GetData(string.Format("select * from vwSonisAddressesLocal where [Source Id]='{0}'", customerId));
                //gvLAddress.DataBind();
            }
        }

        protected void PDCAFieldGridView_DataBound(object sender, EventArgs e)
        {
            for (int i = 0; i < gvPDCAFieldList.Rows.Count; i++)
            {
                // Ignore values that cannot be cast as integer.
                try
                {
                    if ((int)gvPDCAFieldList.DataKeys[i].Value == (int)ViewState["SelectedKey"])
                        gvPDCAFieldList.SelectedIndex = i;
                }
                catch { }
            }
        }

        protected void PDCAFieldGridView_Sorting(object sender, GridViewSortEventArgs e)
        {
            gvPDCAFieldList.SelectedIndex = -1;
        }

        protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPDCAFieldList.PageIndex = e.NewPageIndex;
            LoadGridData();
        }

        protected void gvPDCAFieldList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (gvPDCAFieldList.SelectedIndex >= 0)
                ViewState["SelectedKey"] = gvPDCAFieldList.SelectedValue;
            else
                ViewState["SelectedKey"] = null;
            foreach (GridViewRow row1 in gvPDCAFieldList.Rows)
            {
                ImageButton IB2 = row1.FindControl("ClickImage") as ImageButton;
                if (row1 == gvPDCAFieldList.SelectedRow)
                {
                    IB2.ImageUrl = "~/images/btn_check_on_selected.png";
                }
                else
                {
                    //IB2.ImageUrl = "~/images/btn_check_off_selected.png";
                    IB2.ImageUrl = "";
                }
            }

            GridViewRow srow = gvPDCAFieldList.SelectedRow;
            //ImageButton IB1 = srow.FindControl("ClickImage") as ImageButton;
            //IB1.ImageUrl = "~/images/btn_check_on_selected.png";
            //string customerId = gvSONISStudents.DataKeys[e.Row.RowIndex].Value.ToString();
            //GridView gvEducation = this.Master.FindControl("MainContent").FindControl("grdEducation") as GridView;
            //gvEducation.DataSource = GetData(string.Format("select * from vwPharmCASCollegesAttendedETL where cas_id='{0}'", ViewState["SelectedKey"]));
            //gvEducation.DataBind();

            //GridView gAddress = this.Master.FindControl("MainContent").FindControl("grdAddress") as GridView;
            //gAddress.DataSource = GetData(string.Format("select * from vwPharmCASApplicantAddresses where cas_id='{0}'", ViewState["SelectedKey"]));
            //gAddress.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            LoadGridData();
        }

        protected void ClickImage_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            //ImageButton IB1 = (ImageButton)sender;
            //IB1.ImageUrl = "~/images/btn_check_on_selected.png";
            //foreach (GridViewRow row1 in gvPDCAFieldList.Rows)
            //{
            //    ImageButton IB2 = row1.FindControl("ClickImage") as ImageButton;
            //    if (row1 == gvPDCAFieldList.SelectedRow)
            //    {
            //        IB2.ImageUrl = "~/images/btn_check_on_selected.png";
            //    }
            //    else
            //    {
            //        IB2.ImageUrl = "~/images/btn_check_off_selected.png";
            //    }
            //}

        }


    }
}
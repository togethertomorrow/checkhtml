using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Npgsql;


using System.Data;
using System.Configuration;

using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text;
using System.Data.SqlClient;
using System.IO;
using NpgsqlTypes;
using System.Collections;

public partial class Default2 : System.Web.UI.Page
{
    Dbmethods obj = new Dbmethods();
    int temp = 0;
    String updatestep = "UPDATE test_case_design_steps set actiontype_id={0}, obj_ref_id={1}, htmlelementtype='{2}', status={3}, valuetext='{4}', modifiedby='ADMIN', modifieddate=curdate(), comments='{5}' WHERE id = {6}";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string testcaseid = Session["tcnameid"].ToString();
        var Browsertype = Request.Form["BrowserType"].ToString();
        var ActionType = Request.Form["ActionType"].ToString();
        var Status = Request.Form["Status"].ToString();
        var Obj_ref_id = Request.Form["obj_ReferenceName_Value1"].ToString();
        var Value = Request.Form["targetValue"].ToString();
        var Comments = Request.Form["comments"].ToString();
        string StepId = Request.QueryString["RequestType"].Trim();
        Boolean ispresent = false;
        DataSet ds = null;
        string duplicatecheck = "", qry = "";
        int currentstepid = 0;
        Value = Value.Replace("'", "''");
        Value = Value.Replace("\r\n", string.Empty);
        Value = Value.Trim().ToString();
        if (testcaseid != "" && StepId != "")
        {
            duplicatecheck = "select * from test_case_design_steps where id={0}";

            qry = string.Format(duplicatecheck, StepId);




            if (obj.getDs(qry, out ds, "dsdt"))
            {


                if (ds.Tables[0].Rows.Count == 0)
                {
                    ispresent = true;
                }
                else
                {
                    ispresent = true;
                }



            }

            if (ispresent == true)
            {
                //Npgsql.NpgsqlConnection con = obj.getSQLConnection();
                //Npgsql.NpgsqlDataReader reader = null;
                //reader = obj.executeQueryResults(qry);
                //while (reader.Read())
                //{
                //    currentstepid = Convert.ToInt32(reader["stepid"]);
                //    currentstepid++;

                //}

                qry = string.Format(updatestep, ActionType, Obj_ref_id, Browsertype, Status, Value, Comments,StepId);
                if (obj.Update(qry, out temp))
                {
                    if (temp == 1)
                    {
                        // lblresult.Text = " " + txttestcase.Text.ToString() + " Testcase created sucessfully";
                        Response.Write("<script LANGUGE='JavaScript'> alert('Step Created sucessfully  ')</script>");
                        Session["ActiveTestcase"] = testcaseid;
                        Response.Redirect("Default2.aspx");
                    }
                    else
                    {
                        Response.Write("<script LANGUGE='JavaScript'> alert('Error in creating new step')</script>");
                    }
                }
            }
            else
            {
                //Response.Write("<script LANGUGE='JavaScript'> alert('" + actionname + " name already exists  ')</script>");
            }
        }
       
      
    }
}
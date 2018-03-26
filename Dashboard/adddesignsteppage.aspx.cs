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
    String insertnewstep = "INSERT INTO test_case_design_steps(stepid, testcaseid, actiontype_id, obj_ref_id, htmlelementtype, status, valuetext, createddate, modifiedby, modifieddate, comments) VALUES ({0}, {1}, {2}, {3}, '{4}', {5}, '{6}', curdate(),'ADMIN', curdate(), '{7}');";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //var checkBoxes = document.getElementsByName("Obj_ref_Checkboxes");
        string testcaseid = Session["tcnameid"].ToString();
        var Browsertype = Request.Form["BrowserType"].ToString();
        var ActionType = Request.Form["ActionType"].ToString();
        var Status = Request.Form["Status"].ToString();
        var Obj_ref_id = Request.Form["obj_ReferenceName_Value1"].ToString();
        var Value = Request.Form["targetValue"].ToString();
        var Comments = Request.Form["comments"].ToString();
        int StepId = Convert.ToInt32( Request.QueryString["NewStep"].Trim());
        Boolean ispresent = true;
        DataSet ds = null;
        string duplicatecheck = "", qry = "";
        int currentstepid = 0;

        if (testcaseid != "" && StepId != null)
        {
            
            duplicatecheck = "select * from test_case_design_steps where id={0}";

            qry = string.Format(duplicatecheck, StepId);




            //if (obj.getDs(qry, out ds, "dsdt"))
            //{


            //    if (ds.Tables[0].Rows.Count == 0)
            //    {
            //        ispresent = true;
            //    }
            //    else
            //    {
            //        ispresent = true;
            //    }



            //}
          
            if (ispresent == true)
            {
                MySql.Data.MySqlClient.MySqlConnection con = obj.getSQLConnection();
                MySql.Data.MySqlClient.MySqlDataReader reader = null;
                
                if (StepId == 0)
                {
                    StepId++;
                    qry = string.Format(insertnewstep, StepId, testcaseid, ActionType, Obj_ref_id, Browsertype, Status, Value, Comments);
                    if (obj.insert(qry, out temp))
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
                    reader = obj.executeQueryResults(qry);
                    while (reader.Read())
                    {
                        currentstepid = Convert.ToInt32(reader["stepid"]);
                        currentstepid++;

                    }
                    
                    qry = " update test_case_design_steps set stepid=(stepid+1) where stepid >= "+currentstepid+" and testcaseid = "+testcaseid+"";
                   
                    if (obj.Update(qry, out temp))
                    {
                        //if (temp != 0)
                        //{
                            qry = string.Format(insertnewstep, currentstepid, testcaseid, ActionType, Obj_ref_id, Browsertype, Status, Value, Comments);
                            if (obj.insert(qry, out temp))
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
                            
                       // }
                        else
                        {
                           
                        }
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
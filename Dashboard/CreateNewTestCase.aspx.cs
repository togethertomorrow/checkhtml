using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Net;


using System.Configuration;
using System.Data.SqlClient;

//using iTextSharp.text;
//using iTextSharp.text.pdf;
//using iTextSharp.text.html.simpleparser;

using System.Web.UI.HtmlControls;

using System.Threading;

public partial class Default2 : System.Web.UI.Page
{
    Dbmethods obj = new Dbmethods();
    String qry="";
    String inserttestcase = "INSERT INTO testcases( id, testcasename, description, status, locale_id, pirority, project_id ) SELECT MAX( id ) + 1,'{0}','{1}',{2},'{3}','{4}','{5}' from TestCases";
    
    int temp = 0;
   
    Boolean ispresent = false;
    String activeprojectname = "",duplicatecheck="";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["activeprojectname"] != null)
        {
            activeprojectname = Session["activeprojectname"].ToString();

        }
        else
        {
            Response.Write("<script LANGUGE='JavaScript'> alert('Please Select the project to work on')</script>");
            Response.Redirect("SelectActiveProject.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String testcasename = Request.Form["Testcasename"].ToString();
        String language = Request.Form["language"].ToString();
        String Des = Request.Form["des"].ToString();
        String Status = Request.Form["Status"].ToString();
        String Priority = Request.Form["Priority"].ToString();

        //lblresult.Text = "";
        DataSet ds = null;
        int check = 0;

        if (testcasename != "" && language !="")
        {
            duplicatecheck = "select * from testcases where testcasename = '{0}'";

            qry = string.Format(duplicatecheck, testcasename);




            if (obj.getDs(qry, out ds, "dsdt"))
            {

              
                if (ds.Tables[0].Rows.Count == 0)
                {
                    ispresent = true;
                }

            }
            qry = string.Format(inserttestcase, testcasename, Des, Status, language, Priority, activeprojectname);
            if (ispresent == true)
            {
                if (obj.insert(qry, out temp))
                {
                    if (temp == 1)
                    {
                       // lblresult.Text = " " + txttestcase.Text.ToString() + " Testcase created sucessfully";
                        Response.Write("<script LANGUGE='JavaScript'> alert('" + testcasename + " Test Case created sucessfully  ')</script>");
                    }
                    else
                    {
                        Response.Write("<script LANGUGE='JavaScript'> alert('Error in creating new testcase')</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script LANGUGE='JavaScript'> alert('" + testcasename + " Test Case name already exists  ')</script>");
            }
        }
        else
        {
            Response.Write("<script LANGUGE='JavaScript'> alert('please select language and test case name')</script>");
        }
     
       
        
    }
}
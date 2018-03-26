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
    String insertobjectrepo = "INSERT INTO obj_repository(projectid, obj_ref_name, target_property, description, status, createddate, modifiedby, modifieddate, isglobalforallproject, ismodifiable) VALUES ({0}, '{1}', '{2}', '{3}', {4}, curdate(), 'Admin', curdate(), {5}, {6});";
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
        String objrefname = Request.Form["objrefname"].ToString();
        String Status = Request.Form["Status"].ToString();
        String selectedproject = Request.Form["activeProject"].ToString();
        String Des = Request.Form["des"].ToString();
        String value = Request.Form["value"].ToString();
        String Modifiable = Request.Form["Modifiable"].ToString();
        String global = Request.Form["global"].ToString();
        int projectid = 0;

        value = value.Replace("'","''");
        value = value.Replace("\r\n", string.Empty);
        value = value.Trim().ToString();
        //lblresult.Text = "";
        DataSet ds = null;
        int check = 0;

        if (objrefname != ""  && value != "")
        {
            duplicatecheck = "select * from obj_repository where obj_ref_name = '{0}' and projectid= {1}";

            qry = string.Format(duplicatecheck, objrefname,selectedproject);




            if (obj.getDs(qry, out ds, "dsdt"))
            {

              
                if (ds.Tables[0].Rows.Count == 0)
                {
                    ispresent = true;
                }

            }
            qry = string.Format(insertobjectrepo, selectedproject, objrefname,value,Des,Status,global,Modifiable);
            if (ispresent == true)
            {
                if (obj.insert(qry, out temp))
                {
                    if (temp == 1)
                    {
                       // lblresult.Text = " " + txttestcase.Text.ToString() + " Testcase created sucessfully";
                        Response.Write("<script LANGUGE='JavaScript'> alert('" + objrefname + " Obj Repository created sucessfully  ')</script>");
                    }
                    else
                    {
                        Response.Write("<script LANGUGE='JavaScript'> alert('Error in creating new object referance name')</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script LANGUGE='JavaScript'> alert('" + objrefname + " name already exists  ')</script>");
            }
        }
        else
        {
            Response.Write("<script LANGUGE='JavaScript'> alert('please select language and test case name')</script>");
        }
     
       
        
    }
}
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
    String inseractiontype = "insert into actiontype (projectid,actiontypename,description,createddate,modifiedby,modifieddate,isglobalforallproject,ismodifiable,isexitaction,status) values ({0},'{1}','{2}',curdate(),'admin',curdate(),{3},{4},{5},{6}) ";
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
        String actionname = Request.Form["actiontype"].ToString();
        String Status = Request.Form["Status"].ToString();
        String selectedproject = Request.Form["activeProject"].ToString();
        String Des = Request.Form["des"].ToString();
        String exitiffail = Request.Form["exit"].ToString();
        String Modifiable = Request.Form["Modifiable"].ToString();
        String global = Request.Form["global"].ToString();
        

        //lblresult.Text = "";
        DataSet ds = null;
        

        if (actionname != "" && selectedproject != "")
        {
            duplicatecheck = "select * from actiontype where actiontypename = '{0}' and projectid= {1}";

            qry = string.Format(duplicatecheck, actionname,selectedproject);




            if (obj.getDs(qry, out ds, "dsdt"))
            {

              
                if (ds.Tables[0].Rows.Count == 0)
                {
                    ispresent = true;
                }

            }
            qry = string.Format(inseractiontype, selectedproject, actionname, Des, global,Modifiable, exitiffail, Status);

            if (ispresent == true)
            {
                if (obj.insert(qry, out temp))
                {
                    if (temp == 1)
                    {
                       // lblresult.Text = " " + txttestcase.Text.ToString() + " Testcase created sucessfully";
                        Response.Write("<script LANGUGE='JavaScript'> alert('" + actionname + " Action type created sucessfully  ')</script>");
                    }
                    else
                    {
                        Response.Write("<script LANGUGE='JavaScript'> alert('Error in creating new action type name')</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script LANGUGE='JavaScript'> alert('" + actionname + " name already exists  ')</script>");
            }
        }
        else
        {
            Response.Write("<script LANGUGE='JavaScript'> alert('please select action and project name')</script>");
        }
     
       
        
    }
}
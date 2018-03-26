using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    Dbmethods obj = new Dbmethods();
    String qry="";
    String insertproject = "insert into project (project_id,discription,status) values('{0}','{1}',{2})";
    int temp = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String ProjectName = Request.Form["Projectname"].ToString();
        String Status = Request.Form["Status"].ToString();
        String Des = Request.Form["des"].ToString();

        //lblresult.Text = "";

        qry = string.Format(insertproject, ProjectName, Des, Status);
        if (obj.insert(qry, out temp))
        {
            if (temp == 1)
            {
                Response.Write("<script LANGUGE='JavaScript'> alert('" + ProjectName + " Project created sucessfully  ')</script>");
                //lblresult.Text = " " + txtprojectname.Text.ToString() + " Project created sucessfully";
            }
            else
            {
                
                Response.Write("<script LANGUGE='JavaScript'> alert('Error in creating new project')</script>");
                //lblresult.Text = "Error in creating new project";
            }
        }
    }
}
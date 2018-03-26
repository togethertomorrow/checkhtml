using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Globalization;
using System.Web.Configuration;
using System.Configuration;
using System.Data.SqlClient;
public partial class NavigateToPage : System.Web.UI.Page
{
    String Requesttype = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
        
        
    }
    public void processrequest()
    {
        Requesttype = Request.QueryString["RequestType"].Trim().ToString();
        String projectname="";
        if (Requesttype == "CreateProject")
        {
            projectname = HttpContext.Current.Request.Form["test"].ToString();
            

        }
        else if (Requesttype == "designsteps")
        {
            projectname = HttpContext.Current.Request.Form["TotalCountHdn"].ToString();
            

        }
        
    }
}
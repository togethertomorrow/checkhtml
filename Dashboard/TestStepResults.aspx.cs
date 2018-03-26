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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //var checkBoxes = document.getElementsByName("Obj_ref_Checkboxes");
        var checkBoxes = Request.Form["Obj_ref_Checkboxes"].ToString();
       
        int  totalcount=0;
        if (checkBoxes != "")
        {
            totalcount = checkBoxes.Length;
        }
        for (int i = 0; i <= 4 ; i++)
        {
            
            
        }
      
    }
}
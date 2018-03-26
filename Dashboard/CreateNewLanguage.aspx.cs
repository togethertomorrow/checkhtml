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
    String insertlanguage = "insert into locale (country,status,country_code) values ('{0}','1','{2}')";
    int temp = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String CountryCode = Request.Form["Countrycode"].ToString();
        String CountryName = Request.Form["Countryname"].ToString();
        String Status = Request.Form["Status"].ToString();

        qry = string.Format(insertlanguage, CountryName, Status,CountryCode);
        if (obj.insert(qry, out temp))
        {
            if (temp == 1)
            {
               
                Response.Write("<script LANGUGE='JavaScript'> alert('" + CountryCode + " Country Code created sucessfully  ')</script>");
            }
            else
            {
                Response.Write("<script LANGUGE='JavaScript'> alert('Error in creating new countrycode')</script>");
            }
        }
    }
}
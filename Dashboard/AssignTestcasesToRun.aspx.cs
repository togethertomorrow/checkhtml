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
using System.Threading;
using System.Diagnostics;

public partial class Default2 : System.Web.UI.Page
{
    Dbmethods obj = new Dbmethods();

    int temp=0;
    String qry = "";
    String insertBuildsQuery = "INSERT INTO buildconfiguration("+
	                            "browsertype, testcasename, agentname, builddate, buildpath,OSType)"+
	                             "VALUES ( '{0}', '{1}', '{2}', {3}, '{4}','{5}');";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {

        List<string> Browserlist = new List<string>();
        List<string> Oslist = new List<string>();
        //String ChromeID = Request.Form["chromeid"];
        
        if (Chrome.Checked)
        {
            Browserlist.Add("CHROME");
        }
         if (IE.Checked)
        {
            Browserlist.Add("IE");
        }
         if (FIREFOX.Checked)
        {
            Browserlist.Add("FIREFOX");
        }
        if (SAFARI.Checked)
        {
            Browserlist.Add("SAFARI".ToUpper());
        }
        if (IosApp.Checked)
        {
            Browserlist.Add("APP".ToUpper());
        }

        if (Windows.Checked)
        {
            Oslist.Add("Windows".ToUpper());
        }

        if (Android.Checked)
        {
            Oslist.Add("Android".ToUpper());
        }

        if (IOS.Checked)
        {
            Oslist.Add("IOS".ToUpper());
        }
        String OsText = "";
        foreach (String os in Oslist)
        {
            OsText = os.ToString();
        }

        String TestcaseName = Request.Form["Obj_ref_Checkboxes"].ToString();
        //ArrayList browserlist = new
        String AgentName = Request.Form["Testagent"].ToString();
        String BuildPath = Request.Form["BuildPath"].ToString();

   //     String arg = @" -jar "+BuildPath+" "+TestcaseName+" "+""+"-user=someone";// just an example this can be anything
   // string command = "java.exe";
   //System.Diagnostics.ProcessStartInfo start = new System.Diagnostics.ProcessStartInfo(command, arg);
   // start.UseShellExecute = false;
   // start.CreateNoWindow = true;
   // System.Diagnostics.Process.Start(start);
       
        foreach (string c in Browserlist)
        {
            String[] testcases=TestcaseName.Split(',');
            foreach (String testcase in testcases)
            {
                String arg = @" -jar " + BuildPath + " " + testcase + " " + c + " " + OsText;// just an example this can be anything
                string command = "java.exe";
                System.Diagnostics.ProcessStartInfo start = new System.Diagnostics.ProcessStartInfo(command, arg);
                // start.WorkingDirectory = Path.GetDirectoryName(BuildPath);
                start.UseShellExecute = false;
               // start.WindowStyle = ProcessWindowStyle.Normal;
                System.Diagnostics.Process.Start(start);

                qry = String.Format(insertBuildsQuery, c, testcase, AgentName, "curdate()", BuildPath, OsText);

                if (obj.insert(qry, out temp))
                {
                    if (temp == 1)
                    {


                        // lblresult.Text = " " + txttestcase.Text.ToString() + " Testcase created sucessfully";
                        //Response.Write("<script LANGUGE='JavaScript'> alert('" + objrefname + " Obj Repository created sucessfully  ')</script>");
                        System.Diagnostics.ProcessStartInfo ps = new System.Diagnostics.ProcessStartInfo(BuildPath);
                        //
                        // System.Diagnostics.Process.Start(ps);
                        // Thread.Sleep(50000);
                    }
                    else
                    {
                        Response.Write("<script LANGUGE='JavaScript'> alert('Error in running the test case')</script>");
                    }
                }

            }
        

            //System.Diagnostics.Process.WaitForExit();
            //System.Diagnostics.Process
       
        }
        //for (int i = 0; i <= Browserlist.Length; i++)
        //{
        //    qry = String.Format(insertBuildsQuery, Browserlist[i], TestcaseName, AgentName, DateTime.Now, BuildPath);
            
        //    //if (obj.insert(qry, out temp))
        //    //{
        //    //    if (temp == 1)
        //    //    {
        //    //        // lblresult.Text = " " + txttestcase.Text.ToString() + " Testcase created sucessfully";
        //    //        //Response.Write("<script LANGUGE='JavaScript'> alert('" + objrefname + " Obj Repository created sucessfully  ')</script>");
        //    //        System.Diagnostics.ProcessStartInfo ps = new System.Diagnostics.ProcessStartInfo(BuildPath);

        //    //        System.Diagnostics.Process.Start(ps);
        //    //        Thread.Sleep(10000);
        //    //    }
        //    //    else
        //    //    {
        //    //        Response.Write("<script LANGUGE='JavaScript'> alert('Error in running the test case')</script>");
        //    //    }
        //    //}
        //}
        
       
    }
}
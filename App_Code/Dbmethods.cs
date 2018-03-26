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
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for Dbmethods
/// </summary>
public class Dbmethods
{

    MySqlConnection _connection = null;

    MySqlCommand _command = null;

    MySqlDataAdapter _adapter = null;

    MySqlDataReader reader = null;
    public static string SQLconnectionStr = "server=10.9.27.24;uid=username;pwd=password;database=automation;";

	public Dbmethods()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string getSQLConnectionString()
    {

        string _con = "server=10.9.27.24 ;uid=username;pwd=password;database=automation;";

        string[] ar = new string[10];

        try
        {


        }
        catch (Exception ex)
        {
            //Common.logFile("getSQLConnectionString : " + ex.Message);
        }

        return _con;

    }
    public Hashtable getKeyValueDetails(String query)
    {
           Dbmethods obj = new Dbmethods();
        Hashtable hashKeyValues = new Hashtable();
         DataSet ds;
        try
        {

            
            if (obj.getDs(query, out ds, "dsdt"))
            {
                foreach (DataRow dbRow in ds.Tables[0].Rows)
                {

                   
                   
                    hashKeyValues.Add(dbRow["ID"].ToString(), dbRow["project_id"].ToString());

                }
                
               
                    

                
            }

        }
        catch (Exception exception)
        {
            Console.Write("Exception occurred while communicating with DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        return hashKeyValues;
    }
    public Hashtable gettestagentkeyvalues(String query)
    {
        Dbmethods obj = new Dbmethods();
        Hashtable hashKeyValues = new Hashtable();
        DataSet ds;
        try
        {


            if (obj.getDs(query, out ds, "dsdt"))
            {
                foreach (DataRow dbRow in ds.Tables[0].Rows)
                {



                    hashKeyValues.Add(dbRow["ID"].ToString(), dbRow["machinename"].ToString());

                }





            }

        }
        catch (Exception exception)
        {
            Console.Write("Exception occurred while communicating with DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        return hashKeyValues;
    }
    public Hashtable gettestcaseKeyValueDetails(String query)
    {
        Dbmethods obj = new Dbmethods();
        Hashtable hashKeyValues = new Hashtable();
        DataSet ds;
        try
        {


            if (obj.getDs(query, out ds, "dsdt"))
            {
                foreach (DataRow dbRow in ds.Tables[0].Rows)
                {



                    hashKeyValues.Add(dbRow["ID"].ToString(), dbRow["testcasename"].ToString());

                }





            }

        }
        catch (Exception exception)
        {
            Console.Write("Exception occurred while communicating with DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        return hashKeyValues;
    }
    public Hashtable getlangKeyValueDetails(String query)
    {
        Dbmethods obj = new Dbmethods();
        Hashtable hashlangKeyValues = new Hashtable();
        DataSet ds;
        try
        {


            if (obj.getDs(query, out ds, "dsdt"))
            {
                foreach (DataRow dbRow in ds.Tables[0].Rows)
                {



                    hashlangKeyValues.Add(dbRow["ID"].ToString(), dbRow["country_code"].ToString());

                }





            }

        }
        catch (Exception exception)
        {
            Console.Write("Exception occurred while communicating with DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        return hashlangKeyValues;
    }
    public Hashtable getProjectDetails()
    {

        Hashtable hashProjectNames = new Hashtable();

        String query = "select * from project";

        try
        {

            hashProjectNames = getKeyValueDetails(query);

        }

        catch (Exception exception)
        {
            //Console.Write("Exception occurred while getting Project's list from " + DBConstants.db_Owner_User + "DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        //try
        //{

        //    hashProjectNames = getKeyValueDetails(query);

        //}
        //catch (Exception exception)
        //{
        //    Console.Write("Exception occurred while getting Project's list from " + DBConstants.db_Owner_User +"DB : ==> : " + exception.Message);
        //    Console.Write("Query : ==> : " + query);
        //}

        return hashProjectNames;
    }
    public Hashtable gettestcasedetails()
    {

        Hashtable hashTestcaseNames = new Hashtable();

        String query = "select * from testcases";

        try
        {

            hashTestcaseNames = gettestcaseKeyValueDetails(query);

        }

        catch (Exception exception)
        {
            //Console.Write("Exception occurred while getting Project's list from " + DBConstants.db_Owner_User + "DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        //try
        //{

        //    hashProjectNames = getKeyValueDetails(query);

        //}
        //catch (Exception exception)
        //{
        //    Console.Write("Exception occurred while getting Project's list from " + DBConstants.db_Owner_User +"DB : ==> : " + exception.Message);
        //    Console.Write("Query : ==> : " + query);
        //}

        return hashTestcaseNames;
    }

    public Hashtable gettestagentnames()
    {

        Hashtable hashTestcaseNames = new Hashtable();

        String query = "select * from testagentmachine";

        try
        {

            hashTestcaseNames = gettestagentkeyvalues(query);

        }

        catch (Exception exception)
        {
            //Console.Write("Exception occurred while getting Project's list from " + DBConstants.db_Owner_User + "DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        //try
        //{

        //    hashProjectNames = getKeyValueDetails(query);

        //}
        //catch (Exception exception)
        //{
        //    Console.Write("Exception occurred while getting Project's list from " + DBConstants.db_Owner_User +"DB : ==> : " + exception.Message);
        //    Console.Write("Query : ==> : " + query);
        //}

        return hashTestcaseNames;
    }
    public Hashtable getactiontype()
    {

        Hashtable hashTestcaseNames = new Hashtable();

        String query = "select * from actiontype";

        try
        {

            hashTestcaseNames = getactiontypekeyvalues(query);

        }

        catch (Exception exception)
        {
            //Console.Write("Exception occurred while getting Project's list from " + DBConstants.db_Owner_User + "DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        //try
        //{

        //    hashProjectNames = getKeyValueDetails(query);

        //}
        //catch (Exception exception)
        //{
        //    Console.Write("Exception occurred while getting Project's list from " + DBConstants.db_Owner_User +"DB : ==> : " + exception.Message);
        //    Console.Write("Query : ==> : " + query);
        //}

        return hashTestcaseNames;
    }
    public Hashtable getactiontypekeyvalues(String query)
    {
        Dbmethods obj = new Dbmethods();
        Hashtable hashKeyValues = new Hashtable();
        DataSet ds;
        try
        {


            if (obj.getDs(query, out ds, "dsdt"))
            {
                foreach (DataRow dbRow in ds.Tables[0].Rows)
                {



                    hashKeyValues.Add(dbRow["ID"].ToString(), dbRow["actiontypename"].ToString());

                }





            }

        }
        catch (Exception exception)
        {
            Console.Write("Exception occurred while communicating with DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        return hashKeyValues;
    }

    public Hashtable getObjectReferenceNames(String query)
    {
        Dbmethods obj = new Dbmethods();
        Hashtable hashKeyValues = new Hashtable();
        DataSet ds;
        try
        {


            if (obj.getDs(query, out ds, "dsdt"))
            {
                foreach (DataRow dbRow in ds.Tables[0].Rows)
                {



                    hashKeyValues.Add(dbRow["ID"].ToString(), dbRow["obj_ref_name"].ToString());

                }





            }

        }
        catch (Exception exception)
        {
            Console.Write("Exception occurred while communicating with DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        return hashKeyValues;
    }
    public Hashtable getTargetReferenceNames(String query)
    {
        Dbmethods obj = new Dbmethods();
        Hashtable hashKeyValues = new Hashtable();
        DataSet ds;
        try
        {


            if (obj.getDs(query, out ds, "dsdt"))
            {
                foreach (DataRow dbRow in ds.Tables[0].Rows)
                {



                    hashKeyValues.Add(dbRow["ID"].ToString(), dbRow["target_property"].ToString());

                }





            }

        }
        catch (Exception exception)
        {
            Console.Write("Exception occurred while communicating with DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        return hashKeyValues;
    }

    public Hashtable getLanguage()
    {

        Hashtable hashProjectNames = new Hashtable();

        String query = "select * from locale";

        try
        {

            hashProjectNames = getlangKeyValueDetails(query);

        }

        catch (Exception exception)
        {
            //Console.Write("Exception occurred while getting Project's list from " + DBConstants.db_Owner_User + "DB : ==> : " + exception.Message);
            Console.Write("Query : ==> : " + query);
        }

        //try
        //{

        //    hashProjectNames = getKeyValueDetails(query);

        //}
        //catch (Exception exception)
        //{
        //    Console.Write("Exception occurred while getting Project's list from " + DBConstants.db_Owner_User +"DB : ==> : " + exception.Message);
        //    Console.Write("Query : ==> : " + query);
        //}

        return hashProjectNames;
    }
    public MySqlConnection getSQLConnection()
    {
        MySqlConnection conn = null;

        try
        {
            conn = new MySqlConnection(SQLconnectionStr);
          //  conn.Open();
        }
        catch (Exception ex)
        {
            //Common.logFile("getSQLConnection : " + ex.Message);
        }

        return conn;

    }
    public bool getDs(string argQry, out DataSet ds, string dtName)
    {

        MySqlConnection con = getSQLConnection();

        ds = new DataSet();
        try
        {
            con.Open();
            MySqlDataAdapter sda = new MySqlDataAdapter(argQry, con);

            sda.Fill(ds);
            return true;
        }
        catch (Exception ex)
        {
            //Common.logFile("getDs : " + ex.Message);
            return false;
        }
        finally
        {
            con.Close();
        }

    }
    public MySqlDataReader executeQueryResults(String query)
    {
        MySqlConnection con = getSQLConnection();


        try
        {
            con.Open();

            //_command = new SqlCommand(query, con);
            MySqlCommand cmd = new MySqlCommand(query, con);


            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            reader = cmd.ExecuteReader();
            //reader = _command.ExecuteReader();
        }
        catch (Exception exception)
        {
            Console.WriteLine(" Query Result Error : ==> : " + exception.Message + "\n And Source : ==> : " + exception.Source);
        }


        return reader;

    }
    public bool insert(string argQuery, out int temp)
    {
        temp = 0;
        MySqlConnection con = getSQLConnection();
        try
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand(argQuery, con);
            temp = cmd.ExecuteNonQuery();

            return true;
        }
        catch (Exception ex)
        {
            //Common.logFile("update: " + ex.Message);
            return false;
        }
        finally
        {
            con.Close();
        }

    }

    public string availabilty(string argQuery, out int temp)
    {
        string availability = "";
        temp = 0;
        MySqlConnection con = getSQLConnection();
        try
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand(argQuery, con);
            temp = cmd.ExecuteNonQuery();
            availability = reader["ID"].ToString();
            return availability;
        }
        catch (Exception ex)
        {
            //Common.logFile("update: " + ex.Message);
            return availability;
        }
        finally
        {
            con.Close();
        }

    }
    public bool Update(string argQuery, out int temp)
    {
        temp = 0;
        MySqlConnection con = getSQLConnection();
        try
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand(argQuery, con);
            temp = cmd.ExecuteNonQuery();

            return true;
        }
        catch (Exception ex)
        {
            //Common.logFile("update: " + ex.Message);
            return false;
        }
        finally
        {
            con.Close();
        }

    }

   
}
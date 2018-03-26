<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AssignTestcasesToRun.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Execution</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <form id="dd"  method="post" runat="server">
         
        <script>
           <%-- function load() {
                alert("check");
                <% System.Diagnostics.ProcessStartInfo ps = new System.Diagnostics.ProcessStartInfo(@"C:\Users\css102326\Desktop\SampleJars\SeleniumChrome1.0.jar");
                   System.Diagnostics.Process.Start(ps);
                   
                   %>
                alert("check");
            }--%>
            function EditDesignStep()
            {
                
                var editcount = "";
                var checkBoxes = document.getElementsByName("Obj_ref_Checkboxes"); 
                var stepid = document.getElementsByName("Current_step_id");
                var stepid_Element = "", StepIDName = "";
                var indexOfNewReferece = 0;
                for (i = 0; i <= checkBoxes.length - 1; i++) {

                    if (checkBoxes[i].checked == true) {
                        editcount++;
                    }
                    
                }
                if (editcount == 1)
                {
                    for (i = 0; i <= checkBoxes.length - 1; i++) {

                        if (checkBoxes[i].checked == true) {
                            
                           
                           

                            alert("test");
                            
                            alert(stepid[i].value);
                            sessionStorage["EditStepID"] = stepid[i].value;
                            //window.location.href = "AddNewTestCaseDesignStepsPage.aspx?stepid=" + step[i].value;
                            //document.getElementById("EditTestCaseDesignSteps").submit();
                            document.EditTestCaseDesignSteps.action = "AddNewTestCaseDesignStepsPage.aspx?RequestType=" + stepid[i].value;

                           
                            document.EditTestCaseDesignSteps.submit();
                        }
                        

                    }
                }
                else
                {
                    alert("large");
                }
            }
            function selectAllCheckBoxes(element) {

                var checkBoxes = document.getElementsByName("Obj_ref_Checkboxes");

                if (element.checked) {
                    //document.getElementById("img_copy_step").style.opacity = "0.9";

                    //document.getElementById("img_step_before").style.opacity = "0.9";

                    //document.getElementById("img_step_after").style.opacity = "0.9";

                    //document.getElementById("img_edit").style.opacity = "0.9";

                    for (i = 0; i <= checkBoxes.length - 1; i++) {

                        checkBoxes[i].checked = true;

                        //ShowRange();

                        //Providing the Readonly
                        //document.getElementById("CurrentDateValueId" + i).removeAttribute("readonly");
                    }
                }

                else {

                    for (i = 0; i <= checkBoxes.length - 1; i++) {

                        checkBoxes[i].checked = false;
                        //HideRange();

                        //document.getElementById("CurrentDateValueId" + i).setAttribute("readonly", "");

                    }
                }

            }
          
        </script>
        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <asp:Image ID="Image1" runat="server" Height="46px" ImageUrl="~/pages/logo2.png" Width="257px" />
                 <a class="page-header" style="font-size:large;color:gray;font-weight:bold" href="Home.aspx">CSS CORP AUTOMATION DASHBOARD</a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope fa-fw"></i><i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>Admin </strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Test Mail...</div>
                                </a>
                            </li>
                            <!--<li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>-->
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>Read All Messages</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-messages -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-tasks fa-fw"></i><i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-tasks">
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 1</strong>
                                            <span class="pull-right text-muted">40% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 2</strong>
                                            <span class="pull-right text-muted">20% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                <span class="sr-only">20% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 3</strong>
                                            <span class="pull-right text-muted">60% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 4</strong>
                                            <span class="pull-right text-muted">80% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                <span class="sr-only">80% Complete (danger)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Tasks</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-tasks -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell fa-fw"></i><i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i>New Comment
                                   
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i>3 New Followers
                                   
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>

                        </ul>
                        <!-- /.dropdown-alerts -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                            <li>
                                <a href="Home.aspx"><i class="fa fa-dashboard fa-fw"></i>Dashboard</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-edit fa-fw"></i>Project<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="CreateNewProject.aspx">Create New Project</a>
                                    </li>

                                    <li>
                                        <a href="SelectActiveProject.aspx">Switch Active Project</a>
                                    </li>
                                    <li>
                                        <a href="#">View All Project</a>
                                    </li>
                                    <li>
                                        <a href="#">Edit\Delete Project</a>
                                    </li>

                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="tables.html"><i class="fa fa-table fa-fw"></i>Test Cases</a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="CreateNewTestCase.aspx">Create New Test Case</a>
                                    </li>
                                    <li>
                                        <a href="#">Edit\Delete Test Cases</a>
                                    </li>
                                    <li>
                                        <a href="Default2.aspx">View Test Case Design Steps</a>
                                    </li>
                                    <li>
                                        <a href="#">Duplicate\Copy Test Case</a>
                                    </li>


                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-edit fa-fw"></i>Language<span class="fa fa-arrow-down"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="CreateNewLanguage.aspx">Add New Language</a>
                                    </li>
                                    <li>
                                        <a href="#">Edit\Delete Language</a>
                                    </li>
                                    <li>
                                        <a href="#">View All Language</a>
                                    </li>


                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-tasks fa-1x"></i>Repository</a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="AddobjectRepository.aspx">Create object Repository</a>
                                    </li>



                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-support fa-1x"></i>Maintenance</a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="AddActiontype.aspx">Create Action Type</a>
                                    </li>



                                </ul>
                            </li>




                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <div id="page-wrapper">


                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header" style="color: cadetblue">Test Execution</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>

                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Choose the TestCases to work on
                       
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <h1>Test Cases</h1>
                                          <div class="panel panel-default">
                            <div class="panel-heading">
                                Selected Results
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="dataTable_wrapper">
                                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <%
                                                    Response.Write("<th class=\"center\" style=\"background-color:white ;color:white;\">" +
                               "<div class=\"nav-bar-inner padding5\" style=\"background-color: white;color:white;text-align:center;font-weight:normal;font-size:13px;font-family: 'Segoe UI','Open Sans',Verdana,Arial,Helvetica,sans-serif;\">" +
                            " <br /><input type=\"checkbox\" name=\"selectAll_chkBox\" id=\"selectAll_chkBox\" onclick=\"enableButtons(this)\" onchange=\"selectAllCheckBoxes(this)\"/> " +
                             "</div>" +
                              "</th>");
                                                %>

                                                <th>Test Case Name</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                           
                                            <%
    
    try {

       

        try
        {
           

          
            
            Dbmethods obj = new Dbmethods();
            //DBConnection dbConnection = new DBConnection();

            MySql.Data.MySqlClient.MySqlConnection con = obj.getSQLConnection();
            
            String Query = "";
            //String testCaseID = "1";
            String activeprojectname = "";
            if (Session["activeprojectname"] != null)
        {
            activeprojectname = Session["activeprojectname"].ToString();

        }
        else
        {
            Response.Write("<script LANGUGE='JavaScript'> alert('Please Select the project to work on')</script>");
            Response.Redirect("SelectActiveProject.aspx");
        }
            if (activeprojectname.Trim().Length > 0)
            {

                //Query = "SELECT STEPS.ID,STEPS.STEP_ID,STEPS.OBJ_REF_ID,STEPS.TEST_CASE_LOGS_ID, STEPS.HTML_ELEMENT_TYPE,ACTION.ACTION_TYPE_NAME,STEPS.TARGET_PROPERTY,STEPS.PROPERTY_VALUE,STEPS.ACTIVE FROM " + DBConstants.db_Owner_User +"TEST_CASE_DESIGN_STEPS STEPS," + DBConstants.db_Owner_User +"ACTIONTYPE ACTION WHERE ACTION.ID=STEPS.ACTION_TYPE AND  STEPS.TEST_CASE_LOGS_ID = (SELECT ID FROM TEST_CASES_LOG WHERE REF_TC_ID='" + testCaseID + "' AND PROJECT_ID = (SELECT ID FROM " + DBConstants.db_Owner_User +"PROJECT_DETAILS WHERE PROJECT_ID ='" + activeProjectName + "'))ORDER BY STEPS.ID ASC";


                Query = "select * from testcases where project_id = " + activeprojectname;



                MySql.Data.MySqlClient.MySqlDataReader reader = null;
            reader = obj.executeQueryResults(Query);

            
            int loopCount = 1;
            String inactivetext = " ";
            //int loopCount_multiple = 0;
            //Step_ID,TestcaseID,Object_Ref_ID,HTML_Element_Type,Action_Type_ID,Active,CreatedDate,LastModifiedDate,Property_Value,Description
            while (reader.Read())
            {
                String ID = reader["id"].ToString();

                String testcasename = reader["testcasename"].ToString();

                int execution_sequence_identifier = 0;

                
                //String obj_ref_name = GetObjectRepository.getHashValueedit(reader["OBJ_REF_ID"].ToString().Trim());

               

                String executeSharedStepID = "";
                //if (action_type.ToUpper().Equals("ExecuteSharedSteps".ToUpper()))
                //{
                //    DBConnection dCon = new DBConnection();
                    
                //    String q = "select * from Test_Cases where TC_ID='" + element_Property + "'";

                //    System.Data.SqlClient.SqlDataReader rc = null;

                //    rc = dCon.executeQueryResults(q);

                //    if (rc.Read())
                //    {
                //        executeSharedStepID = rc["ID"].ToString();
                //    }
                //}

                Response.Write("<input type=\"hidden\" id=\"TestcaseName\" name=\"TestcaseName\" value=\"" + testcasename + "\">");
                Response.Write("" +
                               "<td style=\"white-space: -moz-pre-wrap !important;word-break: break-all;white-space: normal;font-size:8px;font-family: Arial,'Segoe UI Semilight','Open Sans',Verdana,Helvetica,sans-serif;line-height:0px;background-color:inherit;\">" +
                               "<input type=\"checkbox\" id=\"Obj_ref_Checkboxes" + testcasename +  "\" name=\"Obj_ref_Checkboxes\" value=\"" + testcasename +  "\" onclick=\"enableButtons(this);getCurrentSelectedStepID(this.value);\" />" +
                               "</td>");

                execution_sequence_identifier++;
               
              
                    
                    Response.Write("<td id=\"" +
                            "TestCaseIDText" +
                            "\" style=\"white-space: -moz-pre-wrap !important;word-break: break-all;white-space: normal;text-align: left;font-size:12px;font-family: Arial,'Segoe UI Semilight','Open Sans',Verdana,Helvetica,sans-serif;line-height:auto;background-color:inherit;\">" + testcasename + "</td>");

                
                

                Response.Write("</tr>");

               

            }

                //dbConnection.dbConnectionClose();
                
            }

        }
        catch (Exception ex)
        {

            Response.Write("Exception Occurred : => :" + ex.Message);
        }


    } catch (Exception ex) {

        Response.Write("<h3>No Filter Condition Applied.</h3>");

    }

%>
                                        </tbody>
                                    </table>
                                    <%--   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                                    <asp:Button ID="Button2" runat="server" Text="Button" />--%>

                                  
                                </div>
                                <!-- /.table-responsive -->

                            </div>
                            <!-- /.panel-body -->
                        </div>
                                        <button type="submit" class="btn btn-default">Search</button>
                                        
                                        <%--<asp:Button ID="Button2" runat="server"  Text="Button" />--%>
                                    </div>
                                   <div class="col-lg-6">
                                    <h1>Execution</h1>
                                        
                                 
                                          <div class="form-group">
                                            <label>Test Agent Machine</label>
                                            <select class="form-control" id="Testagent" name="Testagent">

                                                <%
                                           

                                                    try
                                                    {
                                                        Dbmethods objdb = new Dbmethods();

                                                        Hashtable hashtestcaseDetails = objdb.gettestagentnames();

                                                        foreach (DictionaryEntry entry in hashtestcaseDetails)
                                                        {
                                                            Response.Write("<option value=\"" + entry.Key + "\">" + entry.Value + "</option>");
                                                        }

                                                    }
                                                    catch (Exception ex)
                                                    {
                                                        Response.Write("Not Available" + ex.Message);
                                                    }
                                            
                                                %>
                                            </select>

                                        </div>
                                          <div class="form-group">
                                            <label>Execution Build</label>
                                            <select class="form-control" id="BuildPath" name="BuildPath">

                                                <%
                                                    System.IO.DirectoryInfo d = new System.IO.DirectoryInfo(@"D:\EL_Project\Builds");//Assuming Test is your Folder
                                                    System.IO.FileInfo[] Files = d.GetFiles("*.jar"); //Getting Text files
                                                    //String[] Buildlist = new String[20];
                                                    //String[] BuildsPath =new String

                                                    ArrayList BuildList = new ArrayList();

                                                    ArrayList BuildsPath = new ArrayList();
                                                    
                                                    
                                                    
                                                    foreach (System.IO.FileInfo file in Files)
                                                    {

                                                    //    Buildlist[i] = file.Name;
                                                        BuildList.Add(file.Name);

                                                        BuildsPath.Add(file.FullName);
                                                        
                                                      
                                                    }

                                                    try
                                                    {
                                                        for (int j = 0; j < BuildsPath.Count ; j++)
                                                        {
                                                            Response.Write("<option value=\"" + BuildsPath[j].ToString() + "\">" + BuildList[j].ToString() + "</option>");
                                                        }

                                                    }
                                                    catch (Exception ex)
                                                    {
                                                        Response.Write("Not Available" + ex.Message);
                                                    }
                                            
                                                %>
                                            </select>

                                        </div>
                                        <div class="form-group">
                                            <label>OS Type</label>
                                            <asp:CheckBox ID="Windows" runat="server" style="z-index: 1; left: 121px; top: 210px; position: absolute" Text="Windows" />
                                            <asp:CheckBox ID="Android" runat="server" style="z-index: 1; left: 215px; top: 209px; position: absolute" Text="Android" />
                                            <asp:CheckBox ID="IOS" runat="server" style="z-index: 1; left: 302px; top: 208px; position: absolute" Text="IOS" />
                                            
                                            
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Browser Type</label>
                                            <asp:CheckBox ID="Chrome" runat="server" style="z-index: 1; left: 122px; top: 255px; position: absolute" Text="CHROME" />
                                            <asp:CheckBox ID="IE" runat="server" style="z-index: 1; left: 212px; top: 254px; position: absolute" Text="IE" />
                                            <asp:CheckBox ID="FIREFOX" runat="server" style="z-index: 1; left: 263px; top: 256px; position: absolute" Text="FIREFOX" />
                                            <asp:CheckBox ID="SAFARI" runat="server" style="z-index: 1; left: 354px; top: 253px; position: absolute; height: 20px; width: 92px;" Text="SAFARI" />
                                             <asp:CheckBox ID="IosApp" runat="server" style="z-index: 1; left: 438px; top: 254px; position: absolute; height: 20px; width: 92px;" Text="APP" />
                                            
                                            
                                        </div>
                                      <%-- <div class="form-group">
                                            <label>Browser Type</label>
                                           
                                            <select multiple class="form-control" id="Browser" name="Browser" class="form-control">
                                                <option value="CHROME">CHROME</option>
                                                 <option value="IE">IE</option>
                                                 <option value="FIREFOX">FIREFOX</option>
                                               
                                            </select>
                                        </div>--%>
                                       <%-- <button type="submit" class="btn-danger" style="height:20px; width:70px" onclick="load()">RUN</button>--%>
                                   
                                   
                                       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="RUN" />
                                   
                                   
                                </div>
                                    
                                    <!-- /.col-lg-6 (nested) -->
                                    <%-- <div class="col-lg-6">
                                    <h1>Disabled Form States</h1>
                                    <form role="form">
                                        <fieldset disabled>
                                            <div class="form-group">
                                                <label for="disabledSelect">Disabled input</label>
                                                <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled>
                                            </div>
                                            <div class="form-group">
                                                <label for="disabledSelect">Disabled select menu</label>
                                                <select id="disabledSelect" class="form-control">
                                                    <option>Disabled select</option>
                                                </select>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">Disabled Checkbox
                                                </label>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Disabled Button</button>
                                        </fieldset>
                                    </form>
                                    <h1>Form Validation States</h1>
                                    <form role="form">
                                        <div class="form-group has-success">
                                            <label class="control-label" for="inputSuccess">Input with success</label>
                                            <input type="text" class="form-control" id="inputSuccess">
                                        </div>
                                        <div class="form-group has-warning">
                                            <label class="control-label" for="inputWarning">Input with warning</label>
                                            <input type="text" class="form-control" id="inputWarning">
                                        </div>
                                        <div class="form-group has-error">
                                            <label class="control-label" for="inputError">Input with error</label>
                                            <input type="text" class="form-control" id="inputError">
                                        </div>
                                    </form>
                                    <h1>Input Groups</h1>
                                    <form role="form">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">@</span>
                                            <input type="text" class="form-control" placeholder="Username">
                                        </div>
                                        <div class="form-group input-group">
                                            <input type="text" class="form-control">
                                            <span class="input-group-addon">.00</span>
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-eur"></i>
                                            </span>
                                            <input type="text" class="form-control" placeholder="Font Awesome Icon">
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">$</span>
                                            <input type="text" class="form-control">
                                            <span class="input-group-addon">.00</span>
                                        </div>
                                        <div class="form-group input-group">
                                            <input type="text" class="form-control">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="button"><i class="fa fa-search"></i>
                                                </button>
                                            </span>
                                        </div>
                                    </form>
                                </div>--%>
                                    <!-- /.col-lg-6 (nested) -->

                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                     
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="../bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

        <!-- DataTables JavaScript -->
        <script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
        <script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
        <script src="../bower_components/datatables-responsive/js/dataTables.responsive.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../dist/js/sb-admin-2.js"></script>

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function () {
                $('#dataTables-example').DataTable({
                    responsive: true
                });
            });
        </script>


    </form>
   


    <%--<form name="EditObject_ReferenceForm1" id="EditObject_ReferenceForm1" action="NavigateToPage.aspx?RequestType=GlobalActive" method="post" >


</form>--%>
    <form name="EditTestCaseDesignSteps" id="EditTestCaseDesignSteps"  method="post" >


</form>
</body>
</html>

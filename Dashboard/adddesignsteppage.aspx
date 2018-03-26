<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adddesignsteppage.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Edit Step</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="AutoComplete/docsupport/prism.css">
 <link rel="stylesheet" href="AutoComplete/chosen.css">
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

    <link href="Choosen/chosen.css" rel="stylesheet" type="text/css" />
    <link href="Choosen/docsupport/prism.css" rel="stylesheet" type="text/css" />
    <link href="Choosen/chosen.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <form id="dd"  method="post" runat="server" >
         
        <script>
            function test() {
                alert("test");

                var checkBoxes = document.getElementById("name1").value.toString();
                alert(checkBoxes);
                var totalCountElement = "";

                totalCountElement = document.createElement("input");

                totalCountElement.setAttribute("type", "hidden");

                totalCountElement.setAttribute("name", "TotalCountHdn");

                totalCountElement.setAttribute("value", checkBoxes);
                alert(checkBoxes);
                document.getElementById("dd").appendChild(totalCountElement);
                alert(checkBoxes);
                document.getElementById("dd").submit();
            }
            function leaveChange() {
                var e = document.getElementById("obj_ReferenceName_Value1");
                var strUser = e.options[e.selectedIndex].value;
                var selectObj = document.getElementById("obj_Target_ValueID");
                for (var i = 0; i < selectObj.options.length; i++) {
                    if (selectObj.options[i].value == strUser) {
                        selectObj.options[i].selected = true;
                        return;
                    }
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
            function objref(rr)
            {
               
                alert(rr);
             
                var obj_ref_selection_changed = rr;
                document.getElementById("Obj_ref_hidden_value").value = rr;
                var hh = document.getElementById("Obj_ref_hidden_value").value;
                alert(hh);
                var target = document.getElementById("obj_Target_ValueID");
               target.options
                
            }
          
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                alert("addnewtestcase");

                $('#obj_ReferenceName_Value1').on('change', function (e) {

                    alert("rr");

                    var selectedText = $('#obj_ReferenceName_Value1').val();
                    var objIndex = 0;
                    //alert(selectedText);

                    var obj_references_Values = document.getElementById('obj_Target_ValueID1').options;

                    for (objIndex = 0; objIndex <= obj_references_Values.length - 1; objIndex++) {



                        if (obj_references_Values[objIndex].value == selectedText) {
                            // alert(obj_references_Values[objIndex].value);
                            $("#obj_Target_ValueID").val(obj_references_Values[objIndex].value);
                            break;
                        }

                    }

                    $("#obj_Target_ValueID").trigger("chosen:updated");

                    //alert(obj_references_Values.length - 1);


                    //alert(selectedText);

                });


            });
            $(document).ready(function () {

                $('#obj_Target_ValueID1').on('change', function (e) {

                    var selectedText = $('#obj_Target_ValueID1').val();
                    var objIndex = 0;


                    var obj_references_Values = document.getElementById('obj_ReferenceName_Value1').options;

                    for (objIndex = 0; objIndex <= obj_references_Values.length - 1; objIndex++) {



                        if (obj_references_Values[objIndex].value == selectedText) {
                            // alert(obj_references_Values[objIndex].value);
                            $("#obj_ReferenceName_Value1").val(obj_references_Values[objIndex].value);
                            break;
                        }

                    }

                    $("#obj_ReferenceName_Value1").trigger("chosen:updated");

                });


            });
          
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
                    <asp:Image ID="Image1" runat="server" Height="64px" ImageUrl="~/pages/cssloho.jpg" Width="296px" />
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
                             <li>
                            <a href="#"><i class="fa fa-tasks fa-1x"></i>TestExecution</a>
                              <ul class="nav nav-second-level">
                                <li>
                                    <a href="AssignTestcasesToRun.aspx">Test Case Run</a>
                                </li>
                                   <li>
                                    <a href="#">Reports</a>
                                </li>
                                  <li>
                                    <a href="#">Results</a>
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
                        <h1 class="page-header" style="color: cadetblue">New Test Case Design Step </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <%
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
                    //string StepID = Session["EditStepID"].ToString();
                     string testcaseid = Session["tcnameid"].ToString();
                     String copiedHTMLElementType = "";
                     String StepId = "";
                     String action_type = "", obj_ref_name = "", targetproperty = "", propertyvalue = "", status = "", comments = "";
                     
                     


                          StepId = Request.QueryString["NewStep"].Trim();


                         String Qry = "SELECT STEPS.ID,STEPS.stepid,STEPS.obj_ref_id,obj.obj_ref_name,obj.target_property,STEPS.testcaseid, STEPS.htmlelementtype,ACTION.actiontypename,STEPS.status,STEPS.valuetext,STEPS.comments FROM test_case_design_steps STEPS inner join actiontype ACTION on ACTION.ID=STEPS.actiontype_id inner join obj_repository obj on STEPS.obj_ref_id =  obj.id where steps.id = " + StepId + " and  STEPS.testcaseid = " + testcaseid + " ORDER BY STEPS.stepid ASC";

                         Dbmethods obj = new Dbmethods();

                          
                        MySql.Data.MySqlClient.MySqlConnection con = obj.getSQLConnection();
                        MySql.Data.MySqlClient.MySqlDataReader reader = null;
                         reader = obj.executeQueryResults(Qry);
                         
                         while (reader.Read())
                         {
                             copiedHTMLElementType = reader["htmlelementtype"].ToString();
                             action_type = reader["actiontypename"].ToString().Trim();
                             obj_ref_name = reader["obj_ref_name"].ToString().Trim();
                             targetproperty = reader["target_property"].ToString().Trim();
                             propertyvalue = reader["valuetext"].ToString().Trim();
                             status = reader["status"].ToString().Trim();
                             comments = reader["comments"].ToString().Trim();

                         }
                     
                                       
                         %>
                <!-- /.row -->
              <div class="row">
                <div class="col-lg-12">
                    
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           New Step
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <table class="fa-border" id="addnewstep" style="width:80%">
                                        <tbody>
                                            <tr>
                                                <td>
                                   <div class="form-group">
                                            <label>Browser Type</label>
                                       <select class="form-control" id ="BrowserType" name="BrowserType">

                                        <% 
                    String[] htmlElements={"Browser","Text","Select","CheckBox","RadioButton","TextArea","Button","Link"};
                    

                   
                   for(int i=0;i<htmlElements.Length;i++){
                   
                   if (copiedHTMLElementType.Equals(htmlElements[i]))
                   {
                   
                  %>
                    <option value="<%=htmlElements[i].Trim() %>" selected><%=htmlElements[i]%></option>
                  <%
                      }else{
                  %>
                       <option value="<%=htmlElements[i].Trim() %>"><%=htmlElements[i]%></option>
                  <%
                     }
                   } 
                  
                  %>
                                           
                                    </select>
                                            
                                        </div>
                                                    </td>
                                                </tr>
                                            <tr>
                                                <td>
                                     <div class="form-group">
                                            <label>Action Type</label>
                                       <select class="form-control" id ="ActionType" name="ActionType">

                                     <%
                                        

             
                    
                
                Dbmethods objdb = new Dbmethods();

                Hashtable hashProjectDetails = objdb.getactiontype();

                foreach (DictionaryEntry entry in hashProjectDetails)
                        {
                            if (action_type.Equals(entry.Value.ToString().Trim()))
                            {
                                Response.Write("<option value=\"" + entry.Key.ToString().Trim() + "\" selected>" + entry.Value.ToString().Trim() + "</option>");
                            }
                            else
                            {
                                Response.Write("<option value=\"" + entry.Key.ToString().Trim() + "\">" + entry.Value.ToString().Trim() + "</option>");
                            }
                        }
                %>

            </select>


                                          
                                            
                                    
                                            
                                        </div>
                                                    </td>
                                                </tr>
                                   
                                       <tr>
                                           <td>
                                       
                                         <div class="form-group">
                                            <label>Status</label>
                                            <select id="Status" name="Status" class="form-control">
                                                <option value="TRUE">Active</option>
                                                 <option value="FALSE">InActive</option>
                                               
                                            </select>
                                        </div>
                                               </td>
                                           </tr>
                                            <tr>
                                                <td>
                                      <div class="form-group" id="obj_ReferenceName_Value" >
                                          <input type="hidden" id ="Obj_ref_hidden_value" name="Obj_ref_hidden_value" />
                                            <label>Object Reference Name</label>
                                       <select class="form-control"  id ="obj_ReferenceName_Value1" name="obj_ReferenceName_Value1" onchange="leaveChange()" >

          

               <option value="-1">--Select Reference Name--</option>
        
    <% 

          

        String Obj_query = "SELECT * FROM obj_repository WHERE projectid='" + HttpContext.Current.Session["activeProjectName"].ToString().Trim() + "' order by ID asc";

            System.Collections.Hashtable hashProjectDetails1 = objdb.getObjectReferenceNames(Obj_query);

            List<DictionaryEntry> dic= hashProjectDetails1.Cast<DictionaryEntry>().OrderBy(entry => entry.Value).ToList();

            if (HttpContext.Current.Request.Form["Obj_ref_hidden_value"] != null)
            {
                if (HttpContext.Current.Request.Form["Obj_ref_hidden_value"] != "")
                {
                    String obj_hidden_value_text = HttpContext.Current.Request.Form["Obj_ref_hidden_value"].ToString();
                }
            }

            foreach (var entry in dic)
	        {
                
                if (entry.Value.ToString().ToLower().Equals(obj_ref_name))
                {
                    Response.Write("<option value=\'" + entry.Key.ToString() + "' selected>" + entry.Value.ToString() + "</option>");
                }
                else
                {
                    Response.Write("<option value=\'" + entry.Key.ToString() + "'>" + entry.Value.ToString() + "</option>");
                }
            
	        }
                 

                %>

            </select>


                                          
                                            
                                    
                                            
                                        </div>
                                                    </td>
                                                </tr>
                                            <tr>
                                                <td>
                                     <div class="form-group">
                                            <label>Target Value</label>
                                       <select class="form-control" id ="obj_Target_ValueID" name="obj_Target_ValueID">

          

               <option value="-1">--Select Reference Name--</option>
        
    <% 

          

        String tar_query = "SELECT * FROM obj_repository WHERE projectid='" + HttpContext.Current.Session["activeProjectName"].ToString().Trim() + "' order by ID asc";

        System.Collections.Hashtable hashProjectDetails2 = objdb.getTargetReferenceNames(tar_query);

            List<DictionaryEntry> dic2= hashProjectDetails2.Cast<DictionaryEntry>().OrderBy(entry => entry.Value).ToList();

            

            foreach (var entry2 in dic2)
	        {
                if (entry2.Value.ToString().ToLower().Equals(targetproperty))
                {
                    Response.Write("<option value=\'" + entry2.Key.ToString() + "' selected>" + entry2.Value.ToString() + "</option>");
                }
                else
                {
                    Response.Write("<option value=\'" + entry2.Key.ToString() + "'>" + entry2.Value.ToString() + "</option>");
                }
            
	        }
                   

                %>

            </select>


                                          
                                            
                                    
                                            
                                        </div>
                                                    </td>
                                            </tr>
                                     <tr>
                                         <td>
                                        <div  class="form-group">

                                            <label> Value</label>
                                            <%
                
                if (propertyvalue != null || propertyvalue != "")
                {

                    Response.Write("<input class=\"form-control\" type=\"text\" name=\"targetValue\" id=\"targetValue\" value=\"" + propertyvalue.Replace("\"", "&quot;") + "\"/>");
                    
                    
                }else{

                    Response.Write("<input class=\"form-control\" type=\"text\" name=\"targetValue\" id=\"targetValue\" value=\"BLANK\"/>");
                    
                }

            %>
                                           
                                        </div>
                                             </td>
                                         </tr>
                                            <tr>
                                                <td>
                                     <div  class="form-group">
                                            <label> Comments</label>
                                                                                      <%
                
                if (comments != null || comments != "")
                {

                    Response.Write("<input class=\"form-control\" type=\"text\" name=\"comments\" id=\"comments\" value=\"" + comments.Replace("\"", "&quot;") + "\"/>");
                    
                }else{

                    Response.Write("<input class=\"form-control\" type=\"text\" name=\"comments\" id=\"comments\" value=\"BLANK\"/>");
                    
                }

            %>
                                        
                                        </div>
                                                    </td>
                                                </tr>
                                      
                                      
                                       
                                      
                                      
                                      
                                        <%-- <button type="submit"  class="btn btn-default";onclick="check()">Submit Button</button>
                                        <input type="submit" value="Assign"  class="default" id="UpdateTestDataSubmitBtnd1" style="width:20%"; onclick="check()" /> --%>

                                      
                                       
                                       <%-- <button type="reset" class="btn btn-default">Reset Button</button>--%>
                                            </tbody>
                                        </table>
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create" Font-Bold="True" ForeColor="Black" />
  
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                              
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
</body>
</html>

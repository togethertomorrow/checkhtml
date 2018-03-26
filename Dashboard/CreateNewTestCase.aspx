<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateNewTestCase.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bower_components/bootstrap/dist/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="dist/css/sb-admin-2.css" rel="stylesheet" type="text/css" />
    <link href="bower_components/bootstrap-social/bootstrap-social.css" rel="stylesheet" type="text/css" />
    <link href="bower_components/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="bower_components/datatables-plugins/features/alphabetSearch/dataTables.alphabetSearch.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>
<body>
    <form id="form1" runat="server" >
    <div id="wrapper">
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
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
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
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
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
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
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
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
                            <a href="Home.aspx"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-edit fa-fw"></i> Project<span class="fa arrow"></span></a>
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
                            <a href="tables.html"><i class="fa fa-table fa-fw"></i> Test Cases</a>
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
                            <a href="#"><i class="fa fa-edit fa-fw"></i> Language<span class="fa fa-arrow-down"></span></a>
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
                            <a href="#"><i class="fa fa-tasks fa-1x"></i>Test Execution</a>
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
                    <h1 class="page-header">New TestCase</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
      <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           TEST CASE CREATION
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                   
                                     <div class="form-group">
                                            <label>Country Code</label>
                                       <select class="form-control" id ="language" name="language">

                                        <%
                                            

                                            try
                                            {
                                                Dbmethods objdb = new Dbmethods();

                                                Hashtable hashProjectDetails = objdb.getLanguage();

                                                foreach (DictionaryEntry entry in hashProjectDetails)
                                                {
                                                    Response.Write("<option value=\""+entry.Key+"\">" + entry.Value + "</option>");
                                                }
                                                    
                                            }
                                            catch (Exception ex)
                                            {
                                                Response.Write("Not Available"+ex.Message);
                                            }
                                            
                                            %>
                                            </option>
                                    </select>
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Specify Test Case Name</label>
                                          
                                            <input class="form-control" type="text" name="Testcasename" id="Testcasename"  />
                                             
                                        </div>
                                       
                                       
                                         <div class="form-group">
                                            <label>Status</label>
                                            <select id="Status" name="Status" class="form-control">
                                                <option value="TRUE">Active</option>
                                                 <option value="FALSE">InActive</option>
                                               
                                            </select>
                                        </div>

                                      <div class="form-group">
                                            <label>Priority</label>
                                            <select id="Priority" name="Priority" class="form-control">
                                                <option value="HIGH">High</option>
                                                 <option value="LOW">Low</option>
                                                 <option value="MEDIUM">Medium</option>
                                               
                                            </select>
                                        </div>
                                        <div  class="form-group">
                                            <label> Description</label>
                                            <textarea class="form-control" name="Des" id="Des" rows="3"></textarea>
                                        </div>
                                      
                                      
                                       
                                      
                                      
                                      
                                        <%-- <button type="submit"  class="btn btn-default";onclick="check()">Submit Button</button>
                                        <input type="submit" value="Assign"  class="default" id="UpdateTestDataSubmitBtnd1" style="width:20%"; onclick="check()" /> --%>

                                      
                                       
                                       <%-- <button type="reset" class="btn btn-default">Reset Button</button>--%>
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
            </div>
    </div>
    </form>
</body>
</html>

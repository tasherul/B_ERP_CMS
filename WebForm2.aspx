<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="B_ERP_CMS.WebForm2" %>




<!DOCTYPE html>
<html>

<!-- Mirrored from admindesigns.com/demos/fusion/theme/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 Jan 2018 17:37:57 GMT -->
<head>

    <meta charset="utf-8">
    <title>Fusion - A Responsive HTML5 Admin UI Template Theme</title>
    <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
    <meta name="description" content="Fusion - A Responsive HTML5 Admin UI Template Theme">
    <meta name="author" content="AdminDesigns">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800'>

    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">


    <link rel="stylesheet" type="text/css" href="css/vendor.css">
    <link rel="stylesheet" type="text/css" href="css/theme.css">
    <link rel="stylesheet" type="text/css" href="css/utility.css">
    <link rel="stylesheet" type="text/css" href="css/custom.css">

    <link rel="shortcut icon" href="img/favicon.ico">

    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
</head>
<body class="dashboard-page">
    <script> var boxtest = localStorage.getItem('boxed'); if (boxtest === 'true') { document.body.className += ' boxed-layout'; } </script>

    <div id="skin-toolbox">
        <div class="skin-toolbox-toggle"><i class="fa fa-wrench"></i></div>
        <div class="skin-toolbox-panel">
            <form id="skin-toolbox-form">
                <h4 class="pl5">Theme Options</h4>
                <div class="form-group">
                    <div class="cBox cBox-inline">
                        <input type="checkbox" id="ajax-option" checked />
                        <label for="ajax-option">Ajax Loading</label>
                    </div>
                </div>
                <h4 class="pl5 mt20">Stylesss Options</h4>
                <div class="form-group">
                    <div class="cBox cBox-inline">
                        <input type="checkbox" id="header-option" checked />
                        <label for="header-option">Fixed Header</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="cBox cBox-inline">
                        <input type="checkbox" id="sidebar-option" />
                        <label for="sidebar-option">Fixed Sidebar</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="cBox cBox-inline">
                        <input type="checkbox" id="breadcrumb-hidden" />
                        <label for="breadcrumb-hidden">Hide Breadcrumbs</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="cBox cBox-inline">
                        <input type="checkbox" id="usermenu-hidden" />
                        <label for="usermenu-hidden">Hide Usermenu</label>
                    </div>
                </div>
                <h4 class="pl5 mt20">Layout Options</h4>
                <div class="form-group">
                    <label class="radio-inline">
                        <input type="radio" name="optionsRadios" id="fullwidth-option" checked>
                        Fullwidth
                    </label>
                </div>
                <div class="form-group mb20">
                    <label class="radio-inline">
                        <input type="radio" name="optionsRadios" id="boxed-option">
                        Boxed Layouts
                    </label>
                </div>
                <h4 class="pl5 mt20">Header Colors</h4>
                <div class="form-group mb10">
                    <div class="toggle-color-wrap">
                        <div class="toggle-color-swap bg-purple3" data-swap="bg-purple3"></div>
                        <div class="toggle-color-swap bg-purple2" data-swap="bg-purple2"></div>
                        <div class="toggle-color-swap bg-blue4-alt" data-swap="bg-blue4-alt"></div>
                        <div class="toggle-color-swap bg-blue5-alt" data-swap="bg-blue5-alt"></div>
                        <div class="toggle-color-swap bg-blue6-alt" data-swap="bg-blue6-alt"></div>
                        <div class="toggle-color-swap bg-red2" data-swap="bg-red2"></div>
                        <div class="toggle-color-swap bg-orange2" data-swap="bg-orange2"></div>
                        <div class="toggle-color-swap bg-brown-alt" data-swap="bg-brown-alt"></div>
                        <div class="toggle-color-swap bg-dark3" data-swap="bg-dark3"></div>
                        <div class="toggle-color-swap bg-white" data-swap="bg-white"></div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="form-group"><a href="customizer.html" id="customizer-link" class="btn btn-gradient btn-block">CUSTOMIZER</a> </div>
            </form>
        </div>
    </div>

    <header class="navbar navbar-fixed-top">
        <div class="navbar-branding"><span id="toggle_sidemenu_l" class="glyphicons glyphicons-show_lines"></span><a class="navbar-brand" href="dashboard.html">
            <img src="img/logos/header-logo.png"></a> </div>
        <div class="navbar-left">
            <div class="navbar-divider"></div>
            <div id="settings_menu">
                <span class="glyphicons glyphicons-settings dropdown-toggle cursor" data-toggle="dropdown"></span>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="javascript:void(0);"><span class="glyphicons glyphicons-user text-red2 mr15"></span>Users</a></li>
                    <li><a href="javascript:void(0);"><span class="glyphicons glyphicons-cargo text-purple2 mr15"></span>Servers</a></li>
                    <li><a href="javascript:void(0);"><span class="glyphicons glyphicons-history text-grey2 mr15"></span>Crons</a></li>
                </ul>
            </div>
            <div id="language_menu">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="flag-xs flag-us"></span><span class="small va-m">US</span> <i class="fa fa-angle-down text-dark"></i></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="javascript:void(0);"><span class="flag-xs flag-in"></span>Hindu</a></li>
                    <li><a href="javascript:void(0);"><span class="flag-xs flag-tr"></span>Turkish</a></li>
                    <li><a href="javascript:void(0);"><span class="flag-xs flag-es"></span>Spanish</a></li>
                </ul>
            </div>
        </div>
        <div class="navbar-right">
            <div class="navbar-search">
                <input type="text" id="HeaderSearch" placeholder="Search..." value="Search...">
            </div>
            <div class="navbar-menus">
                <div class="btn-group" id="alert_menu">
                    <button type="button" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicons glyphicons-bell"></span><b>3</b> </button>
                    <ul class="dropdown-menu media-list" role="menu">
                        <li class="dropdown-header">Recent Alerts<span class="pull-right glyphicons glyphicons-bell"></span></li>
                        <li class="p15 pb10">
                            <ul class="list-unstyled">
                                <li><span class="glyphicons glyphicons-bell text-orange2 fs16 mr15"></span><b>CEO</b> lunch meeting Tuesday</li>
                                <li class="pt10"><span class="glyphicons glyphicons-facebook text-blue2 fs16 mr15"></span>Facebook likes are at <b>4,100</b></li>
                                <li class="pt10"><span class="glyphicons glyphicons-paperclip text-teal2 fs16 mr15"></span>Mark <b>uploaded</b> 3 new Docs</li>
                                <li class="pt10"><span class="glyphicons glyphicons-gift text-purple2 fs16 mr15"></span>It's <b>Marks</b> 34th Birthday</li>
                                <li class="pt10"><span class="glyphicons glyphicons-cup text-red2 fs16 mr15"></span>Best new employee awarded to <b>Jessica</b></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="btn-group" id="comment_menu">
                    <button type="button" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicons glyphicons-display"></span><b>7</b> </button>
                    <div class="dropdown-menu" role="menu">
                        <ul class="nav nav-tabs tabs-border-bottom" role="tablist">
                            <li class="active"><a href="#header_tab1" role="tab" data-toggle="tab">Messages</a></li>
                            <li><a href="#header_tab2" role="tab" data-toggle="tab">Tickets</a></li>
                            <li><a href="#header_tab3" role="tab" data-toggle="tab">Todo List</a></li>
                        </ul>

                        <div class="tab-content pn border-none dropdown-persist">
                            <div class="tab-pane active" id="header_tab1">
                                <div class="dropdown-submenu dropdown-persist">
                                    <div class="row">
                                        <div class="col-xs-8">
                                            <input class="dropdownSearch" type="text" placeholder="Search...">
                                        </div>
                                        <div class="col-xs-4">
                                            <div class="cBox cBox-inline ml20">
                                                <input type="checkbox" id="headercBox1" name="check" value="None" />
                                                <label for="headercBox1">Delete</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="p15">
                                    <div class="media border-none">
                                        <a class="pull-left" href="#">
                                            <img class="media-object thumbnail thumbnail-sm rounded" src="img/avatars/2.jpg" alt="...">
                                        </a>
                                        <div class="media-body">
                                            <h5 class="media-heading mbn">Simon Rivers <small class="text-light5">- 3 hours ago</small></h5>
                                            <p class="text-muted">Hey Louis, I was wondering if</p>
                                        </div>
                                    </div>
                                    <div class="media mt10 border-none">
                                        <a class="pull-left" href="#">
                                            <img class="media-object thumbnail thumbnail-sm rounded border-online" src="img/avatars/6.jpg" alt="...">
                                        </a>
                                        <div class="media-body">
                                            <h5 class="media-heading mbn">Tracy Rope <small class="text-light5">- 8 hours ago</small></h5>
                                            <p class="text-muted">Bam baby get at, I was</p>
                                        </div>
                                    </div>
                                    <div class="media mt10 border-none">
                                        <a class="pull-left" href="#">
                                            <img class="media-object thumbnail thumbnail-sm rounded border-online" src="img/avatars/8.jpg" alt="...">
                                        </a>
                                        <div class="media-body">
                                            <h5 class="media-heading mbn">Courtney Dash <small class="text-light5">- 3 days ago</small></h5>
                                            <p class="text-muted">I was wonde awesome brief </p>
                                        </div>
                                    </div>
                                    <div class="media mt10 border-none">
                                        <a class="pull-left" href="#">
                                            <img class="media-object thumbnail thumbnail-sm rounded border-light5" src="img/avatars/2.jpg" alt="...">
                                        </a>
                                        <div class="media-body">
                                            <h5 class="media-heading mbn">Simon Rivers <small class="text-light5">- 3 hours ago</small></h5>
                                            <p class="text-muted mbn">Hey Louis, I was wondering </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="header_tab2">
                                <div class="dropdown-submenu dropdown-persist">
                                    <div class="cBox cBox-inline cBox-orange ml15 p1">
                                        <input type="checkbox" id="headercBox2" name="check" value="None" />
                                        <label for="headercBox2">Closed</label>
                                    </div>
                                    <div class="cBox cBox-inline cBox-purple">
                                        <input type="checkbox" id="headercBox3" name="check" value="None" />
                                        <label for="headercBox3">Low</label>
                                    </div>
                                    <div class="cBox cBox-inline cBox-blue">
                                        <input type="checkbox" id="headercBox4" name="check" value="None" />
                                        <label for="headercBox4">Med</label>
                                    </div>
                                    <div class="cBox cBox-inline cBox-red2 cBox-gradient">
                                        <input type="checkbox" id="headercBox5" name="check" value="None" checked />
                                        <label for="headercBox5">Urgent</label>
                                    </div>
                                </div>
                                <div class="sortable mt10 mb10">
                                    <div class="todo-item table-layout p8">
                                        <div class="todo-handle va-m">
                                            <div class="v-handle"></div>
                                        </div>
                                        <div class="todo-body va-m"><b class="text-muted">[Ticket #1]</b> - Validation Errors <small class="text-blue2">[read more..]</small></div>
                                    </div>
                                    <div class="todo-item table-layout p8">
                                        <div class="todo-handle va-m">
                                            <div class="v-handle"></div>
                                        </div>
                                        <div class="todo-body va-m"><b class="text-muted">[Ticket #2]</b> - User Profile Debug<small class="text-blue2"> [read more..]</small></div>
                                    </div>
                                    <div class="todo-item table-layout p8">
                                        <div class="todo-handle va-m">
                                            <div class="v-handle"></div>
                                        </div>
                                        <div class="todo-body va-m"><b class="text-muted">[Ticket #3]</b> - User hacked <small class="text-blue2">[read more..]</small></div>
                                    </div>
                                    <div class="todo-item table-layout p8">
                                        <div class="todo-handle va-m">
                                            <div class="v-handle"></div>
                                        </div>
                                        <div class="todo-body va-m"><b class="text-muted">[Ticket #4]</b> - Mailbox Debug <small class="text-blue2">[read more..]</small></div>
                                    </div>
                                    <div class="todo-item table-layout p8">
                                        <div class="todo-handle va-m">
                                            <div class="v-handle"></div>
                                        </div>
                                        <div class="todo-body va-m"><b class="text-muted">[Ticket #5]</b> - User Profile Debug<small class="text-blue2"> [read more..]</small></div>
                                    </div>
                                    <div class="todo-item table-layout p8">
                                        <div class="todo-handle va-m">
                                            <div class="v-handle"></div>
                                        </div>
                                        <div class="todo-body va-m"><b class="text-muted">[Ticket #6]</b> - User Profile Debug<small class="text-blue2"> [read more..]</small></div>
                                    </div>
                                    <div class="todo-item table-layout p8">
                                        <div class="todo-handle va-m">
                                            <div class="v-handle"></div>
                                        </div>
                                        <div class="todo-body va-m"><b class="text-muted">[Ticket #7]</b> - User Profile Debug<small class="text-blue2"> [read more..]</small></div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="header_tab3">
                                <div class="dropdown-submenu dropdown-persist">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <input class="dropdownSearch" type="text" placeholder="Create New Item...">
                                        </div>
                                    </div>
                                </div>
                                <div class="ticket-item table-layout">
                                    <div class="ticket-handle va-m">
                                        <div class="cBox ml10">
                                            <input type="checkbox" id="headercBox7" name="check" value="None" />
                                            <label for="headercBox7"></label>
                                        </div>
                                    </div>
                                    <div class="ticket-body p10 va-m"><b class="text-muted">[#2]</b> - IE8 Profile Drag Errors <span class="label label-sm bg-grey2 ml10">Javascript</span></div>
                                </div>
                                <div class="ticket-item table-layout">
                                    <div class="ticket-handle va-m">
                                        <div class="cBox ml10">
                                            <input type="checkbox" id="headercBox6" name="check" value="None" />
                                            <label for="headercBox6"></label>
                                        </div>
                                    </div>
                                    <div class="ticket-body p10 va-m"><b class="text-muted">[#1]</b> - Validation Errors on USCM testing facitiliy <small class="text-red2">- Urgent</small></div>
                                </div>
                                <div class="ticket-item table-layout">
                                    <div class="ticket-handle va-m">
                                        <div class="cBox ml10">
                                            <input type="checkbox" id="headercBox9" name="check" value="None" />
                                            <label for="headercBox9"></label>
                                        </div>
                                    </div>
                                    <div class="ticket-body p10 va-m"><b class="text-muted">[#4]</b> - CSS Problems with Tables <span class="label label-sm bg-orange2 ml10">CSS</span></div>
                                </div>
                                <div class="ticket-item table-layout">
                                    <div class="ticket-handle va-m">
                                        <div class="cBox ml10">
                                            <input type="checkbox" id="headercBox10" name="check" value="None" />
                                            <label for="headercBox10"></label>
                                        </div>
                                    </div>
                                    <div class="ticket-body p10 va-m"><b class="text-muted">[#5]</b> - PHP Form validation errors occuring on email page<span class="label label-sm bg-purple2 ml10">PHP</span></div>
                                </div>
                                <div class="ticket-item table-layout">
                                    <div class="ticket-handle va-m">
                                        <div class="cBox ml10">
                                            <input type="checkbox" id="headercBox8" name="check" value="None" />
                                            <label for="headercBox8"></label>
                                        </div>
                                    </div>
                                    <div class="ticket-body p10 pb15 va-m"><b class="text-muted">[#3]</b> - Mailbox Validation Errors on Firefox</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-group" id="toggle_sidemenu_r">
                    <button type="button"><span class="glyphicons glyphicons-parents"></span></button>
                </div>
            </div>
        </div>
    </header>

    <div id="main">

        <aside id="sidebar_left">
            <div class="user-info">
                <div class="media">
                    <a class="pull-left" href="#">
                        <div class="media-object border border-purple br64 bw2 p2">
                            <img class="br64" src="img/avatars/5.jpg" alt="...">
                        </div>
                    </a>
                    <div class="mobile-link"><span class="glyphicons glyphicons-show_big_thumbnails"></span></div>
                    <div class="media-body">
                        <h5 class="media-heading mt5 mbn fw700 cursor">John.Smith<span class="caret ml5"></span></h5>
                        <div class="media-links fs11"><a href="#">Menu</a><i class="fa fa-circle text-muted fs3 p8 va-m"></i><a href="screen-lock.html">Sign Out</a></div>
                    </div>
                </div>
            </div>
            <div class="user-divider"></div>
            <div class="user-menu">
                <div class="row text-center mb15">
                    <div class="col-xs-4">
                        <a href="dashboard.html"><span class="glyphicons glyphicons-home fs22 text-blue2"></span>
                            <h5 class="fs11">Home</h5>
                        </a>
                    </div>
                    <div class="col-xs-4">
                        <a href="messages.html"><span class="glyphicons glyphicons-inbox fs22 text-orange2"></span>
                            <h5 class="fs11">Inbox</h5>
                        </a>
                    </div>
                    <div class="col-xs-4">
                        <a href="tables.html"><span class="glyphicons glyphicons-bell fs22 text-purple2"></span>
                            <h5 class="fs11">Data</h5>
                        </a>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col-xs-4 text-center">
                        <a href="timeline.html"><span class="glyphicons glyphicons-imac fs22 text-grey3"></span>
                            <h5 class="fs11">Views</h5>
                        </a>
                    </div>
                    <div class="col-xs-4">
                        <a href="profile.html"><span class="glyphicons glyphicons-settings fs22 text-green2"></span>
                            <h5 class="fs11">Settings</h5>
                        </a>
                    </div>
                    <div class="col-xs-4">
                        <a href="gallery.html"><span class="glyphicons glyphicons-restart fs22 text-light6"></span>
                            <h5 class="fs11">Images</h5>
                        </a>
                    </div>
                </div>
            </div>
            <div class="sidebar-menu">
                <ul class="nav">
                    <li><a href="customizer.html" class="ajax-disable"><span class="glyphicons glyphicons-eyedropper"></span><span class="sidebar-title">Customizer</span> <span class="sidebar-title-tray"><span class="label label-xs bg-purple2">New</span> </span></a></li>
                    <li><a href="messages.html" class="ajax-disable"><span class="glyphicons glyphicons-inbox"></span><span class="sidebar-title">Messages</span></a> </li>
                    <li class="active"><a href="dashboard.html"><span class="glyphicons glyphicons-home"></span><span class="sidebar-title">Dashboard</span></a> </li>
                    <li><a class="accordion-toggle menu-open" href="#resources"><span class="glyphicons glyphicons-settings"></span><span class="sidebar-title">Resources</span><span class="caret"></span></a>
                        <ul id="resources" class="nav sub-nav">
                            <li><a class="ajax-disable" href="http://admindesigns.com/demos/fusion/documentation/index.html"><span class="glyphicons glyphicons-book"></span>Documentation </a></li>
                            <li class="divider"></li>
                            <li><a class="ajax-disable" href="login.html"><span class="glyphicons glyphicons-power"></span>Login Page</a></li>
                            <li><a class="ajax-disable" href="screen-lock.html"><span class="glyphicons glyphicons-lock"></span>Screen Lock</a></li>
                            <li><a class="ajax-disable" href="coming-soon.html"><span class="glyphicons glyphicons-road"></span>Coming Soon</a></li>
                            <li><a class="ajax-disable" href="404-page.html"><span class="glyphicons glyphicons-circle_remove"></span>404 Page</a></li>
                            <li><a class="ajax-disable" href="500-page.html"><span class="glyphicons glyphicons-circle_exclamation_mark"></span>500 Page</a></li>
                        </ul>
                    </li>
                    <li><a class="accordion-toggle" href="#sideOne"><span class="glyphicons glyphicons-adjust_alt"></span><span class="sidebar-title">UI Elements</span><span class="caret"></span></a>
                        <ul id="sideOne" class="nav sub-nav">
                            <li><a href="portlets.html"><span class="glyphicons glyphicons-sort"></span>Portlets</a></li>
                            <li><a href="elements.html"><span class="glyphicons glyphicons-paperclip"></span>Elements</a></li>
                            <li><a href="charts.html"><span class="glyphicons glyphicons-stats"></span>Charts</a></li>
                            <li><a href="tabs.html"><span class="glyphicons glyphicons-adjust"></span>Tabs</a></li>
                            <li><a href="buttons.html"><span class="glyphicons glyphicons-macbook"></span>Buttons</a></li>
                            <li><a href="typography.html"><span class="glyphicons glyphicons-font"></span>Typography</a></li>
                            <li><a href="grid.html"><span class="glyphicons glyphicons-show_big_thumbnails"></span>Grid</a></li>
                        </ul>
                    </li>
                    <li><a class="accordion-toggle" href="#sideTwo"><span class="glyphicons glyphicons-vcard"></span><span class="sidebar-title">Form Elements</span><span class="caret"></span></a>
                        <ul id="sideTwo" class="nav sub-nav">
                            <li><a href="forms.html"><span class="glyphicons glyphicons-link"></span>Form Elements</a></li>
                            <li><a href="editors.html"><span class="glyphicons glyphicons-pencil"></span>Editors</a></li>
                            <li><a href="editable.html"><span class="glyphicons glyphicons-edit"></span>Inline Editing</a></li>
                            <li><a href="xedit.html"><span class="glyphicons glyphicons-check"></span>X-editable</a></li>
                            <li><a href="tables.html"><span class="glyphicons glyphicons-table"></span>Tables</a></li>
                            <li><a href="treeview.html"><span class="glyphicons glyphicons-tree_conifer"></span>Treeview</a></li>
                        </ul>
                    </li>
                    <li><a class="accordion-toggle" href="#sideSix"><span class="glyphicons glyphicons-globe"></span><span class="sidebar-title">Maps</span><span class="caret"></span></a>
                        <ul id="sideSix" class="nav sub-nav">
                            <li><a href="maps.html"><span class="glyphicons glyphicons-global"></span>GMaps</a></li>
                            <li><a href="map-full.html"><span class="glyphicons glyphicons-globe_af"></span>Window Map</a></li>
                            <li><a href="maps-vector.html"><span class="glyphicons glyphicons-vector_path_circle"></span>Vector Maps</a></li>
                        </ul>
                    </li>
                    <li><a class="accordion-toggle" href="#sideSeven"><span class="glyphicons glyphicons-book_open"></span><span class="sidebar-title">Pages</span><span class="caret"></span></a>
                        <ul id="sideSeven" class="nav sub-nav">
                            <li><a href="profile.html"><span class="glyphicons glyphicons glyphicons-user"></span>Profile</a></li>
                            <li><a href="invoice.html"><span class="glyphicons glyphicons-print"></span>Printable Invoice</a></li>
                            <li><a href="timeline.html"><span class="glyphicons glyphicons-film"></span>Timeline</a></li>
                            <li><a href="gallery.html"><span class="glyphicons glyphicons-picture"></span>Gallery</a></li>
                            <li><a href="calendar.html"><span class="glyphicons glyphicons-calendar"></span>Calendar</a></li>
                            <li><a href="faq.html"><span class="glyphicons glyphicons-edit"></span>Faq Page</a></li>
                            <li><a href="blank.html"><span class="glyphicons glyphicons-unchecked"></span>Blank Page</a></li>
                        </ul>
                    </li>
                    <li><a class="accordion-toggle" href="#sideFive"><span class="glyphicons glyphicons-magic"></span><span class="sidebar-title">Extras</span><span class="caret"></span></a>
                        <ul id="sideFive" class="nav sub-nav">
                            <li><a href="icons.html"><span class="glyphicons glyphicons-flash"></span>Icons</a></li>
                            <li><a href="animations.html"><span class="glyphicons glyphicons-fire"></span>Animations</a></li>
                            <li><a href="sliders.html"><span class="glyphicons glyphicons-retweet"></span>Sliders</a></li>
                            <li><a href="image-tools.html"><span class="glyphicons glyphicons-camera"></span>Image Tools</a></li>
                            <li><a href="sketchpad.html"><span class="glyphicons glyphicons-vector_path_square"></span>Sketchpad</a></li>
                        </ul>
                    </li>
                    <li><a class="accordion-toggle" href="#sideEight"><span class="glyphicons glyphicons-more_items"></span><span class="sidebar-title">Multi Level Nav</span><span class="caret"></span></a>
                        <ul id="sideEight" class="nav sub-nav">
                            <li><a href="javascript:void(0);" class="ajax-disable"><span class="glyphicons glyphicons-ok_2"></span>Item #1</a></li>
                            <li><a href="javascript:void(0);" class="ajax-disable"><span class="glyphicons glyphicons-ok_2"></span>Item #2</a></li>
                            <li><a class="accordion-toggle" href="#sideEight-sub"><span class="glyphicons glyphicons-show_lines"></span>2nd Level Nav<span class="caret"></span></a>
                                <ul id="sideEight-sub" class="nav sub-nav">
                                    <li><a href="javascript:void(0);" class="ajax-disable"><span class="glyphicons glyphicons-ok_2"></span>Item #1</a></li>
                                    <li><a href="javascript:void(0);" class="ajax-disable"><span class="glyphicons glyphicons-ok_2"></span>Item #2</a></li>
                                    <li><a class="accordion-toggle" href="#sideEight-sub-2"><span class="glyphicons glyphicons-show_lines"></span>3rd Level Nav<span class="caret"></span></a>
                                        <ul id="sideEight-sub-2" class="nav sub-nav">
                                            <li><a href="javascript:void(0);" class="ajax-disable"><span class="glyphicons glyphicons-ok_2"></span>Item #1</a></li>
                                            <li><a href="javascript:void(0);" class="ajax-disable"><span class="glyphicons glyphicons-ok_2"></span>Item #2</a></li>
                                            <li><a class="accordion-toggle" href="#sideEight-sub-2"><span class="glyphicons glyphicons-show_lines"></span>4th Level Nav<span class="caret"></span></a>
                                                <ul id="sideEight-sub-3" class="nav sub-nav">
                                                    <li><a href="javascript:void(0);" class="ajax-disable"><span class="glyphicons glyphicons-ok_2"></span>Item #1</a></li>
                                                    <li><a href="javascript:void(0);" class="ajax-disable"><span class="glyphicons glyphicons-ok_2"></span>Item #2</a></li>
                                                    <li><a href="javascript:void(0);" class="ajax-disable"><span class="glyphicons glyphicons-ok_2"></span>Item #3</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </aside>

        <section id="content_wrapper">
            <div id="topbar">
                <div class="topbar-left">
                    <ol class="breadcrumb">
                        <li class="crumb-active"><a href="dashboard.html">Dashboard</a></li>
                        <li class="crumb-icon"><a href="dashboard.html"><span class="glyphicon glyphicon-home"></span></a></li>
                        <li class="crumb-link"><a href="index.html">Home</a></li>
                        <li class="crumb-trail">Dashboard</li>
                    </ol>
                </div>
                <div class="topbar-right">
                    <div class="dashboard-widget-tray">
                        <button type="button" class="btn btn-default btn-gradient btn-sm br4">Widgets</button>
                        <button type="button" class="btn btn-default btn-gradient btn-sm br4"><i class="fa fa-gear text-purple2"></i></button>
                    </div>
                </div>
            </div>
            <div id="content">
                <div id="widget-dropdown" class="row">
                    <div class="col-sm-3">
                        <div class="panel panel-overflow mb10">
                            <div class="panel-body pn pl20">
                                <div class="icon-bg"><i class="fa fa-envelope text-grey"></i></div>
                                <h2 class="mt15 lh15 text-grey2"><b>728</b></h2>
                                <h5 class="text-muted">Connections</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="panel panel-overflow mb10">
                            <div class="panel-body pn pl20">
                                <div class="icon-bg"><i class="fa fa-bar-chart-o text-teal"></i></div>
                                <h2 class="mt15 lh15 text-teal2"><b>267</b></h2>
                                <h5 class="text-muted">Reach</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="panel panel-overflow mb10">
                            <div class="panel-body pn pl20">
                                <div class="icon-bg"><i class="fa fa-comments-o text-blue"></i></div>
                                <h2 class="mt15 lh15 text-blue2"><b>523</b></h2>
                                <h5 class="text-muted">Comments</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="panel panel-overflow mb10">
                            <div class="panel-body pn pl20">
                                <div class="icon-bg"><i class="fa fa-twitter text-purple"></i></div>
                                <h2 class="mt15 lh15 text-purple2"><b>348</b></h2>
                                <h5 class="text-muted">Tweets</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <span class="panel-title"><i class="fa fa-pencil"></i>Live Site Activity </span>
                                <ul class="nav panel-tabs">
                                    <li class="active"><a href="#tab1" data-toggle="tab">Statistics</a></li>
                                    <li><a href="#tab2" data-toggle="tab">Social</a></li>
                                    <li><a href="#tab3" data-toggle="tab">Tickets</a></li>
                                </ul>
                            </div>
                            <div class="panel-body pn">
                                <div class="tab-content border-none pn">
                                    <div id="tab1" class="tab-pane active p15">
                                        <div class="row">
                                            <div class="col-lg-8 pn">
                                                <div id="graph" style="height: 395px; width: 100%;"></div>
                                            </div>
                                            <div class="col-lg-4 visible-lg pl5">
                                                <h4 class="text-uppercase mbn">Server Statistics </h4>
                                                <h6 class="mb15">Summary of recent server events. </h6>
                                                <div class="small mb5">Disk Usage (82.2%)</div>
                                                <div class="progress progress-sm mb10">
                                                    <div class="progress-bar progress-bar-purple" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 86%;"><span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="small mb5">Disk Usage (82.2%)</div>
                                                <div class="progress progress-sm mb10">
                                                    <div class="progress-bar progress-bar-orange" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 70%;"><span class="sr-only">60% Complete</span> </div>
                                                </div>
                                                <div class="small mb5">Disk Usage (82.2%)</div>
                                                <div class="progress progress-sm">
                                                    <div class="progress-bar progress-bar-teal" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 24%"><span class="sr-only">40% Complete (success)</span> </div>
                                                </div>
                                                <div class="btn-tray mt25 mb15">
                                                    <h4 class="text-uppercase mbn hidden">Map Events </h4>
                                                    <h6 class="mb15 hidden">Summary of locational sales. </h6>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <button type="button" class="btn btn-default btn-gradient btn-block btn-sm">USA</button>
                                                        </div>
                                                        <div class="col-md-4 pln prn">
                                                            <button type="button" class="btn btn-default btn-gradient btn-block btn-sm">Turkey</button>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <button type="button" class="btn btn-default btn-gradient btn-block btn-sm">India</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="map1" class="jvector-simple" style="width: 100%; height: 155px;"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="tab2" class="tab-pane">
                                        <div class="table-layout">
                                            <div class="col-sm-3 va-t panel-sidemenu p25 border-right hidden-xs">
                                                <h4 class="mb25">Social </h4>
                                                <div id="choices"></div>
                                                <div class="divider"></div>
                                                <ul class="list-unstyled fs12">
                                                    <li class="text-muted"><span class="glyphicons glyphicons-facebook text-blue2 fs16 mr15"></span>27 <b>Likes</b> <small>- 1 Hours ago</small></li>
                                                    <li class="pt5 text-muted"><span class="glyphicons glyphicons-twitter text-teal2 fs16 mr15"></span>14 <b>Tweets</b> <small>- 4 Hours ago</small></li>
                                                    <li class="pt5 text-muted"><span class="glyphicons glyphicons-pinterest text-red2 fs16 mr15"></span>29 <b>Shares</b> <small>- 7 Hours ago</small></li>
                                                    <li class="pt5 text-muted"><span class="glyphicons glyphicons-twitter text-teal2 fs16 mr15"></span>42 <b>Tweets</b> <small>- 8 Hours ago</small></li>
                                                    <li class="pt5 text-muted"><span class="glyphicons glyphicons-instagram text-orange2 fs16 mr15"></span>16 <b>Comments</b> <small>- 12 Hours ago</small></li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-9 p20 pb35">
                                                <div class="chart-toggle" style="height: 365px; width: 100%;"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="tab3" class="tab-pane p15">
                                        <table class="table table-widget table-striped table-checklist mt15" id="datatable">
                                            <thead>
                                                <tr>
                                                    <th>Task</th>
                                                    <th>Progress</th>
                                                    <th>Skills</th>
                                                    <th>Notes</th>
                                                    <th>Deadline</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-slash">Test Building presentation <b>Capacity</b></td>
                                                    <td>
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-purple" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 60%"><span class="sr-only">40% Complete (success)</span> </div>
                                                        </div>
                                                    </td>
                                                    <td><span class="label bg-grey2">Patience</span></td>
                                                    <td class="text-slash text-muted"><small>400 people will attend</small></td>
                                                    <td class="text-slash semi-bold">11/14/2013</td>
                                                    <td class="text-right">
                                                        <div class="cBox cBox-inline">
                                                            <input type="checkbox" id="tableBox" name="check" value="None" />
                                                            <label for="tableBox"></label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-slash">Write check to <b>Kids Hospital</b> for Holiday</td>
                                                    <td>
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-orange" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"><span class="sr-only">40% Complete (success)</span> </div>
                                                        </div>
                                                    </td>
                                                    <td><span class="label bg-blue">A Heart</span></td>
                                                    <td class="text-slash text-muted"><small>Amount is still $4,500</small></td>
                                                    <td class="text-slash semi-bold">11/14/2013</td>
                                                    <td class="text-right">
                                                        <div class="cBox cBox-inline">
                                                            <input type="checkbox" id="tableBox2" name="check" value="None" />
                                                            <label for="tableBox2"></label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-slash"><b>Upload</b> all 1400 Icons to Server</td>
                                                    <td>
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-teal" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"><span class="sr-only">80% Complete</span> </div>
                                                        </div>
                                                    </td>
                                                    <td><span class="label bg-orange">Python</span><span class="label bg-purple">DB</span></td>
                                                    <td class="text-slash text-muted"><small>400 people will attend</small></td>
                                                    <td class="text-slash semi-bold">11/14/2013</td>
                                                    <td class="text-right">
                                                        <div class="cBox cBox-inline">
                                                            <input type="checkbox" id="tableBox3" name="check" value="None" />
                                                            <label for="tableBox3"></label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-slash">Restyle <b>Themeforest</b> website design</td>
                                                    <td>
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 50%"><span class="sr-only">60% Complete (warning)</span> </div>
                                                        </div>
                                                    </td>
                                                    <td><span class="label bg-teal">CSS</span><span class="label bg-green">Html</span></td>
                                                    <td class="text-slash text-muted"><small>400 people will attend</small></td>
                                                    <td class="text-slash semi-bold">11/14/2013</td>
                                                    <td class="text-right">
                                                        <div class="cBox cBox-inline">
                                                            <input type="checkbox" id="tableBox4" name="check" value="None" />
                                                            <label for="tableBox4"></label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-slash">Write check to <b>Kids Hospital</b> for Holiday</td>
                                                    <td>
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-orange" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"><span class="sr-only">40% Complete (success)</span> </div>
                                                        </div>
                                                    </td>
                                                    <td><span class="label bg-blue">A Heart</span></td>
                                                    <td class="text-slash text-muted"><small>Amount is still $4,500</small></td>
                                                    <td class="text-slash semi-bold">11/14/2013</td>
                                                    <td class="text-right">
                                                        <div class="cBox cBox-inline">
                                                            <input type="checkbox" id="tableBox5" name="check" value="None" />
                                                            <label for="tableBox5"></label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-slash">Write check to <b>Kids Hospital</b> for Holiday</td>
                                                    <td>
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-orange" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"><span class="sr-only">40% Complete (success)</span> </div>
                                                        </div>
                                                    </td>
                                                    <td><span class="label bg-blue">A Heart</span></td>
                                                    <td class="text-slash text-muted"><small>Amount is still $4,500</small></td>
                                                    <td class="text-slash semi-bold">11/14/2013</td>
                                                    <td class="text-right">
                                                        <div class="cBox cBox-inline">
                                                            <input type="checkbox" id="tableBox6" name="check" value="None" />
                                                            <label for="tableBox6"></label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-slash"><b>Upload</b> all 1400 Icons to Server</td>
                                                    <td>
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-teal" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"><span class="sr-only">80% Complete</span> </div>
                                                        </div>
                                                    </td>
                                                    <td><span class="label bg-orange">Python</span><span class="label bg-purple">DB</span></td>
                                                    <td class="text-slash text-muted"><small>400 people will attend</small></td>
                                                    <td class="text-slash semi-bold">11/14/2013</td>
                                                    <td class="text-right">
                                                        <div class="cBox cBox-inline">
                                                            <input type="checkbox" id="tableBox7" name="check" value="None" />
                                                            <label for="tableBox7"></label>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <div class="row">
                                    <div class="col-lg-3 visible-lg mt5">
                                        <div class="text-block text-center">
                                            <h5 class="mbn text-muted">This Years Total Sales</h5>
                                            <h4 class="mb5"><b>$1,532,512 </b></h4>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-9 mt5 pr25">
                                        <div class="row">
                                            <div class="col-xs-6 col-sm-3 text-center">
                                                <div class="media">
                                                    <div class="media-object pull-left pt10 mrn"><span class="stateface stateface-ca fs26 text-purple"></span></div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading mbn">San Jose, CA </h6>
                                                        <h5 class="mb5">$47,112</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-3 text-center">
                                                <div class="media">
                                                    <div class="media-object pull-left pt10 mrn"><span class="stateface stateface-tx fs24 text-orange"></span></div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading mbn">Denver, CO </h6>
                                                        <h5 class="mb5">$32,512</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-3 text-center">
                                                <div class="media">
                                                    <div class="media-object pull-left pt10 mrn"><span class="stateface stateface-mo fs22 text-teal"></span></div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading mbn">St. Louis, MO </h6>
                                                        <h5 class="mb5">$14,532</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-3 text-center prn">
                                                <div class="media">
                                                    <div class="media-object pull-left pt10 mrn"><span class="stateface stateface-ny fs24 text-green2"></span></div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading mbn">New York, NY </h6>
                                                        <h5 class="mb5">$75,116</h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="panel panel-overflow mb10 hidden">
                            <div class="row">
                                <div class="col-md-4 facebook-color text-center p20"><i class="fa fa-facebook fs35 text-white"></i></div>
                                <div class="col-md-4 twitter-color text-center p20"><i class="fa fa-facebook fs35 text-white"></i></div>
                                <div class="col-md-4 bg-orange text-center p20"><i class="fa fa-facebook fs35 text-white"></i></div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 text-center p10">
                                    <h3 class="text-muted">1,215 </h3>
                                </div>
                                <div class="col-md-4 text-center p10">
                                    <h3>584 </h3>
                                </div>
                                <div class="col-md-4 text-center p10">
                                    <h3>907 </h3>
                                </div>
                            </div>
                        </div>
                        <div class="row hidden">
                            <div class="col-sm-6">
                                <div class="panel panel-overflow mb10">
                                    <div class="row table-layout">
                                        <div class="col-xs-5 facebook-color text-center va-m p10"><i class="fa fa-facebook fs35 text-white"></i></div>
                                        <div class="col-xs-7 va-m pl15">
                                            <h3 class="mt15 lh5"><b>5,159</b></h3>
                                            <h5 class="text-muted">Likes</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="panel panel-overflow mb10">
                                    <div class="row table-layout">
                                        <div class="col-xs-5 twitter-color text-center va-m p10"><i class="fa fa-twitter fs35 text-white"></i></div>
                                        <div class="col-xs-7 va-m pl15">
                                            <h3 class="mt15 lh5"><b>248</b></h3>
                                            <h5 class="text-muted">Tweets</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row hidden">
                            <div class="col-sm-6">
                                <div class="panel panel-overflow mb10">
                                    <div class="row table-layout">
                                        <div class="col-xs-5 bg-green2 text-center va-m p10"><i class="fa fa-credit-card fs35 text-white"></i></div>
                                        <div class="col-xs-7 va-m pl15">
                                            <h3 class="mt15 lh5"><b>1459</b></h3>
                                            <h5 class="text-muted">Orders</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="panel panel-overflow mb10">
                                    <div class="row table-layout">
                                        <div class="col-xs-5 bg-grey2 text-center va-m p10"><i class="fa fa-inbox fs35 text-white"></i></div>
                                        <div class="col-xs-7 va-m pl15">
                                            <h3 class="mt15 lh5"><b>32</b></h3>
                                            <h5 class="text-muted">Emails</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-overflow">
                            <div class="panel-heading hidden">
                                <span class="panel-title"><i class="fa fa-calendar"></i>Thursday - April 10th</span>
                                <div class="panel-header-menu pull-right mr10"><span class="small text-muted">14/22/2014</span></div>
                            </div>
                            <div class="row table-layout table-clear-xs">
                                <div class="col-sm-4 panel-sidemenu border-right p25 pt20">
                                    <h4 class="mb25">Todays Appointments </h4>
                                    <div class="media">
                                        <a class="pull-left" href="#">
                                            <div class="media-object border border-orange br64 bw2 p2"><span class="glyphicon glyphicon-magnet icon-circle bg-orange2 text-white"></span></div>
                                        </a>
                                        <div class="media-body">
                                            <h5 class="media-heading p4">Simon Rivers
                                                <br />
                                                <small>What's up, buddy</small></h5>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <a class="pull-left mr15" href="#">
                                            <div class="media-object border border-purple br64 bw2 p2"><span class="glyphicon glyphicon-magnet icon-circle bg-purple2 text-white"></span></div>
                                        </a>
                                        <div class="media-body">
                                            <h5 class="media-heading p4">Tracy Faught
                                                <br />
                                                <small>What's up, buddy</small></h5>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <a class="pull-left mr15" href="#">
                                            <div class="media-object border border-teal br64 bw2 p2"><span class="glyphicon glyphicon-magnet icon-circle bg-teal2 text-white"></span></div>
                                        </a>
                                        <div class="media-body">
                                            <h5 class="media-heading p4">Kevin Smith
                                                <br />
                                                <small>What's up, buddy</small></h5>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <a class="pull-left mr15" href="#">
                                            <div class="media-object border border-orange br64 bw2 p2"><span class="glyphicon glyphicon-magnet icon-circle bg-orange2 icon-purple text-white"></span></div>
                                        </a>
                                        <div class="media-body">
                                            <h5 class="media-heading p4">Courtney Sullivan
                                                <br />
                                                <small>What's up, buddy</small></h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-8 va-m p15 pt20">
                                    <div id="clndr"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-overflow chat-panel">
                            <div class="panel-heading">
                                <span class="panel-title"><i class="fa fa-calendar"></i>Group Chat</span>
                                <div class="pull-right pr15"><span class="small text-muted">4 New Messages</span></div>
                            </div>
                            <div class="panel-body p20 pb10 pt10">
                                <div class="panel-tray hidden">
                                    <div class="panel-tray-toggle"><i class="fa fa-gear"></i></div>
                                    <div class="panel-tray-body">
                                        <input class="form-control input-xs" type="text" placeholder="Filter..">
                                        <div class="p10">
                                            <h5 class="media-heading mb10">Simon Rivers <small class="text-green2">- Online Now</small></h5>
                                            <h5 class="media-heading mb10">Mike Ross <small class="text-green2">- Online Now</small></h5>
                                            <h5 class="media-heading mb10">Shiela Scary <small class="text-red2">- Busy</small></h5>
                                            <h5 class="media-heading mb10">Dell Lat <small class="text-muted">- 11 Hours</small></h5>
                                            <h5 class="media-heading mb10">Forest Whitaker <small class="text-muted">- 2 Days</small></h5>
                                            <h5 class="media-heading mb10">Ryan Markup <small class="text-muted">- 3 Hours</small></h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 pl10">
                                        <div class="media mt15">
                                            <a class="pull-left" href="#">
                                                <img class="media-object thumbnail thumbnail-sm rounded" src="img/avatars/2.jpg" alt="...">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading mb5">Simon Rivers <small>- 3 hours ago</small></h5>
                                                <p class="text-muted">Hey Louis, I was wondering if you had time yet</p>
                                            </div>
                                        </div>
                                        <div class="media mt15">
                                            <a class="pull-left" href="#">
                                                <img class="media-object thumbnail thumbnail-sm rounded" src="img/avatars/6.jpg" alt="...">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading mb5">Tracy Rope <small>- 8 hours ago</small></h5>
                                                <p class="text-muted">Bam baby get at, I was wondering</p>
                                            </div>
                                        </div>
                                        <div class="media mt15 mbn">
                                            <a class="pull-left" href="#">
                                                <img class="media-object thumbnail thumbnail-sm rounded" src="img/avatars/8.jpg" alt="...">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading mb5">Courtney Dash <small>- 3 days ago</small></h5>
                                                <p class="text-muted">I was wonde awesome brief and walnuts </p>
                                            </div>
                                        </div>
                                        <div class="media mt15">
                                            <a class="pull-left" href="#">
                                                <img class="media-object thumbnail thumbnail-sm rounded" src="img/avatars/2.jpg" alt="...">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading mb5">Simon Rivers <small>- 3 hours ago</small></h5>
                                                <p class="text-muted">Hey Louis, I was wondering if you had time yet</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <div class="row">
                                    <div class="col-xs-8 col-sm-9 prn">
                                        <input type="text" class="form-control" placeholder="Type Here...">
                                    </div>
                                    <div class="col-xs-4 col-sm-3">
                                        <button type="button" class="btn btn-default btn-gradient btn-block">Reply</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <aside id="sidebar_right">
            <div class="sidebar-right-header">
                <div class="pull-right posr">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-circle text-orange2 fs8"></i><span class="caret text-muted"></span></a>
                    <ul class="dropdown-menu dropdown-sm" role="menu">
                        <li class="menu-arrow">
                            <div class="menu-arrow-up"></div>
                        </li>
                        <li><a href="javascript:void(0);"><i class="fa fa-circle text-green2 pr5"></i>Online</a></li>
                        <li><a href="javascript:void(0);"><i class="fa fa-circle text-red2 pr5"></i>Busy</a></li>
                        <li class="divider"></li>
                        <li><a href="javascript:void(0);"><i class="fa fa-circle text-orange2 pr5"></i>Away</a></li>
                    </ul>
                </div>
                <div class="media mtn">
                    <a class="pull-left mt5" href="#">
                        <img class="thumbnail thumbnail-sm rounded" src="img/avatars/2.jpg" alt="...">
                    </a>
                    <div class="media-body">
                        <h5 class="small mt5 mbn text-cloud"><b>Current Status:</b></h5>
                        <h5 class="small text-white"><b>"Away: Lunch meeting"</b></h5>
                    </div>
                </div>
            </div>
            <div class="sidebar_right_content p25">
                <div class="sidebar_right_menu row text-center">
                    <div class="col-xs-4 pln">
                        <a href="calendar.html"><span class="glyphicons glyphicons-imac fs22 text-grey2"></span>
                            <h5 class="fs11 text-white">Calendar</h5>
                        </a>
                    </div>
                    <div class="col-xs-4">
                        <a href="profile.html"><span class="glyphicons glyphicons-settings fs22 text-green"></span>
                            <h5 class="fs11 text-white">Settings</h5>
                        </a>
                    </div>
                    <div class="col-xs-4 prn">
                        <a href="messages.html"><span class="glyphicons glyphicons-inbox fs22 text-orange"></span>
                            <h5 class="fs11 text-white">Inbox</h5>
                        </a>
                    </div>
                </div>
                <hr class="mb25 mtn border-dark3" />
                <h5 class="text-muted fs13 mb25">Notes</h5>
                <h5 class="text-white mbn">9:30 AM - Ford Pitch</h5>
                <p class="text-light6 fs12 fw600 mb15">Client expects a working draft</p>
                <h5 class="text-white mbn">12:15 AM - Lunch Meeting</h5>
                <p class="text-light6 fs12 fw600 mb15">To discuss Ford Pitch outcome</p>
                <h5 class="text-white mbn">2:30 AM - Computer Repair</h5>
                <p class="text-light6 fs12 fw600 mb15">Coming to replace failing HD </p>
                <h5 class="text-white mbn">4:15 AM - First Yoga Class</h5>
                <p class="text-light6 fs12 fw600">Ask about your free classes</p>
                <hr class="mb25 mt25 border-dark3" />
                <h5 class="text-muted fs13 pull-left mr20">Users</h5>
                <div class="btn-group pull-left">
                    <button type="button" class="btn btn-gradient btn-xs bg-blue7-alt dropdown-toggle fs11 fw600" data-toggle="dropdown"><i class="fa fa-circle text-green2 fs8 pr5"></i>Online <span class="caret caret-sm ml5"></span></button>
                    <ul class="dropdown-menu dropdown-sm" role="menu">
                        <li class="menu-arrow">
                            <div class="menu-arrow-up"></div>
                        </li>
                        <li><a href="javascript:void(0);"><i class="fa fa-circle text-green2 pr5"></i>Online</a></li>
                        <li><a href="javascript:void(0);"><i class="fa fa-circle text-red2 pr5"></i>Busy</a></li>
                        <li class="divider"></li>
                        <li><a href="javascript:void(0);"><i class="fa fa-circle text-orange2 pr5"></i>Away</a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
                <div class="media mt30 border-none">
                    <a class="pull-left" href="#">
                        <img class="media-object thumbnail thumbnail-sm rounded" src="img/avatars/4.jpg" alt="...">
                    </a>
                    <div class="media-body">
                        <h5 class="media-heading text-white mbn">Simon Rivers</h5>
                        <p class="text-muted fs12">What's up, buddy</p>
                    </div>
                </div>
                <div class="media border-none">
                    <a class="pull-left" href="#">
                        <img class="media-object thumbnail thumbnail-sm rounded" src="img/avatars/5.jpg" alt="...">
                    </a>
                    <div class="media-body">
                        <h5 class="media-heading text-white mbn">Eric Ulrich</h5>
                        <p class="text-muted fs12">Client Problem pg.14</p>
                    </div>
                </div>
                <div class="media border-none">
                    <a class="pull-left" href="#">
                        <img class="media-object thumbnail thumbnail-sm rounded" src="img/avatars/6.jpg" alt="...">
                    </a>
                    <div class="media-body">
                        <h5 class="media-heading text-white mbn">Hershel Sandin</h5>
                        <p class="text-muted fs12">Looking for an intern?</p>
                    </div>
                </div>
                <div class="media border-none">
                    <a class="pull-left" href="#">
                        <img class="media-object thumbnail thumbnail-sm rounded" src="img/avatars/7.jpg" alt="...">
                    </a>
                    <div class="media-body">
                        <h5 class="media-heading text-white mbn">Jacob Hill</h5>
                        <p class="text-muted fs12">Lunch meeting tomorrow.</p>
                    </div>
                </div>
                <div class="media border-none">
                    <a class="pull-left" href="#">
                        <img class="media-object thumbnail thumbnail-sm rounded" src="img/avatars/3.jpg" alt="...">
                    </a>
                    <div class="media-body">
                        <h5 class="media-heading text-white mbn">Dante Harper</h5>
                        <p class="text-muted fs12">I have a new twitter!</p>
                    </div>
                </div>
            </div>
        </aside>
    </div>


</body>

<!-- Mirrored from admindesigns.com/demos/fusion/theme/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 Jan 2018 17:38:43 GMT -->
</html>


<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from themesbrand.com/amezia/horizontal/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 29 Sep 2018 04:27:32 GMT -->
<head>
    <meta charset="utf-8">
    <title>Amezia - Responsive Bootstrap 4 Admin Dashboard</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta content="A premium admin dashboard template by themesbrand" name="description">
    <meta content="Themesbrand" name="author">
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <!--Morris Chart CSS -->
    <link rel="stylesheet" href="assets/plugins/morris/morris.css">
    <link href="assets/plugins/metro/MetroJs.min.css" rel="stylesheet">
    <!-- App css -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

    <!-- Top Bar Start -->
    <div class="topbar">
        <div class="topbar-main">
            <div class="container-fluid">
                <!-- LOGO -->
                <div class="topbar-left"><a href="index.html" class="logo"><span>
                    <img src="assets/images/logo-sm.png" alt="logo-small" class="logo-sm">
                </span><span>
                    <img src="assets/images/logo.png" alt="logo-large" class="logo-lg"></span></a></div>
                <!-- Navbar -->
                <nav class="navbar-custom">
                    <!-- Search input -->
                    <div class="search-wrap" id="search-wrap">
                        <div class="search-bar">
                            <input class="search-input" type="search" placeholder="Search here..">
                            <a href="javascript:void(0);" class="close-search search-btn" data-target="#search-wrap"><i class="mdi mdi-close-circle"></i></a></div>
                    </div>
                    <ul class="list-unstyled topbar-nav float-right mb-0">
                        <li><a class="nav-link waves-effect waves-light search-btn" href="javascript:void(0);" data-target="#search-wrap"><i class="mdi mdi-magnify nav-icon"></i></a></li>
                        <li class="hidden-sm"><a class="nav-link dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="javascript: void(0);" role="button" aria-haspopup="false" aria-expanded="false">English
                            <img src="assets/images/flags/us_flag.jpg" class="ml-2" height="16" alt="">
                            <i class="mdi mdi-chevron-down"></i></a>
                            <div class="dropdown-menu dropdown-menu-right"><a class="dropdown-item" href="javascript: void(0);"><span>German </span>
                                <img src="assets/images/flags/germany_flag.jpg" alt="" class="ml-2 float-right" height="14"></a><a class="dropdown-item" href="javascript: void(0);"><span>Italian </span>
                                    <img src="assets/images/flags/italy_flag.jpg" alt="" class="ml-2 float-right" height="14"></a><a class="dropdown-item" href="javascript: void(0);"><span>French </span>
                                        <img src="assets/images/flags/french_flag.jpg" alt="" class="ml-2 float-right" height="14"></a><a class="dropdown-item" href="javascript: void(0);"><span>Spanish </span>
                                            <img src="assets/images/flags/spain_flag.jpg" alt="" class="ml-2 float-right" height="14"></a><a class="dropdown-item" href="javascript: void(0);"><span>Russian </span>
                                                <img src="assets/images/flags/russia_flag.jpg" alt="" class="ml-2 float-right" height="14"></a></div>
                        </li>
                        <li class="dropdown"><a class="nav-link dropdown-toggle arrow-none waves-light waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false"><i class="mdi mdi-bell-outline nav-icon"></i><span class="badge badge-danger badge-pill noti-icon-badge">2</span></a><div class="dropdown-menu dropdown-menu-right dropdown-lg">
                            <!-- item-->
                            <h6 class="dropdown-item-text">Notifications (258)</h6>
                            <div class="slimscroll notification-list">
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item active">
                                    <div class="notify-icon bg-success"><i class="mdi mdi-cart-outline"></i></div>
                                    <p class="notify-details">Your order is placed<small class="text-muted">Dummy text of the printing and typesetting industry.</small></p>
                                </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-warning"><i class="mdi mdi-message"></i></div>
                                    <p class="notify-details">New Message received<small class="text-muted">You have 87 unread messages</small></p>
                                </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-info"><i class="mdi mdi-glass-cocktail"></i></div>
                                    <p class="notify-details">Your item is shipped<small class="text-muted">It is a long established fact that a reader will</small></p>
                                </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-primary"><i class="mdi mdi-cart-outline"></i></div>
                                    <p class="notify-details">Your order is placed<small class="text-muted">Dummy text of the printing and typesetting industry.</small></p>
                                </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-danger"><i class="mdi mdi-message"></i></div>
                                    <p class="notify-details">New Message received<small class="text-muted">You have 87 unread messages</small></p>
                                </a></div>
                            <!-- All-->
                            <a href="javascript:void(0);" class="dropdown-item text-center text-primary">View all <i class="fi-arrow-right"></i></a></div>
                        </li>
                        <li class="hidden-sm"><a class="nav-link waves-effect waves-light" href="javascript:void(0);" id="btn-fullscreen"><i class="mdi mdi-fullscreen nav-icon"></i></a></li>
                        <li class="dropdown"><a class="nav-link dropdown-toggle waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                            <img src="assets/images/users/user-1.jpg" alt="profile-user" class="rounded-circle">
                            <span class="ml-1 nav-user-name hidden-sm">Amelia <i class="mdi mdi-chevron-down"></i></span></a>
                            <div class="dropdown-menu dropdown-menu-right"><a class="dropdown-item" href="#"><i class="dripicons-user text-muted mr-2"></i>Profile</a> <a class="dropdown-item" href="#"><i class="dripicons-wallet text-muted mr-2"></i>My Wallet</a> <a class="dropdown-item" href="#"><i class="dripicons-gear text-muted mr-2"></i>Settings</a> <a class="dropdown-item" href="#"><i class="dripicons-lock text-muted mr-2"></i>Lock screen</a><div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="dripicons-exit text-muted mr-2"></i>Logout</a></div>
                        </li>
                        <li class="menu-item">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle nav-link" id="mobileToggle">
                                <div class="lines"><span></span><span></span><span></span></div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </li>
                    </ul>
                    <ul class="list-unstyled topbar-nav mb-0">
                        <li class="hidden-sm"><a class="nav-link dropdown-toggle waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false"><i class="mdi mdi-library-plus mr-2"></i>Tools <i class="mdi mdi-chevron-down"></i></a>
                            <div class="dropdown-menu">
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">Photoshop </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">Visual Studio </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">Sublime Text 3 </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">Phpstorm</a></div>
                        </li>
                        <li class="hidden-sm"><a class="nav-link waves-effect waves-light" href="../landing/index.html" target="_blank"><i class="mdi mdi-airplane mr-2"></i>Landing</a></li>
                    </ul>
                </nav>
                <!-- end navbar-->
            </div>
        </div>

        <!-- MENU Start -->
        <div class="navbar-custom-menu">
            <div class="container-fluid">
                <div id="navigation">
                    <!-- Navigation Menu-->
                    <ul class="navigation-menu">
                        <li class="has-submenu"><a href="#"><i class="mdi mdi-view-dashboard"></i>Dashboard</a><ul class="submenu">
                            <li><a href="index.html">Dashboard 1</a></li>
                            <li><a href="index-2.html">Dashboard 2</a></li>
                        </ul>
                        </li>
                        <li class="has-submenu"><a href="#"><i class="mdi mdi-email"></i>Email</a><ul class="submenu">
                            <li><a href="email-inbox.html">Inbox</a></li>
                            <li><a href="email-read.html">Read Email</a></li>
                            <li><a href="email-compose.html">Compose Email</a></li>
                        </ul>
                        </li>
                        <li class="has-submenu"><a href="#"><i class="mdi mdi-bullseye"></i>Advanced UI</a><ul class="submenu">
                            <li><a href="advanced-rangeslider.html">Range Slider</a></li>
                            <li><a href="advanced-sweetalerts.html">Sweet Alerts</a></li>
                            <li><a href="advanced-nestable.html">Nestable List</a></li>
                            <li><a href="advanced-ratings.html">Ratings</a></li>
                            <li><a href="advanced-highlight.html">Highlight</a></li>
                            <li><a href="advanced-session.html">Session Timeout</a></li>
                            <li><a href="advanced-scrollbars.html">Scrollbars</a></li>
                        </ul>
                        </li>
                        <li class="has-submenu"><a href="#"><i class="mdi mdi-buffer"></i>UI Elements</a><ul class="submenu megamenu">
                            <li>
                                <ul>
                                    <li><a href="ui-alerts.html">Alerts</a></li>
                                    <li><a href="ui-buttons.html">Buttons</a></li>
                                    <li><a href="ui-cards.html">Cards</a></li>
                                    <li><a href="ui-dropdowns.html">Dropdowns</a></li>
                                    <li><a href="ui-modals.html">Modals</a></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li><a href="ui-typography.html">Typography</a></li>
                                    <li><a href="ui-progress.html">Progress</a></li>
                                    <li><a href="ui-tabs-accordions.html">Tabs & Accordions</a></li>
                                    <li><a href="ui-tooltips-popovers.html">Tooltips & Popover</a></li>
                                    <li><a href="ui-carousel.html">Carousel</a></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li><a href="ui-pagination.html">Pagination</a></li>
                                    <li><a href="ui-video.html">Videos</a></li>
                                    <li><a href="ui-colors.html">Colors</a></li>
                                    <li><a href="ui-grid.html">Grid System</a></li>
                                </ul>
                            </li>
                        </ul>
                        </li>
                        <li class="has-submenu"><a href="#"><i class="mdi mdi-arrow-down-drop-circle-outline"></i>More</a><ul class="submenu">
                            <li><a href="calendar.html">Calendar</a></li>
                            <li class="has-submenu"><a href="#">Icons</a><ul class="submenu">
                                <li><a href="icons-materialdesign.html">Material Design</a></li>
                                <li><a href="icons-dripicons.html">Dripicons</a></li>
                                <li><a href="icons-fontawesome.html">Font awesome</a></li>
                                <li><a href="icons-themify.html">Themify</a></li>
                                <li><a href="icons-typicons.html">Typicons</a></li>
                            </ul>
                            </li>
                            <li class="has-submenu"><a href="#">Tables</a><ul class="submenu">
                                <li><a href="tables-basic.html">Basic</a></li>
                                <li><a href="tables-datatable.html">Datatables</a></li>
                                <li><a href="tables-responsive.html">Responsive</a></li>
                                <li><a href="tables-editable.html">Editable</a></li>
                            </ul>
                            </li>
                            <li class="has-submenu"><a href="#">Forms</a><ul class="submenu">
                                <li><a href="forms-elements.html">Basic Elements</a></li>
                                <li><a href="forms-advanced.html">Advance Elements</a></li>
                                <li><a href="forms-validation.html">Validation</a></li>
                                <li><a href="forms-wizard.html">Wizard</a></li>
                                <li><a href="forms-editors.html">Editors</a></li>
                                <li><a href="forms-repeater.html">Repeater</a></li>
                                <li><a href="forms-x-editable.html">X Editable</a></li>
                                <li><a href="forms-uploads.html">File Upload</a></li>
                            </ul>
                            </li>
                            <li class="has-submenu"><a href="#">Maps</a><ul class="submenu">
                                <li><a href="maps-google.html">Google Maps</a></li>
                                <li><a href="maps-vector.html">Vector Maps</a></li>
                            </ul>
                            </li>
                            <li class="has-submenu"><a href="#">Email Templates</a><ul class="submenu">
                                <li><a href="email-templates-basic.html">Basic Action Email</a></li>
                                <li><a href="email-templates-alert.html">Alert Email</a></li>
                                <li><a href="email-templates-billing.html">Billing Email</a></li>
                            </ul>
                            </li>
                        </ul>
                        </li>
                        <li class="has-submenu"><a href="#"><i class="mdi mdi-chart-bar"></i>Charts</a><ul class="submenu">
                            <li><a href="charts-morris.html">Morris</a></li>
                            <li><a href="charts-chartist.html">Chartist</a></li>
                            <li><a href="charts-flot.html">Flot</a></li>
                            <li><a href="charts-peity.html">Peity</a></li>
                            <li><a href="charts-chartjs.html">Chartjs</a></li>
                            <li><a href="charts-sparkline.html">Sparkline</a></li>
                            <li><a href="charts-knob.html">Jquery Knob</a></li>
                        </ul>
                        </li>
                        <li class="has-submenu"><a href="#"><i class="mdi mdi-book-open-page-variant"></i>Pages</a><ul class="submenu megamenu">
                            <li>
                                <ul>
                                    <li><a href="page-tour.html">Tour</a></li>
                                    <li><a href="page-timeline.html">Timeline</a></li>
                                    <li><a href="page-invoice.html">Invoice</a></li>
                                    <li><a href="page-treeview.html">Treeview</a></li>
                                    <li><a href="page-profile.html">Profile</a></li>
                                    <li><a href="page-pricing.html">Pricing</a></li>
                                    <li><a href="page-faq.html">FAQs</a></li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li><a href="page-starter.html">Starter Page</a></li>
                                    <li><a href="auth-login.html">Login</a></li>
                                    <li><a href="auth-register.html">Register</a></li>
                                    <li><a href="auth-recoverpw.html">Recover Password</a></li>
                                    <li><a href="auth-lock-screen.html">Lock Screen</a></li>
                                    <li><a href="auth-404.html">Error 404</a></li>
                                    <li><a href="auth-500.html">Error 500</a></li>
                                </ul>
                            </li>
                        </ul>
                        </li>
                    </ul>
                    <!-- End navigation menu -->
                </div>
                <!-- end navigation -->
            </div>
            <!-- end container-fluid -->
        </div>
        <!-- end navbar-custom -->
    </div>
    <!-- Top Bar End -->
    <!-- Page Content-->
    <div class="wrapper">
        <div class="container-fluid">
            <!-- Page-Title -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="page-title-box">
                        <div class="float-right">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Amezia</a></li>
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Dashboard</a></li>
                                <li class="breadcrumb-item active">Dashboard</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Dashboard</h4>
                    </div>
                </div>
            </div>
            <!-- end page title end breadcrumb -->
            <div class="row">
                <div class="col-md-12 col-lg-6 col-xl-3">
                    <div class="card">
                        <div class="card-body"><span class="float-right text-muted font-13">Last 3 month</span><h5 class="mt-0 mb-3">Workloed</h5>
                            <div id="donut-example" class="morris-chart workloed-chart"></div>
                            <ul class="list-unstyled text-center text-muted mb-0">
                                <li class="list-inline-item font-13"><i class="mdi mdi-album font-16 text-purple mr-2"></i>External</li>
                                <li class="list-inline-item font-13"><i class="mdi mdi-album font-16 text-pink mr-2"></i>Internal</li>
                                <li class="list-inline-item font-13"><i class="mdi mdi-album font-16 text-light mr-2"></i>Other</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-6 col-xl-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="mt-0 mb-3">Budget Detail</h5>
                            <div id="morris-bar-chart" class="morris-chart project-budget-detail-chart"></div>
                            <ul class="list-unstyled text-center text-muted mb-0 mt-2">
                                <li class="list-inline-item font-13"><i class="mdi mdi-album font-16 text-primary mr-2"></i>Total Budget</li>
                                <li class="list-inline-item font-13"><i class="mdi mdi-album font-16 text-success mr-2"></i>Amount Used</li>
                                <li class="list-inline-item font-13"><i class="mdi mdi-album font-16 text-secondary mr-2"></i>Target Amount</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-xl-3">
                    <div class="card profile">
                        <div class="card-body">
                            <div class="text-center">
                                <img src="assets/images/users/user-3.jpg" alt="" class="rounded-circle img-thumbnail thumb-xl"><div class="online-circle"><i class="fa fa-circle text-success"></i></div>
                                <h4 class="">Mark Kearney</h4>
                                <p class="text-muted font-12">Project Manager</p>
                                <p class="font-13 text-muted">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, or randomised words which don't look even slightly believable. If you are going to use a passage.</p>
                                <a href="#" class="btn btn-pink btn-round px-5">Follow Me</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->
            <div class="row">
                <div class="col-md-12 col-xl-8">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="mt-0 mb-3">Project Budget</h5>
                            <div class="row justify-content-end">
                                <div class="col-md-12 col-xl-12 align-self-center">
                                    <ul class="list-unstyled list-inline float-right">
                                        <li class="list-inline-item px-3">
                                            <h5 class="mt-0">$ 42,000</h5>
                                            <small class="font-14 text-muted">Total Budget</small></li>
                                        <li class="list-inline-item px-3">
                                            <h5 class="mb-2">$ 7,200</h5>
                                            <small class="font-14 text-muted">Remaining</small></li>
                                        <li class="list-inline-item px-3">
                                            <h5 class="text-danger mb-2"><i class="mdi mdi-arrow-down-bold font-14 text-danger"></i>7.9%</h5>
                                            <span class="font-14 text-danger">Over Target Currently</span></li>
                                    </ul>
                                </div>
                            </div>
                            <div id="extra-area-chart" class="morris-chart project-budget-chart"></div>
                            <ul class="list-unstyled text-center text-muted mb-0 mt-2">
                                <li class="list-inline-item font-13"><i class="mdi mdi-album font-16 text-primary mr-2"></i>Total Budget</li>
                                <li class="list-inline-item font-13"><i class="mdi mdi-album font-16 text-success mr-2"></i>Amount Used</li>
                                <li class="list-inline-item font-13"><i class="mdi mdi-album font-16 text-secondary mr-2"></i>Target Amount</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-12 col-xl-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="mt-0">Overall Process</h5>
                            <div class="row justify-content-center">
                                <div class="col-lg-6 align-self-center">
                                    <div class="live-tile text-center" data-mode="carousel" data-direction="vertical" data-delay="3500" data-height="10">
                                        <div>
                                            <h5 class="text-primary pt-2">P1 Launch Date</h5>
                                            <small class="text-muted">Tuesday, 25 December 2018</small><h3 class="text-dark">170 Days</h3>
                                        </div>
                                        <div>
                                            <h5 class="text-primary pt-2">P2 Launch Date</h5>
                                            <small class="text-muted">Tuesday, 25 December 2018</small><h3 class="text-dark">180 Days</h3>
                                        </div>
                                        <div>
                                            <h5 class="text-primary pt-2">P3 Launch Date</h5>
                                            <small class="text-muted">Tuesday, 25 December 2018</small><h3 class="text-dark">190 Days</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 align-self-center">
                                    <div class="text-center knob-Prosess">
                                        <input class="knob animated" value="0" rel="90" data-width="120" data-height="120" data-linecap="round" data-fgcolor="#44a2d2" data-skin="tron" data-angleoffset="180" data-readonly="true" data-thickness=".1"><div class="text-center knob-prosess-btn"><a class="btn btn-sm btn-primary text-white px-3 mt-2 mb-0">Refresh</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-4 align-self-center">
                                            <div class="icon-info"><i class="mdi mdi-diamond text-warning"></i></div>
                                        </div>
                                        <div class="col-8 align-self-center text-center">
                                            <div class="ml-2 text-right">
                                                <p class="mb-1 text-muted font-13">Projects</p>
                                                <h4 class="mt-0 mb-1 font-20">35</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress mt-2" style="height: 3px;">
                                        <div class="progress-bar progress-animated bg-warning" role="progressbar" style="max-width: 55%;" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-4 align-self-center">
                                            <div class="icon-info"><i class="mdi mdi-account-multiple text-purple"></i></div>
                                        </div>
                                        <div class="col-8 align-self-center text-center">
                                            <div class="ml-2 text-right">
                                                <p class="mb-1 text-muted font-13">Teams</p>
                                                <h4 class="mt-0 mb-1 font-20">12</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress mt-2" style="height: 3px;">
                                        <div class="progress-bar progress-animated bg-purple" role="progressbar" style="max-width: 55%;" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-4 align-self-center">
                                            <div class="icon-info"><i class="mdi mdi-playlist-check text-success"></i></div>
                                        </div>
                                        <div class="col-8 align-self-center text-center">
                                            <div class="ml-2 text-right">
                                                <p class="mb-0 text-muted font-13">Tasks</p>
                                                <span class="mt-0 font-20"><strong>40</strong></span> <span class="badge badge-soft-success task-badge mt-1 shadow-none">Active</span></div>
                                        </div>
                                    </div>
                                    <div class="progress mt-2" style="height: 3px;">
                                        <div class="progress-bar progress-animated bg-success" role="progressbar" style="max-width: 35%;" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-4 col-4 align-self-center">
                                            <div class="icon-info"><i class="mdi mdi-coin text-pink"></i></div>
                                        </div>
                                        <div class="col-sm-8 col-8 align-self-center text-center">
                                            <div class="ml-2 text-right">
                                                <p class="mb-1 text-muted font-13">Budget</p>
                                                <h4 class="mt-0 mb-1 font-20">$1809</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress mt-2" style="height: 3px;">
                                        <div class="progress-bar progress-animated bg-pink" role="progressbar" style="max-width: 35%;" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->
            <div class="row">
                <div class="col-md-12 col-xl-9">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="mt-0 pb-3">All Projects</h5>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="table-responsive">
                                        <table class="table table-hover mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Project Name</th>
                                                    <th>Client Name</th>
                                                    <th>Start Date</th>
                                                    <th>Deadline</th>
                                                    <th>Status</th>
                                                    <th>Progress</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Product Devlopment</td>
                                                    <td>
                                                        <img src="assets/images/users/user-2.jpg" alt="" class="thumb-sm rounded-circle mr-2">
                                                        Kevin J. Heal</td>
                                                    <td>20/3/2018</td>
                                                    <td>5/5/2018</td>
                                                    <td><span class="badge badge-boxed badge-primary">Active</span></td>
                                                    <td><small class="float-right ml-2 pt-1 font-10">92%</small><div class="progress mt-2" style="height: 5px;">
                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 92%;" aria-valuenow="92" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>New Office Building</td>
                                                    <td>
                                                        <img src="assets/images/users/user-3.jpg" alt="" class="thumb-sm rounded-circle mr-2">
                                                        Frank M. Lyons</td>
                                                    <td>11/6/2018</td>
                                                    <td>15/7/2018</td>
                                                    <td><span class="badge badge-boxed badge-warning">Panding</span></td>
                                                    <td><small class="float-right ml-2 pt-1 font-10">0%</small><div class="progress mt-2" style="height: 5px;">
                                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Website &amp; Blog</td>
                                                    <td>
                                                        <img src="assets/images/users/user-4.jpg" alt="" class="thumb-sm rounded-circle mr-2">
                                                        Hyman M. Cross</td>
                                                    <td>21/6/2018</td>
                                                    <td>3/7/2018</td>
                                                    <td><span class="badge badge-boxed badge-warning">Panding</span></td>
                                                    <td><small class="float-right ml-2 pt-1 font-10">0%</small><div class="progress mt-2" style="height: 5px;">
                                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Market Research</td>
                                                    <td>
                                                        <img src="assets/images/users/user-5.jpg" alt="" class="thumb-sm rounded-circle mr-2">
                                                        Angelo E. Butler</td>
                                                    <td>30/4/2018</td>
                                                    <td>1/6/2018</td>
                                                    <td><span class="badge badge-boxed badge-primary">Active</span></td>
                                                    <td><small class="float-right ml-2 pt-1 font-10">78%</small><div class="progress mt-2" style="height: 5px;">
                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 78%;" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Export Marketing</td>
                                                    <td>
                                                        <img src="assets/images/users/user-6.jpg" alt="" class="thumb-sm rounded-circle mr-2">
                                                        Robert C. Golding</td>
                                                    <td>20/3/2018</td>
                                                    <td>5/5/2018</td>
                                                    <td><span class="badge badge-boxed badge-primary">Active</span></td>
                                                    <td><small class="float-right ml-2 pt-1 font-10">45%</small><div class="progress mt-2" style="height: 5px;">
                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 45%;" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Product Devlopment</td>
                                                    <td>
                                                        <img src="assets/images/users/user-7.jpg" alt="" class="thumb-sm rounded-circle mr-2">
                                                        Kevin J. Heal</td>
                                                    <td>14/2/2018</td>
                                                    <td>10/8/2018</td>
                                                    <td><span class="badge badge-boxed badge-primary">Active</span></td>
                                                    <td><small class="float-right ml-2 pt-1 font-10">35%</small><div class="progress mt-2" style="height: 5px;">
                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 35%;" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Website &amp; Blog</td>
                                                    <td>
                                                        <img src="assets/images/users/user-8.jpg" alt="" class="thumb-sm rounded-circle mr-2">
                                                        Phillip T. Morse</td>
                                                    <td>8/4/2018</td>
                                                    <td>2/6/2018</td>
                                                    <td><span class="badge badge-boxed badge-danger">Complete</span></td>
                                                    <td><small class="float-right ml-2 pt-1 font-10">100%</small><div class="progress mt-2" style="height: 5px;">
                                                        <div class="progress-bar bg-danger" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--end table-responsive-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-12 col-xl-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="mt-0 mb-3">Activity</h5>
                            <div class="activity"><i class="mdi mdi-check text-primary"></i>
                                <div class="time-item">
                                    <div class="item-info">
                                        <div class="text-muted text-right font-10">5 minutes ago</div>
                                        <h5 class="mt-0">Task finished</h5>
                                        <p class="text-muted font-13">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <a href="#" class="text-info">[more info]</a></p>
                                    </div>
                                </div>
                                <img src="assets/images/users/user-3.jpg" alt="" class="img-activity"><div class="time-item">
                                    <div class="item-info">
                                        <div class="text-muted text-right font-10">30 minutes ago</div>
                                        <h5 class="mt-0">Task Overdue</h5>
                                        <p class="text-muted font-13">Lorem ipsum dolor sit amet. <a href="#" class="text-info">[more info]</a></p>
                                    </div>
                                </div>
                                <i class="mdi mdi-alert-outline text-danger"></i>
                                <div class="time-item">
                                    <div class="item-info">
                                        <div class="text-muted text-right font-10">50 minutes ago</div>
                                        <h5 class="mt-0">Task finished</h5>
                                        <p class="text-muted font-13">There are many variations of passages of Lorem Ipsum available. <a href="#" class="text-info">[more info]</a></p>
                                    </div>
                                </div>
                                <i class="mdi mdi-comment-outline text-info"></i>
                                <div class="time-item">
                                    <div class="item-info">
                                        <div class="text-muted text-right font-10">1 Day ago</div>
                                        <h5 class="mt-0">New Comment</h5>
                                        <p class="text-muted font-13">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <a href="#" class="text-info">[more info]</a></p>
                                    </div>
                                </div>
                                <img src="assets/images/users/user-2.jpg" alt="" class="img-activity"><div class="time-item">
                                    <div class="item-info">
                                        <div class="text-muted text-right font-10">5 minutes ago</div>
                                        <h5 class="my-0">Task Overdue</h5>
                                        <p class="text-muted font-13">Lorem ipsum dolor sit amet. <a href="#" class="text-info">[more info]</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->
            <div class="row">
                <div class="col-md-12 col-lg-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="mt-0 mb-3">Projects Workload</h5>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mb-0">
                                        <img src="assets/images/project-logo/project1.jpg" alt="" class="thumb-sm rounded-circle mr-1">
                                        <span><strong>Website & Blog</strong></span></div>
                                    <small class="float-right text-muted ml-3 font-14">502h</small><div class="progress mt-2 mb-4 bg-white" style="height: 6px;">
                                        <div class="progress-bar progress-animated bg-pink" role="progressbar" style="max-width: 78%; border-radius: 5px;" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="mb-0">
                                        <img src="assets/images/project-logo/project2.jpg" alt="" class="thumb-sm rounded-circle mr-1">
                                        <span><strong>New Office Building</strong></span></div>
                                    <small class="float-right text-muted ml-3 font-14">320h</small><div class="progress mt-2 mb-4 bg-white" style="height: 6px;">
                                        <div class="progress-bar progress-animated bg-purple" role="progressbar" style="max-width: 60%; border-radius: 5px;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="mb-0">
                                        <img src="assets/images/project-logo/project3.jpg" alt="" class="thumb-sm rounded-circle mr-1">
                                        <span><strong>Product Devlopment</strong></span></div>
                                    <small class="float-right text-muted ml-3 font-14">251h</small><div class="progress mt-2 mb-4 bg-white" style="height: 6px;">
                                        <div class="progress-bar progress-animated bg-pink" role="progressbar" style="max-width: 45%; border-radius: 5px;" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="mb-0">
                                        <img src="assets/images/project-logo/project4.jpg" alt="" class="thumb-sm rounded-circle mr-1">
                                        <span><strong>Market Research</strong></span></div>
                                    <small class="float-right text-muted ml-3 font-14">121h</small><div class="progress mt-2 bg-white" style="height: 6px;">
                                        <div class="progress-bar progress-animated bg-pink" role="progressbar" style="max-width: 30%; border-radius: 5px;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="mt-0 mb-3">Active Tasks List</h5>
                            <div class="todo-list">
                                <div class="todo-box"><i class="remove fa fa-trash-o"></i>
                                    <div class="todo-task">
                                        <label class="ckbox">
                                            <input type="checkbox"><span>Icon change in Redesign App</span></label></div>
                                </div>
                                <div class="todo-box"><i class="remove fa fa-trash-o"></i>
                                    <div class="todo-task">
                                        <label class="ckbox">
                                            <input type="checkbox" checked=""><span>Add search button Market Research</span></label></div>
                                </div>
                                <div class="todo-box"><i class="remove fa fa-trash-o"></i>
                                    <div class="todo-task">
                                        <label class="ckbox">
                                            <input type="checkbox"><span>Test new features in tablets</span></label></div>
                                </div>
                                <div class="todo-box"><i class="remove fa fa-trash-o"></i>
                                    <div class="todo-task">
                                        <label class="ckbox">
                                            <input type="checkbox" checked=""><span>Send IOS App documents</span></label></div>
                                </div>
                                <div class="todo-box"><i class="remove fa fa-trash-o"></i>
                                    <div class="todo-task">
                                        <label class="ckbox">
                                            <input type="checkbox"><span>Connect API to pages</span></label></div>
                                </div>
                                <div class="todo-box"><i class="remove fa fa-trash-o"></i>
                                    <div class="todo-task">
                                        <label class="ckbox">
                                            <input type="checkbox"><span>Icon change in Redesign App</span></label></div>
                                </div>
                            </div>
                            <div class="input-group custom-input">
                                <input type="text" class="form-control todo-list-input" placeholder="Add task">
                                <span class="input-group-append"></span>
                                <button class="btn btn-primary add-new-todo-btn mb-0">Add</button></div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->
        </div>
        <!-- container -->
        <footer class="footer text-center text-sm-left">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">&copy; 2018 Amezia <span class="text-muted d-none d-sm-inline-block float-right">Crafted with <i class="mdi mdi-heart text-danger"></i>by Themesbrand</span></div>
                </div>
            </div>
        </footer>


    </div>
    <!-- end page-wrapper -->

</body>
<!-- Mirrored from themesbrand.com/amezia/horizontal/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 29 Sep 2018 04:28:23 GMT -->
</html>






    <div class="topbar">
        <div class="topbar-main">
            <div class="container-fluid">

                <div class="topbar-left">
                    <a href="{2}" class="logo"><span>
                        <img src="{0}" alt="{1}" class="logo-lg"></span></a>
                </div> 

                <!--  Header Design   -->


            </div>
        </div>

        <div class="navbar-custom-menu">
            <div class="container-fluid">
                <div id="navigation">
                    <ul class="navigation-menu">
                        {1}      
                        <!--      Bar Design  	 -->
                    </ul>
                </div>
                <!-- end navigation -->
            </div>
            <!-- end container-fluid -->
        </div>

    </div>

<div class="page-wrapper">


  <div class="page-content">
            <div class="container-fluid">
{2}  <!--         Body Design  	 -->
            </div>
</div>


{3}     <!--  Footer Design  -->




</div>
                                    
                           
<!doctype html>
<html class="no-js" lang="">


<!-- Mirrored from www.radiustheme.com/demo/html/psdboss/akkhor/akkhor/all-fees.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 24 Sep 2019 04:49:35 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>AKKHOR | Fees Collection</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Normalize CSS -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/main.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="css/all.min.css">
    <!-- Flaticon CSS -->
    <link rel="stylesheet" href="fonts/flaticon.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="css/animate.min.css">
    <!-- Data Table CSS -->
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Modernize js -->
    <script src="js/modernizr-3.6.0.min.js"></script>
</head>

<body>
    <!-- Preloader Start Here -->
    <div id="preloader"></div>
    <!-- Preloader End Here -->
    <div id="wrapper" class="wrapper bg-ash">
        <!-- Header Menu Area Start Here -->
        <div class="navbar navbar-expand-md header-menu-one bg-light">
            <div class="nav-bar-header-one">
                <div class="header-logo">
                    <a href="index.html">
                        <img src="img/logo.png" alt="logo">
                    </a>
                </div>
                <div class="toggle-button sidebar-toggle">
                    <button type="button" class="item-link">
                        <span class="btn-icon-wrap">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                    </button>
                </div>
            </div>
            <div class="d-md-none mobile-nav-bar">
                <button class="navbar-toggler pulse-animation" type="button" data-toggle="collapse" data-target="#mobile-navbar" aria-expanded="false">
                    <i class="far fa-arrow-alt-circle-down"></i>
                </button>
                <button type="button" class="navbar-toggler sidebar-toggle-mobile">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
            <div class="header-main-menu collapse navbar-collapse" id="mobile-navbar">
                <ul class="navbar-nav">
                    <li class="navbar-item header-search-bar">
                        <div class="input-group stylish-input-group">
                            <span class="input-group-addon">
                                <button type="submit">
                                    <span class="flaticon-search" aria-hidden="true"></span>
                                </button>
                            </span>
                            <input type="text" class="form-control" placeholder="Find Something . . .">
                        </div>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="navbar-item dropdown header-admin">
                        <a class="navbar-nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                            aria-expanded="false">
                            <div class="admin-title">
                                <h5 class="item-title">Stevne Zone</h5>
                                <span>Admin</span>
                            </div>
                            <div class="admin-img">
                                <img src="img/figure/admin.jpg" alt="Admin">
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <div class="item-header">
                                <h6 class="item-title">Steven Zone</h6>
                            </div>
                            <div class="item-content">
                                <ul class="settings-list">
                                    <li><a href="#"><i class="flaticon-user"></i>My Profile</a></li>
                                    <li><a href="#"><i class="flaticon-list"></i>Task</a></li>
                                    <li><a href="#"><i class="flaticon-chat-comment-oval-speech-bubble-with-text-lines"></i>Message</a></li>
                                    <li><a href="#"><i class="flaticon-gear-loading"></i>Account Settings</a></li>
                                    <li><a href="#"><i class="flaticon-turn-off"></i>Log Out</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="navbar-item dropdown header-message">
                        <a class="navbar-nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                            aria-expanded="false">
                            <i class="far fa-envelope"></i>
                            <div class="item-title d-md-none text-16 mg-l-10">Message</div>
                            <span>5</span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right">
                            <div class="item-header">
                                <h6 class="item-title">05 Message</h6>
                            </div>
                            <div class="item-content">
                                <div class="media">
                                    <div class="item-img bg-skyblue author-online">
                                        <img src="img/figure/student11.png" alt="img">
                                    </div>
                                    <div class="media-body space-sm">
                                        <div class="item-title">
                                            <a href="#">
                                                <span class="item-name">Maria Zaman</span>
                                                <span class="item-time">18:30</span>
                                            </a>
                                        </div>
                                        <p>
                                            What is the reason of buy this item. 
                                        Is it usefull for me.....
                                        </p>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-img bg-yellow author-online">
                                        <img src="img/figure/student12.png" alt="img">
                                    </div>
                                    <div class="media-body space-sm">
                                        <div class="item-title">
                                            <a href="#">
                                                <span class="item-name">Benny Roy</span>
                                                <span class="item-time">10:35</span>
                                            </a>
                                        </div>
                                        <p>
                                            What is the reason of buy this item. 
                                        Is it usefull for me.....
                                        </p>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-img bg-pink">
                                        <img src="img/figure/student13.png" alt="img">
                                    </div>
                                    <div class="media-body space-sm">
                                        <div class="item-title">
                                            <a href="#">
                                                <span class="item-name">Steven</span>
                                                <span class="item-time">02:35</span>
                                            </a>
                                        </div>
                                        <p>
                                            What is the reason of buy this item. 
                                        Is it usefull for me.....
                                        </p>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-img bg-violet-blue">
                                        <img src="img/figure/student11.png" alt="img">
                                    </div>
                                    <div class="media-body space-sm">
                                        <div class="item-title">
                                            <a href="#">
                                                <span class="item-name">Joshep Joe</span>
                                                <span class="item-time">12:35</span>
                                            </a>
                                        </div>
                                        <p>
                                            What is the reason of buy this item. 
                                        Is it usefull for me.....
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="navbar-item dropdown header-notification">
                        <a class="navbar-nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                            aria-expanded="false">
                            <i class="far fa-bell"></i>
                            <div class="item-title d-md-none text-16 mg-l-10">Notification</div>
                            <span>8</span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right">
                            <div class="item-header">
                                <h6 class="item-title">03 Notifiacations</h6>
                            </div>
                            <div class="item-content">
                                <div class="media">
                                    <div class="item-icon bg-skyblue">
                                        <i class="fas fa-check"></i>
                                    </div>
                                    <div class="media-body space-sm">
                                        <div class="post-title">Complete Today Task</div>
                                        <span>1 Mins ago</span>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-icon bg-orange">
                                        <i class="fas fa-calendar-alt"></i>
                                    </div>
                                    <div class="media-body space-sm">
                                        <div class="post-title">Director Metting</div>
                                        <span>20 Mins ago</span>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-icon bg-violet-blue">
                                        <i class="fas fa-cogs"></i>
                                    </div>
                                    <div class="media-body space-sm">
                                        <div class="post-title">Update Password</div>
                                        <span>45 Mins ago</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="navbar-item dropdown header-language">
                        <a class="navbar-nav-link dropdown-toggle" href="#" role="button"
                            data-toggle="dropdown" aria-expanded="false"><i class="fas fa-globe-americas"></i>EN</a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="#">English</a>
                            <a class="dropdown-item" href="#">Spanish</a>
                            <a class="dropdown-item" href="#">Franchis</a>
                            <a class="dropdown-item" href="#">Chiness</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- Header Menu Area End Here -->
        <!-- Page Area Start Here -->
        <div class="dashboard-page-one">
            <!-- Sidebar Area Start Here -->
            <div class="sidebar-main sidebar-menu-one sidebar-expand-md sidebar-color">
                <div class="mobile-sidebar-header d-md-none">
                    <div class="header-logo">
                        <a href="index.html">
                            <img src="img/logo1.png" alt="logo"></a>
                    </div>
                </div>
                <div class="sidebar-menu-content">
                    <ul class="nav nav-sidebar-menu sidebar-toggle-view">
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-dashboard"></i><span>Dashboard</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="index.html" class="nav-link"><i class="fas fa-angle-right"></i>Admin</a>
                                </li>
                                <li class="nav-item">
                                    <a href="index3.html" class="nav-link"><i class="fas fa-angle-right"></i>Students</a>
                                </li>
                                <li class="nav-item">
                                    <a href="index4.html" class="nav-link"><i class="fas fa-angle-right"></i>Parents</a>
                                </li>
                                <li class="nav-item">
                                    <a href="index5.html" class="nav-link"><i class="fas fa-angle-right"></i>Teachers</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-classmates"></i><span>Students</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="all-student.html" class="nav-link"><i class="fas fa-angle-right"></i>All Students</a>
                                </li>
                                <li class="nav-item">
                                    <a href="student-details.html" class="nav-link"><i class="fas fa-angle-right"></i>Student Details</a>
                                </li>
                                <li class="nav-item">
                                    <a href="admit-form.html" class="nav-link"><i class="fas fa-angle-right"></i>Admission Form</a>
                                </li>
                                <li class="nav-item">
                                    <a href="student-promotion.html" class="nav-link"><i class="fas fa-angle-right"></i>Student Promotion</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-multiple-users-silhouette"></i><span>Teachers</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="all-teacher.html" class="nav-link"><i class="fas fa-angle-right"></i>All Teachers</a>
                                </li>
                                <li class="nav-item">
                                    <a href="teacher-details.html" class="nav-link"><i class="fas fa-angle-right"></i>Teacher Details</a>
                                </li>
                                <li class="nav-item">
                                    <a href="add-teacher.html" class="nav-link"><i class="fas fa-angle-right"></i>Add Teacher</a>
                                </li>
                                <li class="nav-item">
                                    <a href="teacher-payment.html" class="nav-link"><i class="fas fa-angle-right"></i>Payment</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-couple"></i><span>Parents</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="all-parents.html" class="nav-link"><i class="fas fa-angle-right"></i>All Parents</a>
                                </li>
                                <li class="nav-item">
                                    <a href="parents-details.html" class="nav-link"><i class="fas fa-angle-right"></i>Parents Details</a>
                                </li>
                                <li class="nav-item">
                                    <a href="add-parents.html" class="nav-link"><i class="fas fa-angle-right"></i>Add Parent</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-books"></i><span>Library</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="all-book.html" class="nav-link"><i class="fas fa-angle-right"></i>All Book</a>
                                </li>
                                <li class="nav-item">
                                    <a href="add-book.html" class="nav-link"><i class="fas fa-angle-right"></i>Add New Book</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-technological"></i><span>Acconunt</span></a>
                            <ul class="nav sub-group-menu sub-group-active">
                                <li class="nav-item">
                                    <a href="all-fees.html" class="nav-link menu-active"><i class="fas fa-angle-right"></i>All Fees Collection</a>
                                </li>
                                <li class="nav-item">
                                    <a href="all-expense.html" class="nav-link"><i class="fas fa-angle-right"></i>Expenses</a>
                                </li>
                                <li class="nav-item">
                                    <a href="add-expense.html" class="nav-link"><i class="fas fa-angle-right"></i>Add Expenses</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-maths-class-materials-cross-of-a-pencil-and-a-ruler"></i><span>Class</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="all-class.html" class="nav-link"><i class="fas fa-angle-right"></i>All Classes</a>
                                </li>
                                <li class="nav-item">
                                    <a href="add-class.html" class="nav-link"><i class="fas fa-angle-right"></i>Add New Class</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="all-subject.html" class="nav-link"><i class="flaticon-open-book"></i><span>Subject</span></a>
                        </li>
                        <li class="nav-item">
                            <a href="class-routine.html" class="nav-link"><i class="flaticon-calendar"></i><span>Class Routine</span></a>
                        </li>
                        <li class="nav-item">
                            <a href="student-attendence.html" class="nav-link"><i class="flaticon-checklist"></i><span>Attendence</span></a>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-shopping-list"></i><span>Exam</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="exam-schedule.html" class="nav-link"><i class="fas fa-angle-right"></i>Exam Schedule</a>
                                </li>
                                <li class="nav-item">
                                    <a href="exam-grade.html" class="nav-link"><i class="fas fa-angle-right"></i>Exam Grades</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="transport.html" class="nav-link"><i class="flaticon-bus-side-view"></i><span>Transport</span></a>
                        </li>
                        <li class="nav-item">
                            <a href="hostel.html" class="nav-link"><i class="flaticon-bed"></i><span>Hostel</span></a>
                        </li>
                        <li class="nav-item">
                            <a href="notice-board.html" class="nav-link"><i class="flaticon-script"></i><span>Notice</span></a>
                        </li>
                        <li class="nav-item">
                            <a href="messaging.html" class="nav-link"><i class="flaticon-chat"></i><span>Messeage</span></a>
                        </li>
                        <li class="nav-item sidebar-nav-item">
                            <a href="#" class="nav-link"><i class="flaticon-menu-1"></i><span>UI Elements</span></a>
                            <ul class="nav sub-group-menu">
                                <li class="nav-item">
                                    <a href="button.html" class="nav-link"><i class="fas fa-angle-right"></i>Button</a>
                                </li>
                                <li class="nav-item">
                                    <a href="grid.html" class="nav-link"><i class="fas fa-angle-right"></i>Grid</a>
                                </li>
                                <li class="nav-item">
                                    <a href="ui-tab.html" class="nav-link"><i class="fas fa-angle-right"></i>Tab</a>
                                </li>
                                <li class="nav-item">
                                    <a href="progress-bar.html" class="nav-link"><i class="fas fa-angle-right"></i>Progress Bar</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="map.html" class="nav-link"><i class="flaticon-planet-earth"></i><span>Map</span></a>
                        </li>
                        <li class="nav-item">
                            <a href="account-settings.html" class="nav-link"><i class="flaticon-settings"></i><span>Account</span></a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Sidebar Area End Here -->
            <div class="dashboard-content-one">
                <!-- Breadcubs Area Start Here -->
                <div class="breadcrumbs-area">
                    <h3>Accounts</h3>
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>Fees Collection</li>
                    </ul>
                </div>
                <!-- Breadcubs Area End Here -->
                <!-- Fees Table Area Start Here -->
                <div class="card height-auto">
                    <div class="card-body">
                        <div class="heading-layout1">
                            <div class="item-title">
                                <h3>All Fees Collection</h3>
                            </div>
                            <div class="dropdown">
                                <a class="dropdown-toggle" href="#" role="button"
                                    data-toggle="dropdown" aria-expanded="false">...</a>

                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                </div>
                            </div>
                        </div>
                        <form class="mg-b-20">
                            <div class="row gutters-8">
                                <div class="col-3-xxxl col-xl-3 col-lg-3 col-12 form-group">
                                    <input type="text" placeholder="Search by ID ..." class="form-control">
                                </div>
                                <div class="col-4-xxxl col-xl-4 col-lg-3 col-12 form-group">
                                    <input type="text" placeholder="Search by Name ..." class="form-control">
                                </div>
                                <div class="col-4-xxxl col-xl-3 col-lg-3 col-12 form-group">
                                    <input type="text" placeholder="Search by Phone" class="form-control">
                                </div>
                                <div class="col-1-xxxl col-xl-2 col-lg-3 col-12 form-group">
                                    <button type="submit" class="fw-btn-fill btn-gradient-yellow">SEARCH</button>
                                </div>
                            </div>
                        </form>
                        <div class="table-responsive">
                            <table class="table data-table text-nowrap">
                                <thead>
                                    <tr>
                                        <th>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input checkAll">
                                                <label class="form-check-label">ID</label>
                                            </div>
                                        </th>
                                        <th>Photo</th>
                                        <th>Name</th>
                                        <th>Gender</th>
                                        <th>Class</th>
                                        <th>Section</th>
                                        <th>Expense</th>
                                        <th>Amount</th>
                                        <th>Status</th>
                                        <th>Phone</th>
                                        <th>E-mail</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0021</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student2.png" alt="student"></td>
                                        <td>Mark Willy</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0022</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student3.png" alt="student"></td>
                                        <td>Jessia</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0023</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student4.png" alt="student"></td>
                                        <td>Mike John</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0024</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student6.png" alt="student"></td>
                                        <td>Maria Jaman</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$4,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0025</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student2.png" alt="student"></td>
                                        <td>Mark Willy</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0026</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student3.png" alt="student"></td>
                                        <td>Jessia</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0027</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student4.png" alt="student"></td>
                                        <td>Mike John</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0028</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student6.png" alt="student"></td>
                                        <td>Maria Jaman</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$4,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0029</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student2.png" alt="student"></td>
                                        <td>Mark Willy</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0030</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student3.png" alt="student"></td>
                                        <td>Jessia</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0031</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student4.png" alt="student"></td>
                                        <td>Mike John</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0032</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student6.png" alt="student"></td>
                                        <td>Maria Jaman</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$4,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0033</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student8.png" alt="student"></td>
                                        <td>Mark Willy</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0034</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student3.png" alt="student"></td>
                                        <td>Jessia</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0035</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student4.png" alt="student"></td>
                                        <td>Mike John</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0036</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student6.png" alt="student"></td>
                                        <td>Maria Jaman</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$4,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0037</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student2.png" alt="student"></td>
                                        <td>Mark Willy</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0038</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student3.png" alt="student"></td>
                                        <td>Jessia</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0039</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student4.png" alt="student"></td>
                                        <td>Mike John</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0040</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student6.png" alt="student"></td>
                                        <td>Maria Jaman</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$4,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0041</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student2.png" alt="student"></td>
                                        <td>Mark Willy</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0042</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student3.png" alt="student"></td>
                                        <td>Jessia</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0043</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student4.png" alt="student"></td>
                                        <td>Mike John</td>
                                        <td>Male</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$2,0000.00</td>
                                        <td class="badge badge-pill badge-success d-block mg-t-8">Paid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input">
                                                <label class="form-check-label">#0044</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="img/figure/student6.png" alt="student"></td>
                                        <td>Maria Jaman</td>
                                        <td>Female</td>
                                        <td>2</td>
                                        <td>A</td>
                                        <td>Class Test</td>
                                        <td>$4,0000.00</td>
                                        <td class="badge badge-pill badge-danger d-block mg-t-8">Unpaid</td>
                                        <td>+ 123 9988568</td>
                                        <td>kazifahim93@gmail.com</td>
                                        <td>
                                            <div class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="flaticon-more-button-of-three-dots"></span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- Fees Table Area End Here -->
                <footer class="footer-wrap-layout1">
                    <div class="copyright">© Copyrights <a href="#">akkhor</a> 2019. All rights reserved. Designed by <a href="#">PsdBosS</a></div>
                </footer>
            </div>
        </div>
        <!-- Page Area End Here -->
    </div>
    <!-- jquery-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Data Table Js -->
    <script src="js/jquery.dataTables.min.js"></script>
    <!-- Scroll Up Js -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- Custom Js -->
    <script src="js/main.js"></script>

</body>


<!-- Mirrored from www.radiustheme.com/demo/html/psdboss/akkhor/akkhor/all-fees.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 24 Sep 2019 04:49:35 GMT -->
</html>
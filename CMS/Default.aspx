<%@ Page Title="" Language="C#" MasterPageFile="~/CMS/CMSmaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B_ERP_CMS.CMS.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>B-ERP(CMS)</title>
    <link rel="stylesheet" href="../assets/vendors/core/core.css">
	<link rel="stylesheet" href="../assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
	<link rel="stylesheet" href="../assets/fonts/feather-font/css/iconfont.css">
	<link rel="stylesheet" href="../assets/css/demo_5/style.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="page-content">

      

        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-flex justify-content-between align-items-baseline">
                      <h6 class="card-title mb-0">Total Apps</h6>
                      <div class="dropdown mb-2">
                        <button class="btn p-0" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye" class="icon-sm mr-2"></i> <span class="">View</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2" class="icon-sm mr-2"></i> <span class="">Edit</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="trash" class="icon-sm mr-2"></i> <span class="">Delete</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="printer" class="icon-sm mr-2"></i> <span class="">Print</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="download" class="icon-sm mr-2"></i> <span class="">Download</span></a>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-6 col-md-12 col-xl-5">
                        <h3 class="mb-2">
                            <asp:Label ID="lblApps" runat="server"></asp:Label></h3>
                        <div class="d-flex align-items-baseline">
                          <p class="text-success">
  
                          </p>
                        </div>
                      </div>
                      <div class="col-6 col-md-12 col-xl-7">
                        <div id="apexChart1" class="mt-md-3 mt-xl-0"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-flex justify-content-between align-items-baseline">
                      <h6 class="card-title mb-0">Total Design</h6>
                      <div class="dropdown mb-2">
                        <button class="btn p-0" type="button" id="dropdownMenuButton1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton1">
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye" class="icon-sm mr-2"></i> <span class="">View</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2" class="icon-sm mr-2"></i> <span class="">Edit</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="trash" class="icon-sm mr-2"></i> <span class="">Delete</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="printer" class="icon-sm mr-2"></i> <span class="">Print</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="download" class="icon-sm mr-2"></i> <span class="">Download</span></a>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-6 col-md-12 col-xl-5">
                        <h3 class="mb-2">  <asp:Label ID="lblDesign" runat="server"></asp:Label></h3>
                        <div class="d-flex align-items-baseline">
                          
                        </div>
                      </div>
                      <div class="col-6 col-md-12 col-xl-7">
                        <div id="apexChart2" class="mt-md-3 mt-xl-0"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-flex justify-content-between align-items-baseline">
                      <h6 class="card-title mb-0">Use Storage</h6>
                      <div class="dropdown mb-2">
                        <button class="btn p-0" type="button" id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton2">
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye" class="icon-sm mr-2"></i> <span class="">View</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2" class="icon-sm mr-2"></i> <span class="">Edit</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="trash" class="icon-sm mr-2"></i> <span class="">Delete</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="printer" class="icon-sm mr-2"></i> <span class="">Print</span></a>
                          <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="download" class="icon-sm mr-2"></i> <span class="">Download</span></a>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-6 col-md-12 col-xl-5">
                        <h3 class="mb-2">  <asp:Label ID="lblStore" runat="server"></asp:Label>MB</h3>
                        <div class="d-flex align-items-baseline">
                          
                        </div>
                      </div>
                      <div class="col-6 col-md-12 col-xl-7">
                        <div id="apexChart3" class="mt-md-3 mt-xl-0"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div> <!-- row -->

        

        <div class="row">
          <div class="col-lg-7 col-xl-8 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-baseline mb-2">
                  <h6 class="card-title mb-0">Monthly Working Report</h6>
                  <div class="dropdown mb-2">
                    <button class="btn p-0" type="button" id="dropdownMenuButton4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                    </button>
                   
                  </div>
                </div>
                
                <div class="monthly-sales-chart-wrapper">
                  <canvas id="monthly-sales-chart"></canvas>
                </div>
              </div> 
            </div>
          </div>
          <div class="col-lg-5 col-xl-4 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-baseline mb-2">
                  <h6 class="card-title mb-0">Cloud storage</h6>
                  <div class="dropdown mb-2">
                    <button class="btn p-0" type="button" id="dropdownMenuButton5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
                    </button>
                   
                  </div>
                </div>
                <div id="progressbar1" class="mx-auto"></div>
                <div class="row mt-4 mb-3">
                  <div class="col-6 d-flex justify-content-end">
                    <div>
                      <label class="d-flex align-items-center justify-content-end tx-10 text-uppercase font-weight-medium">Total storage <span class="p-1 ml-1 rounded-circle bg-primary-muted"></span></label>
                      <h5 class="font-weight-bold mb-0 text-right">
                          <asp:Label ID="lblTotalStorage" runat="server" ></asp:Label></h5>
                    </div>
                  </div>
                  <div class="col-6">
                    <div>
                      <label class="d-flex align-items-center tx-10 text-uppercase font-weight-medium"><span class="p-1 mr-1 rounded-circle bg-primary"></span> Used storage</label>
                      <h5 class="font-weight-bold mb-0"><asp:Label ID="lblUseStorage" runat="server" ></asp:Label></h5>
                    </div>
                  </div>
                </div>
                <button class="btn btn-primary btn-block">Upgrade storage</button>
              </div>
            </div>
          </div>
        </div> <!-- row -->

        <asp:TextBox ID="txtPersentage" runat="server"></asp:TextBox>

			</div>

    	<script src="../assets/vendors/core/core.js"></script>
	<!-- endinject -->
  <!-- plugin js for this page -->
  <script src="../assets/vendors/chartjs/Chart.min.js"></script>
  <script src="../assets/vendors/jquery.flot/jquery.flot.js"></script>
  <script src="../assets/vendors/jquery.flot/jquery.flot.resize.js"></script>
  <script src="../assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
  <script src="../assets/vendors/apexcharts/apexcharts.min.js"></script>
  <script src="../assets/vendors/progressbar.js/progressbar.min.js"></script>
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="../assets/vendors/feather-icons/feather.min.js"></script>
	<script src="../assets/js/template.js"></script>
	<!-- endinject -->
  <!-- custom js for this page -->
     <script type="text/javascript">
        
         $(function () {
             'use strict'
           

             var gridLineColor = 'rgba(77, 138, 240, .1)';

             var colors = {
                 primary: "#727cf5",
                 secondary: "#7987a1",
                 success: "#42b72a",
                 info: "#68afff",
                 warning: "#fbbc06",
                 danger: "#ff3366",
                 light: "#ececec",
                 dark: "#282f3a",
                 muted: "#686868"
             }


             // Apex chart1 start
             if ($('#apexChart1').length) {
                 var options1 = {
                     chart: {
                         type: "line",
                         height: 60,
                         sparkline: {
                             enabled: !0
                         }
                     },
                     series: [{
                         data: [3844, 3855, 3841, 3867, 3822, 3843, 3821, 3841, 3856, 3827, 3843]
                     }],
                     stroke: {
                         width: 2,
                         curve: "smooth"
                     },
                     markers: {
                         size: 0
                     },
                     colors: ["#727cf5"],
                     tooltip: {
                         fixed: {
                             enabled: !1
                         },
                         x: {
                             show: !1
                         },
                         y: {
                             title: {
                                 formatter: function (e) {
                                     return ""
                                 }
                             }
                         },
                         marker: {
                             show: !1
                         }
                     }
                 };
                 new ApexCharts(document.querySelector("#apexChart1"), options1).render();
             }
             // Apex chart1 end

             // Apex chart2 start
             if ($('#apexChart2').length) {
                 var options2 = {
                     chart: {
                         type: "bar",
                         height: 60,
                         sparkline: {
                             enabled: !0
                         }
                     },
                     plotOptions: {
                         bar: {
                             columnWidth: "60%"
                         }
                     },
                     colors: ["#727cf5"],
                     series: [{
                         data: [36, 77, 52, 90, 74, 35, 55, 23, 47, 10, 63]
                     }],
                     labels: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
                     xaxis: {
                         crosshairs: {
                             width: 1
                         }
                     },
                     tooltip: {
                         fixed: {
                             enabled: !1
                         },
                         x: {
                             show: !1
                         },
                         y: {
                             title: {
                                 formatter: function (e) {
                                     return ""
                                 }
                             }
                         },
                         marker: {
                             show: !1
                         }
                     }
                 };
                 new ApexCharts(document.querySelector("#apexChart2"), options2).render();
             }
             // Apex chart2 end

             // Apex chart3 start
             if ($('#apexChart3').length) {
                 var options3 = {
                     chart: {
                         type: "line",
                         height: 60,
                         sparkline: {
                             enabled: !0
                         }
                     },
                     series: [{
                         data: [41, 45, 44, 46, 52, 54, 43, 74, 82, 82, 89]
                     }],
                     stroke: {
                         width: 2,
                         curve: "smooth"
                     },
                     markers: {
                         size: 0
                     },
                     colors: ["#727cf5"],
                     tooltip: {
                         fixed: {
                             enabled: !1
                         },
                         x: {
                             show: !1
                         },
                         y: {
                             title: {
                                 formatter: function (e) {
                                     return ""
                                 }
                             }
                         },
                         marker: {
                             show: !1
                         }
                     }
                 };
                 new ApexCharts(document.querySelector("#apexChart3"), options3).render();
             }
             // Apex chart3 end
          
             // Progressgar1 start
             if ($('#progressbar1').length) {
                 var bar = new ProgressBar.Circle(progressbar1, {
                     color: colors.primary,
                     trailColor: gridLineColor,
                     // This has to be the same size as the maximum width to
                     // prevent clipping
                     strokeWidth: 4,
                     trailWidth: 1,
                     easing: 'easeInOut',
                     duration: 1400,
                     text: {
                         autoStyleContainer: false
                     },
                     from: { color: colors.primary, width: 1 },
                     to: { color: colors.primary, width: 4 },
                     // Set default step function for all animate calls
                     step: function (state, circle) {
                         circle.path.setAttribute('stroke', state.color);
                         circle.path.setAttribute('stroke-width', state.width);

                         var value = Math.round(circle.value() * 100);
                         if (value === 0) {
                             circle.setText('');
                         } else {
                             circle.setText(value + '%');
                         }

                     }
                 });
                 bar.text.style.fontFamily = "'Overpass', sans-serif;";
                 bar.text.style.fontSize = '3rem';

                 $("#Body_txtPersentage").hide();
                 
                 var b = parseInt($("#Body_txtPersentage").val());
                 var xx = (b/100);
                 bar.animate(xx);
             }
             // Progressgar1 start

             // Monthly sales chart start
             if ($('#monthly-sales-chart').length) {
                 var monthlySalesChart = document.getElementById('monthly-sales-chart').getContext('2d');
                 new Chart(monthlySalesChart, {
                     type: 'bar',
                     data: {
                         labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                         datasets: [{
                             label: 'Sales',
                             data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                             backgroundColor: colors.primary
                         }]
                     },
                     options: {
                         maintainAspectRatio: false,
                         legend: {
                             display: false,
                             labels: {
                                 display: false
                             }
                         },
                         scales: {
                             xAxes: [{
                                 display: true,
                                 barPercentage: .3,
                                 categoryPercentage: .6,
                                 gridLines: {
                                     display: false
                                 },
                                 ticks: {
                                     fontColor: '#8392a5',
                                     fontSize: 10
                                 }
                             }],
                             yAxes: [{
                                 gridLines: {
                                     color: gridLineColor
                                 },
                                 ticks: {
                                     fontColor: '#8392a5',
                                     fontSize: 10,
                                     min: 80,
                                     max: 200
                                 }
                             }]
                         }
                     }
                 }
                 );
             }
             // Monthly sales chart end

         });
     </script>
  <script src="../assets/js/datepicker.js"></script>
   
</asp:Content>

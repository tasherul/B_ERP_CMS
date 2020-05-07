<%@ Page Title="" Language="C#" MasterPageFile="~/CMS/CMSmaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="B_ERP_CMS.CMS.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Profile</title>
    <link rel="stylesheet" href="../../../assets/vendors/prismjs/themes/prism.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="page-wrapper">
       

        <div class="page-content">

            <div class="profile-page tx-13">
                <div class="row">
                    <div class="col-12 grid-margin">
                        <div class="profile-header">
                            <div class="cover">
                                <div class="gray-shade"></div>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <%--<figure>
                                    <img src="../../../assets/images/profile-cover.jpg" class="img-fluid" alt="profile cover">
                                </figure>--%>
                                <div class="cover-body d-flex justify-content-between align-items-center">
                                    <div>
                                        <asp:Image ID="ProfileImage" CssClass="profile-pic" runat="server" />
                                        <span class="profile-name">
                                            <asp:Label ID="lblName" runat="server"></asp:Label></span>
                                    </div>
                                   <div class="d-none d-md-block">
											<a href="../CMS/Settings" class="btn btn-primary btn-icon-text btn-edit-profile">
												<i data-feather="edit" class="btn-icon-prepend"></i> Edit profile
											</a>
										</div>
                                </div>
                            </div>
                            <div class="header-links">
                                <ul class="links d-flex align-items-center mt-3 mt-md-0">
                                    <li class="header-link-item d-flex align-items-center active">
                                        <i class="mr-1 icon-md" data-feather="box"></i>
                                        <a class="pt-1px d-none d-md-block" href="#">Dashboard</a>
                                    </li>
                                    <li class="header-link-item ml-3 pl-3 border-left d-flex align-items-center">
                                        <i class="mr-1 icon-md" data-feather="user"></i>
                                        <a class="pt-1px d-none d-md-block" href="mail">Message</a>
                                    </li>
                                    <li class="header-link-item ml-3 pl-3 border-left d-flex align-items-center">
                                        <i class="mr-1 icon-md" data-feather="grid"></i>
                                        <a class="pt-1px d-none d-md-block" href="#">Development</a>
                                    </li>
                                    <li class="header-link-item ml-3 pl-3 border-left d-flex align-items-center">
                                        <i class="mr-1 icon-md" data-feather="grid"></i>
                                        <a class="pt-1px d-none d-md-block" href="#">Design</a>
                                    </li>
                                    <li class="header-link-item ml-3 pl-3 border-left d-flex align-items-center">
                                        <i class="mr-1 icon-md" data-feather="shopping-bag"></i>
                                        <a class="pt-1px d-none d-md-block" href="#">Order</a>
                                    </li>
                                    <li class="header-link-item ml-3 pl-3 border-left d-flex align-items-center">
                                        <i class="mr-1 icon-md" data-feather="star"></i>
                                        <a class="pt-1px d-none d-md-block" href="#">Ratting</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row profile-body">
                    <!-- left wrapper start -->
                    <div class="d-none d-md-block col-md-4 col-xl-3 left-wrapper">
                        <div class="card rounded">
                            <div class="card-body">
                                <div class="d-flex align-items-center justify-content-between mb-2">
                                    <h6 class="card-title mb-0">About</h6>
                                </div>
                                <p>
                                    <asp:Label ID="lblDiscription" runat="server"></asp:Label>
                                </p>
                                <div class="mt-3">
                                    <label class="tx-11 font-weight-bold mb-0 text-uppercase">Joined:</label>
                                    <p class="text-muted">
                                        <asp:Label ID="lblJoinDate" runat="server"></asp:Label>
                                    </p>
                                </div>
                                <div class="mt-3">
                                    <label class="tx-11 font-weight-bold mb-0 text-uppercase">Lives:</label>
                                    <p class="text-muted">
                                        <asp:Label ID="lblRegionCountry" runat="server"></asp:Label></p>
                                </div>
                                <div class="mt-3">
                                    <label class="tx-11 font-weight-bold mb-0 text-uppercase">Email:</label>
                                    <p class="text-muted">
                                        <asp:Label ID="lblEmail" runat="server"></asp:Label></p>
                                </div>
                                <div class="mt-3">
                                    <label class="tx-11 font-weight-bold mb-0 text-uppercase">Website:</label>
                                    <p class="text-muted">
                                        <asp:Label ID="lblWebsite" runat="server"></asp:Label></p>
                                </div>

                                <%--<div class="mt-3 d-flex social-links">
                                    <a href="javascript:;" class="btn d-flex align-items-center justify-content-center border mr-2 btn-icon github">
                                        <i data-feather="github" data-toggle="tooltip" title="github.com/nobleui"></i>
                                    </a>
                                    <a href="javascript:;" class="btn d-flex align-items-center justify-content-center border mr-2 btn-icon twitter">
                                        <i data-feather="twitter" data-toggle="tooltip" title="twitter.com/nobleui"></i>
                                    </a>
                                    <a href="javascript:;" class="btn d-flex align-items-center justify-content-center border mr-2 btn-icon twitter">
                                        <i data-feather="facebook" data-toggle="tooltip" title="instagram.com/nobleui"></i>
                                    </a>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <!-- left wrapper end -->
                    <!-- middle wrapper start -->
                    <div class="col-md-8 col-xl-6 middle-wrapper">
                        <div class="row">
                            <div class="col-md-12 grid-margin">
                                <div class="card rounded">
                                    <div class="card-header">
                                        <div class="d-flex align-items-center justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <img class="img-xs rounded-circle" src="../../../assets/images/faces/face1.jpg" alt="">
                                                <div class="ml-2">
                                                    <p>Mike Popescu</p>
                                                    <p class="tx-11 text-muted">1 min ago</p>
                                                </div>
                                            </div>
                                            <div class="dropdown">
                                                <button class="btn p-0" type="button" id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="icon-lg pb-3px" data-feather="more-horizontal"></i>
                                                </button>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
                                                    <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="meh" class="icon-sm mr-2"></i><span class="">Unfollow</span></a>
                                                    <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="corner-right-up" class="icon-sm mr-2"></i><span class="">Go to post</span></a>
                                                    <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="share-2" class="icon-sm mr-2"></i><span class="">Share</span></a>
                                                    <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="copy" class="icon-sm mr-2"></i><span class="">Copy link</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p class="mb-3 tx-14">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus minima delectus nemo unde quae recusandae assumenda.</p>
                                        <img class="img-fluid" src="../../../assets/images/sample1.jpg" alt="">
                                    </div>
                                    <div class="card-footer">
                                        <div class="d-flex post-actions">
                                            <a href="javascript:;" class="d-flex align-items-center text-muted mr-4">
                                                <i class="icon-md" data-feather="heart"></i>
                                                <p class="d-none d-md-block ml-2">Like</p>
                                            </a>
                                            <a href="javascript:;" class="d-flex align-items-center text-muted mr-4">
                                                <i class="icon-md" data-feather="message-square"></i>
                                                <p class="d-none d-md-block ml-2">Comment</p>
                                            </a>
                                            <a href="javascript:;" class="d-flex align-items-center text-muted">
                                                <i class="icon-md" data-feather="share"></i>
                                                <p class="d-none d-md-block ml-2">Share</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="card rounded">
                                    <div class="card-header">
                                        <div class="d-flex align-items-center justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <img class="img-xs rounded-circle" src="../../../assets/images/faces/face1.jpg" alt="">
                                                <div class="ml-2">
                                                    <p>Mike Popescu</p>
                                                    <p class="tx-11 text-muted">5 min ago</p>
                                                </div>
                                            </div>
                                            <div class="dropdown">
                                                <button class="btn p-0" type="button" id="dropdownMenuButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="icon-lg pb-3px" data-feather="more-horizontal"></i>
                                                </button>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton3">
                                                    <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="meh" class="icon-sm mr-2"></i><span class="">Unfollow</span></a>
                                                    <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="corner-right-up" class="icon-sm mr-2"></i><span class="">Go to post</span></a>
                                                    <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="share-2" class="icon-sm mr-2"></i><span class="">Share</span></a>
                                                    <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="copy" class="icon-sm mr-2"></i><span class="">Copy link</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p class="mb-3 tx-14">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                        <img class="img-fluid" src="../../../assets/images/sample2.jpg" alt="">
                                    </div>
                                    <div class="card-footer">
                                        <div class="d-flex post-actions">
                                            <a href="javascript:;" class="d-flex align-items-center text-muted mr-4">
                                                <i class="icon-md" data-feather="heart"></i>
                                                <p class="d-none d-md-block ml-2">Like</p>
                                            </a>
                                            <a href="javascript:;" class="d-flex align-items-center text-muted mr-4">
                                                <i class="icon-md" data-feather="message-square"></i>
                                                <p class="d-none d-md-block ml-2">Comment</p>
                                            </a>
                                            <a href="javascript:;" class="d-flex align-items-center text-muted">
                                                <i class="icon-md" data-feather="share"></i>
                                                <p class="d-none d-md-block ml-2">Share</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- middle wrapper end -->
                    <!-- right wrapper start -->
                    <div class="d-none d-xl-block col-xl-3 right-wrapper">
                        <div class="row">
                            <div class="col-md-12 grid-margin">
                                <div class="card rounded">
                                    <div class="card-body">
                                        <h6 class="card-title">Activities</h6>
                                        <div class="latest-photos">
                                            <div class="mt-3">
                                                <label class="tx-11 font-weight-bold mb-0 text-uppercase">Online Status: </label>
                                                <asp:Label ID="lblIconOnlineState" runat="server"></asp:Label>
                                                <p class="text-muted">
                                                    <asp:Label ID="lblOnlineStatus" runat="server"></asp:Label>
                                                </p>
                                            </div>

                                            <div class="mt-3">
                                                <label class="tx-11 font-weight-bold mb-0 text-uppercase">Email : </label>
                                                <asp:Label ID="lblIconEmail" runat="server"></asp:Label>
                                                <p class="text-muted">
                                                    <asp:Label ID="lblEmailEncrypt" runat="server"></asp:Label>
                                                </p>
                                            </div>
                                            <div class="mt-3">
                                                <label class="tx-11 font-weight-bold mb-0 text-uppercase">Moblie: </label>
                                                <asp:Label ID="lblIconMobile" runat="server"></asp:Label>
                                                <p class="text-muted">
                                                    <asp:Label ID="lblMobileNumber" runat="server"></asp:Label>
                                                </p>
                                            </div>

                                            <div class="mt-3">
                                                <label class="tx-11 font-weight-bold mb-0 text-uppercase">Application Status: </label>
                                                <asp:Label ID="lblIconMaximamApps" runat="server"></asp:Label>
                                                <p class="text-muted">
                                                    Make Apps upto
                                                    <asp:Label ID="lblApps" runat="server"></asp:Label>
                                                </p>
                                            </div>

                                            <div class="mt-3">
                                                <label class="tx-11 font-weight-bold mb-0 text-uppercase">Profile Complete: </label>
                                                <asp:Label ID="lblIconProfileComplete" runat="server"></asp:Label>
                                                <p class="text-muted">
                                                    <asp:Label ID="lblProfileComplete" runat="server"></asp:Label>
                                                </p>
                                            </div>






                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 grid-margin">
                                <div class="card rounded">
                                    <div class="card-body">
                                        <h6 class="card-title">suggestions for you</h6>
                                        <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
                                            <div class="d-flex align-items-center hover-pointer">
                                                <img class="img-xs rounded-circle" src="../../../assets/images/faces/face2.jpg" alt="">
                                                <div class="ml-2">
                                                    <p>Mike Popescu</p>
                                                    <p class="tx-11 text-muted">12 Mutual Friends</p>
                                                </div>
                                            </div>
                                            <button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
                                        </div>
                                        <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
                                            <div class="d-flex align-items-center hover-pointer">
                                                <img class="img-xs rounded-circle" src="../../../assets/images/faces/face3.jpg" alt="">
                                                <div class="ml-2">
                                                    <p>Mike Popescu</p>
                                                    <p class="tx-11 text-muted">12 Mutual Friends</p>
                                                </div>
                                            </div>
                                            <button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
                                        </div>
                                        <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
                                            <div class="d-flex align-items-center hover-pointer">
                                                <img class="img-xs rounded-circle" src="../../../assets/images/faces/face4.jpg" alt="">
                                                <div class="ml-2">
                                                    <p>Mike Popescu</p>
                                                    <p class="tx-11 text-muted">12 Mutual Friends</p>
                                                </div>
                                            </div>
                                            <button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
                                        </div>
                                        <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
                                            <div class="d-flex align-items-center hover-pointer">
                                                <img class="img-xs rounded-circle" src="../../../assets/images/faces/face5.jpg" alt="">
                                                <div class="ml-2">
                                                    <p>Mike Popescu</p>
                                                    <p class="tx-11 text-muted">12 Mutual Friends</p>
                                                </div>
                                            </div>
                                            <button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
                                        </div>
                                        <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
                                            <div class="d-flex align-items-center hover-pointer">
                                                <img class="img-xs rounded-circle" src="../../../assets/images/faces/face6.jpg" alt="">
                                                <div class="ml-2">
                                                    <p>Mike Popescu</p>
                                                    <p class="tx-11 text-muted">12 Mutual Friends</p>
                                                </div>
                                            </div>
                                            <button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
                                        </div>
                                        <div class="d-flex justify-content-between">
                                            <div class="d-flex align-items-center hover-pointer">
                                                <img class="img-xs rounded-circle" src="../../../assets/images/faces/face7.jpg" alt="">
                                                <div class="ml-2">
                                                    <p>Mike Popescu</p>
                                                    <p class="tx-11 text-muted">12 Mutual Friends</p>
                                                </div>
                                            </div>
                                            <button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- right wrapper end -->
                </div>
            </div>
        </div>
    </div>
		<!-- core:js -->
	<script src="../../../assets/vendors/core/core.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="../../../assets/vendors/feather-icons/feather.min.js"></script>
	<script src="../../../assets/js/template.js"></script>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="500.aspx.cs" Inherits="B_ERP_CMS._500" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error 500</title>
    <link rel="stylesheet" href="../../../assets/vendors/core/core.css"/>
	<link rel="stylesheet" href="../../../assets/fonts/feather-font/css/iconfont.css"/>
	<link rel="stylesheet" href="../../../assets/css/demo_5/style.css"/>
  <link rel="shortcut icon" href="../../../assets/images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="main-wrapper">
		<div class="page-wrapper full-page">
			<div class="page-content d-flex align-items-center justify-content-center">

				<div class="row w-100 mx-0 auth-page">
					<div class="col-md-8 col-xl-6 mx-auto d-flex flex-column align-items-center">
						<img src="../../../assets/images/404.svg" class="img-fluid mb-2" alt="404">
						<h1 class="font-weight-bold mb-22 mt-2 tx-80 text-muted">500</h1>
						<h4 class="mb-2">Internal server error</h4>
						<h6 class="text-muted mb-3 text-center">Oopps!! There wan an error. Please try agin later.</h6>
						<a href="../../Home" class="btn btn-primary-muted">Back to home</a>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script src="../../../assets/vendors/core/core.js"></script>
	<script src="../../../assets/vendors/feather-icons/feather.min.js"></script>
	<script src="../../../assets/js/template.js"></script>
    </form>
</body>
</html>

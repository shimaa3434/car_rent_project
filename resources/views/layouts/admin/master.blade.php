<!DOCTYPE html>
<html lang="en">
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Rent Car Admin | @yield('title')</title>

	@include('layouts/admin/links')
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.html" class="site_title"><i class="fa fa-car"></i> <span>Rent Car Admin</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- sidebar menu -->
					@include('layouts/admin/sidebar')
					<!-- /sidebar menu -->


				</div>
			</div>

			<!-- top navigation -->
			@include('layouts/admin/topNav')
			<!-- /top navigation -->

			<!-- page content -->
            @yield("content")
			<!-- /page content -->

			<!-- footer content -->
			@include('layouts/admin/footer')
			<!-- /footer content -->
		</div>
	</div>

	<!-- jQuery -->
	@include('layouts/admin/script')
</body>
</html>

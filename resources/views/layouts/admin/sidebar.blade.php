<!-- menu profile quick info -->
<div class="profile clearfix">
    <div class="profile_pic">
        <img src="{{asset('admin/images/img.jpg')}}" alt="..." class="img-circle profile_img">
    </div>

    <div class="profile_info">
        <span>Welcome,</span>

        <h2>{{ Auth::user()->username }}</h2>

    </div>

</div>

<!-- /menu profile quick info -->

<br />
<!-- sidebar menu -->
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
    <div class="menu_section">
        <h3>General</h3>
        <ul class="nav side-menu">
            <li><a><i class="fa fa-users"></i> Users <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="/dashboard">Users List</a></li>
                    <li><a href="/user/add">Add User</a></li>
                </ul>
            </li>
            <li><a><i class="fa fa-edit"></i> Categories <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="/category/add">Add Category</a></li>
                    <li><a href="/all_category">Categories List</a></li>
                </ul>
            </li>
            <li><a><i class="fa fa-desktop"></i> Cars <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="/car/add">Add Car</a></li>
                    <li><a href="/all_cars">Cars List</a></li>
                </ul>
            </li>
<li><a><i class="fa fa-desktop"></i> Testimonials <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="/testimoials/add">Add Testimonials</a></li>
                    <li><a href="/all_testimoials">All Testimonials</a></li>
                </ul>
            </li>
<li><a><i class="fa fa-desktop"></i> Messages <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="/all_messages">Messages</a></li>
                </ul>
            </li>
        </ul>
    </div>

</div>

<!-- /sidebar menu -->

<!-- /menu footer buttons -->
<div class="sidebar-footer hidden-small">
    <a data-toggle="tooltip" data-placement="top" title="Settings">
        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
    </a>
    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
    </a>
    <a data-toggle="tooltip" data-placement="top" title="Lock">
        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
    </a>
    <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
    </a>
</div>
<!-- /menu footer buttons -->

<style>
    .colo1{
        color: #000;
        font-size:large;
    }
</style>

<!-- Navbar -->
<nav class="navbar fixed-top navbar-expand-lg scrolling-navbar double-nav" style="background-color:rgba(156, 39, 176, 0.3) ">

    <!-- SideNav slide-out button -->
    <div class="float-left">
        <a href="#" data-activates="slide-out" class="button-collapse"><i class="fas fa-bars text-dark"></i></a>
    </div>


    <div class="d-flex change-mode">


        <!-- Navbar links -->
        <ul class="nav navbar-nav nav-flex-icons ml-auto">

            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
            <li class="nav-item avatar dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-55" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    <span class="clearfix d-none d-sm-inline-block colo1"><b>{{Auth::user()->name}}  <i class="fas fa-sign-out-alt" ></i></b></span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg-right dropdown-secondary" >
                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal" > <i class="fas fa-sign-out-alt" ></i>  Logout</a>


                </div>
            </li>

        </ul>
        <!-- Navbar links -->

    </div>

</nav>
<!-- Navbar -->


<!-- Logout Modal-->
@guest
@else
    <!--Modal: Login with Avatar Form-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog cascading-modal modal-avatar modal-sm" role="document">
            <!--Content-->
            <div class="modal-content">

                    <div class="md-form ml-0 mr-0">
                        "{{Auth::user()->name}}" Are You Ready to Leave ?
                    </div>
                    <hr>

                    <div class=" mt-4">
                        <a class="btn  btn-purple btn-rounded" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">Logout<i class="fas fa-sign-in ml-1"></i></a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                        <button class="btn btn-outline-warning btn-rounded" data-dismiss="modal">Cancel <i class="fas fa-sign-in ml-1"></i></button>
                    </div>
                </div>

            </div>
            <!--/.Content-->
        </div>
    </div>
    <!--Modal: Login with Avatar Form-->

@endguest


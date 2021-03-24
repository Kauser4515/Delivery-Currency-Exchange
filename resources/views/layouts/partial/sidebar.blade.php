<nav class="sidebar sidebar-offcanvas dynamic-active-class-disabled" id="sidebar">
  <ul class="nav">
    <li class="nav-item nav-profile not-navigation-link">
      <div class="nav-link">
        <div class="user-wrapper">
          <span> <strong>EkCalculator</strong></span></p>
        </div>
      </div>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="{{ route('pricing.index') }}">
        <i class="menu-icon mdi mdi-television"></i>
        <span class="menu-title">Dashboard</span>
      </a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" data-toggle="collapse" href="#basic-ui" aria-expanded="" aria-controls="basic-ui">
        <i class="menu-icon mdi mdi-account-multiple"></i>
        <span class="menu-title">Users</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse " id="basic-ui">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item ">
            <a class="nav-link" href="{{ route('admin.user.index') }}">All Users</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="{{ route('admin.user.create') }}">Create User</a>
          </li>
        </ul>
      </div>
    </li>
    <li class="nav-item ">
      <a class="nav-link" data-toggle="collapse" href="#Attendance-pages" aria-expanded="" aria-controls="user-pages">
        <i class="menu-icon mdi mdi-calendar-clock"></i>
        <span class="menu-title">Calculator</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse " id="Attendance-pages">
        <ul class="nav flex-column sub-menu">
          <!-- <li class="nav-item ">
            <a class="nav-link" href="{{ route('price.calculate') }}">Calculate</a>
          </li> -->
          <li class="nav-item ">
            <a class="nav-link" href="{{ route('pricing.index') }}">Calculated Value</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="{{ route('country.create') }}">Countries</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="{{ route('carrier.create') }}">Carrier</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="{{ route('category.create') }}">Category</a>
          </li>
        </ul>
      </div>
    </li>
    <li class="nav-item ">
      <a class="nav-link" data-toggle="collapse" href="#Settings-pages" aria-expanded="" aria-controls="user-pages">
        <i class="menu-icon mdi mdi-lock-outline"></i>
        <span class="menu-title">Settings</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse " id="Settings-pages">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item ">
            <a class="nav-link" href="{{ route('password.request') }}">Reset Password</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="{{ route('logout') }}"
             onclick="event.preventDefault();
                           document.getElementById('logout-form').submit();">
              {{ __('Logout') }}
          </a>
          </li>
        </ul>
      </div>
    </li>
  </ul>
</nav>
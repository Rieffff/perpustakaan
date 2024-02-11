<!-- Header section  -->
	<nav class="nav-section">
		<div class="container">
			<div class="nav-right">
				<a href=""><i class="fa fa-search"></i></a>
				<a href="{{ url('/sign') }}"><i class="fa fa-sign-in"></i></a>
			</div>
			<ul class="main-menu">
				<li class="{{ ($title == 'Home') ? 'active' : '' }}"  ><a href="{{ url('/')  }}">Home</a></li>
				<li class="{{ ($title == 'Blog') ? 'active' : '' }}"><a href="{{ url('/blog') }}">blog</a></li>
				<li></li>
			</ul>
		</div>
	</nav>
	<!-- Header section end -->

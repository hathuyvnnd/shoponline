<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-fluid">
	<div class="row bg-secondary py-1 px-xl-5">
		<div class="col-lg-6 d-none d-lg-block">
			<div class="d-inline-flex align-items-center h-100">
				<a class="text-body mr-3" href="">About</a> <a
					class="text-body mr-3" href="">Contact</a> <a
					class="text-body mr-3" href="/login">Help</a>
			</div>
		</div>
		<div class="col-lg-6 text-center text-lg-right">
			<div class="d-inline-flex align-items-center">
				<div class="btn-group">
					<c:if test="${not empty error}">
						<!-- Kiểm tra xem errorMessage có tồn tại không -->
						<div class="form-text text-danger">${error}</div>
					</c:if>
					<button type="button" class="btn btn-sm btn-light dropdown-toggle"
						data-toggle="dropdown">
						<c:if test="${not empty user}">
                        						${user.tenTaiKhoan}
                    						</c:if>
						<c:if test="${empty user}">
                                                   My Account
                    						</c:if>
					</button>
					<div class="dropdown-menu dropdown-menu-right">
						<c:if test="${not empty user}">
							<a href="/logout" class="dropdown-item">LogOut</a>
							<a href="/changePass" class="dropdown-item">Change Password</a>
							<a href="/logout" class="dropdown-item">Change Account</a>
						</c:if>

						<c:if test="${empty user}">
							<a class="dropdown-item" href="/login">Login</a>
							<a class="dropdown-item" href="/signup">SignUp</a>

							<a class="dropdown-item" href="forgot-password">Forget
								Password</a>
						</c:if>
						<a class="dropdown-item" href="/accountInfo">Account</a>
						<c:if test="${not empty user and user.vaiTro}">
							<a class="dropdown-item" href="admin">Admin</a>
						</c:if>
						<a href="/don-hang-cua-toi" class="dropdown-item">User Orders</a>


					</div>
				</div>
				<div class="btn-group mx-2">
					<button type="button" class="btn btn-sm btn-light dropdown-toggle"
						data-toggle="dropdown">USD</button>
					<div class="dropdown-menu dropdown-menu-right">
						<button class="dropdown-item" type="button">EUR</button>
						<button class="dropdown-item" type="button">GBP</button>
						<button class="dropdown-item" type="button">CAD</button>
					</div>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-sm btn-light dropdown-toggle"
						data-toggle="dropdown">EN</button>
					<div class="dropdown-menu dropdown-menu-right">
						<button class="dropdown-item" type="button">FR</button>
						<button class="dropdown-item" type="button">AR</button>
						<button class="dropdown-item" type="button">RU</button>
					</div>
				</div>
			</div>
			<div class="d-inline-flex align-items-center d-block d-lg-none">
				<a href="" class="btn px-0 ml-2"> <i
					class="fas fa-heart text-dark"></i> <span
					class="badge text-dark border border-dark rounded-circle"
					style="padding-bottom: 2px;">0</span>
				</a> <a href="" class="btn px-0 ml-2"> <i
					class="fas fa-shopping-cart text-dark"></i> <span
					class="badge text-dark border border-dark rounded-circle"
					style="padding-bottom: 2px;">0</span>
				</a>
			</div>
		</div>
	</div>
	<div
		class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
		<div class="col-lg-4">
			<a href="" class="text-decoration-none"> <span
				class="h1 text-uppercase text-primary bg-dark px-2">Actermis</span>
				<span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Shop</span>
			</a>
		</div>
		<div class="col-lg-4 col-6 text-left">
			<form action="" method="post">
				<div class="input-group">
					<input type="text" name="key" class="form-control"
						placeholder="Search for products" value="${key}">
					<div class="input-group-append">
						<span class="input-group-text bg-transparent text-primary">
							<i class="fa fa-search"><button formaction="search"></button></i>
						</span>
					</div>
				</div>
			</form>
		</div>
		<div class="col-lg-4 col-6 text-right">
			<p class="m-0">Customer Service</p>
			<h5 class="m-0">+012 345 6789</h5>
		</div>
	</div>
</div>
<!-- Topbar End -->

<!-- Navbar Start -->
<div class="container-fluid bg-dark mb-30">
	<div class="row px-xl-5">
		<div class="col-lg-3 d-none d-lg-block">
			<a
				class="btn d-flex align-items-center justify-content-between bg-primary w-100"
				data-toggle="collapse" href="#navbar-vertical"
				style="height: 65px; padding: 0 30px;">
				<h6 class="text-dark m-0">
					<i class="fa fa-bars mr-2"></i>Categories
				</h6> <i class="fa fa-angle-down text-dark"></i>
			</a>
			<nav
				class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light"
				id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
				<div class="navbar-nav w-100" name="loai">
					<c:forEach items="${listLoaiSP}" var="loaiSP">
						<a href="/loai/?loai=${loaiSP.maLoaiSP}" class="nav-item nav-link">${loaiSP.tenLoaiSP}</a>
					</c:forEach>

				</div>
			</nav>
		</div>
		<div class="col-lg-9">
			<nav
				class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
				<a href="" class="text-decoration-none d-block d-lg-none"> <span
					class="h1 text-uppercase text-dark bg-light px-2">Actermis</span> <span
					class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
				</a>
				<button type="button" class="navbar-toggler" data-toggle="collapse"
					data-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-between"
					id="navbarCollapse">
					<div class="navbar-nav mr-auto py-0">
						<a href="/" class="nav-item nav-link active">Home</a>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle"
								data-toggle="dropdown">Pages <i
								class="fa fa-angle-down mt-1"></i></a>
							<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
								<a href="/cart" class="dropdown-item">Shopping Cart</a>
							</div>
						</div>

					</div>
					<div class="navbar-nav ml-auto py-0 d-none d-lg-block">
						<a href="" class="btn px-0"> <i
							class="fas fa-heart text-primary"></i> <span
							class="badge text-secondary border border-secondary rounded-circle"
							style="padding-bottom: 2px;">0</span>
						</a> <a href="/cart" class="btn px-0 ml-3"> <i
							class="fas fa-shopping-cart text-primary"></i> <span
							class="badge text-secondary border border-secondary rounded-circle"
							style="padding-bottom: 2px;">${totalUniqueProducts}</span>
						</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
</div>
<!-- Navbar End -->
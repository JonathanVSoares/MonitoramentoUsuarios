<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<header>
	<title>e-Eye</title>
	<meta charset="UTF-8" />
	<link rel="icon" type="image/png"
		href="<c:url value="/resources/imagens/logo1.png"/>" />
	<link
		href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
		rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css"
		href="<c:url value="/resources/css/font-awesome.min.css"/>" />
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<c:url value="resources/js/bootstrap-multiselect.js"/>"></script>
	<link rel="stylesheet"
		href="<c:url value="resources/css/bootstrap-multiselect.css"/>"
		type="text/css" />

	<link rel="stylesheet" type="text/css"
		href="<c:url value="/resources/css/style.css"/>" />
	<script src="<c:url value="/resources/amcharts/amcharts.js"/>"></script>
	<script src="<c:url value="/resources/amcharts/pie.js"/>"></script>
	<script src="<c:url value="/resources/amcharts/serial.js"/>"></script>
	<script src="<c:url value="/resources/js/echarts.min.js"/>"></script>
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
</header>
<body
	class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo page-md">

	<div class="page-header navbar navbar-fixed-top">
		<div class="page-header-inner">
			<div class="page-logo">
				<a href="dashboard"> <img
					src="<c:url value="/resources/imagens/logo.png"/>" alt="logo"
					class="logo-default">
				</a>
			</div>
		</div>
	</div>

	<div class="clearfix"></div>
	<div class="page-container">
		<div class="nav-side-menu">
			<div class="menu-list">
				<ul id="menu-content" class="menu-content collapse">
					<li><a href="dashboard"> <i class="fa fa-home"></i>
							Dashboard
					</a></li>

					<li data-toggle="collapse" data-target="#publico" class="collapsed"><a
						href="#"><i class="fa fa-user"></i> Público <span
							class="arrow"></span></a></li>
					<ul class="sub-menu collapse" id="publico">
						<li><a href="/tcc/tecnologia">Tecnologia</a></li>
						<li><a href="/tcc/localizacao">Localização</a></li>
					</ul>
					<li data-toggle="collapse" data-target="#comportamento"
						style="border-bottom: 0px;"><a href="#"><i
							class="fa fa-lightbulb-o"></i> Comportamento <span class="arrow"></span></a>
					</li>
					<ul class="sub-menu collapse in" id="comportamento"
						aria-expanded="true">
						<li class="active"><a href="/tcc/horario">Horário de Acessos</a></li>
					   
						<li><a href="/tcc/buscas">Buscas</a></li>
						<li><a href="/tcc/paginasEventos">Páginas e Eventos</a></li>
					</ul>
				</ul>
			</div>
		</div>

		<div class="page-content-wrapper">
			<div class="page-content">
				<div class="col-md-12">
					<div class="row pull-right" style="margin-bottom: 15px;">
						<div class="actions">
							<div class="btn-group dropdown-dias" id="dropdown-secoes-horario">
								<button
									class="btn btn-default btn-sm dropdown-toggle dropdown-dias-escolhidos"
									id="datebtn" type="button" data-toggle="dropdown"
									aria-expanded="false">
									Últimos X dias <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li class="dropdown-dias-valor"><a
										style="padding-top: 7px; padding-bottom: 7px;"
										href="javascript:;" class="valor-dropdown" data-value="7">
											Últimos 7 dias </a></li>
									<li class="dropdown-dias-valor"><a
										style="padding-top: 7px; padding-bottom: 7px;"
										href="javascript:;" class="valor-dropdown" data-value="15">
											Últimos 15 dias </a></li>
									<li class="dropdown-dias-valor"><a
										style="padding-top: 7px; padding-bottom: 7px;"
										href="javascript:;" class="valor-dropdown" data-value="30">
											Últimos 30 dias </a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="row">

					<div class="col-lg-6 col-md-6">
						<div class="portlet light bordered" id="secao-manha">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Manhã</span>
									<span class="caption-helper">06:00 - 12:00</span>
								</div>

							</div>
							<div class="portlet-body" style="padding-top: 0px;">
								<div class="mt-element-list">
									<div class="mt-list-container list-default">
										<ul>
											<li class="mt-list-item item-visitantes">
												<div class="list-icon-container done">
													<i class="fa fa-eye" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Visitantes</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-pesquisas">
												<div class="list-icon-container done">
													<i class="fa fa-search" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Pesquisas</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-wishlist">
												<div class="list-icon-container done">
													<i class="fa fa-heart-o" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Adições na Wishlist</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-carrinho">
												<div class="list-icon-container done">
													<i class="fa fa-shopping-cart" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Adições no Carrinho</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-mobile">
												<div class="list-icon-container done">
													<i class="fa fa-mobile" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Utilizando mobile</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-medias">
												<div class="list-icon-container done">
													<i class="fa fa-clock-o" style="color: #073763"></i>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Média da sessão</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="col-lg-6 col-md-6">
						<div class="portlet light bordered" id="secao-tarde">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Tarde</span>
									<span class="caption-helper">12:00 - 18:00</span>
								</div>
							</div>
							<div class="portlet-body" style="padding-top: 0px;">
								<div class="mt-element-list">
									<div class="mt-list-container list-default">
										<ul>
											<li class="mt-list-item item-visitantes">
												<div class="list-icon-container done">
													<i class="fa fa-eye" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Visitantes</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-pesquisas">
												<div class="list-icon-container done">
													<i class="fa fa-search" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Pesquisas</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-wishlist">
												<div class="list-icon-container done">
													<i class="fa fa-heart-o" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Adições na Wishlist</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-carrinho">
												<div class="list-icon-container done">
													<i class="fa fa-shopping-cart" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Adições no Carrinho</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-mobile">
												<div class="list-icon-container done">
													<i class="fa fa-mobile" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Utilizando mobile</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-medias">
												<div class="list-icon-container done">
													<i class="fa fa-clock-o" style="color: #073763"></i>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Média da sessão</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">

					<div class="col-lg-6 col-md-6">
						<div class="portlet light bordered" id="secao-noite">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Noite</span>
									<span class="caption-helper">18:00 - 00:00</span>
								</div>
							</div>
							<div class="portlet-body" style="padding-top: 0px;">
								<div class="mt-element-list">
									<div class="mt-list-container list-default">
										<ul>
											<li class="mt-list-item item-visitantes">
												<div class="list-icon-container done">
													<i class="fa fa-eye" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Visitantes</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-pesquisas">
												<div class="list-icon-container done">
													<i class="fa fa-search" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Pesquisas</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-wishlist">
												<div class="list-icon-container done">
													<i class="fa fa-heart-o" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Adições na Wishlist</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-carrinho">
												<div class="list-icon-container done">
													<i class="fa fa-shopping-cart" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Adições no Carrinho</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-mobile">
												<div class="list-icon-container done">
													<i class="fa fa-mobile" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Utilizando mobile</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-medias">
												<div class="list-icon-container done">
													<i class="fa fa-clock-o" style="color: #073763"></i>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Média da sessão</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 col-md-6">
						<div class="portlet light bordered" id="secao-madrugada">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Madrugada</span>
									<span class="caption-helper">00:00 - 06:00</span>
								</div>
							</div>
							<div class="portlet-body" style="padding-top: 0px;">
								<div class="mt-element-list">
									<div class="mt-list-container list-default">
										<ul>
											<li class="mt-list-item item-visitantes">
												<div class="list-icon-container done">
													<i class="fa fa-eye" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Visitantes</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-pesquisas">
												<div class="list-icon-container done">
													<i class="fa fa-search" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Pesquisas</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-wishlist">
												<div class="list-icon-container done">
													<i class="fa fa-heart-o" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Adições na Wishlist</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-carrinho">
												<div class="list-icon-container done">
													<i class="fa fa-shopping-cart" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Adições no Carrinho</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-mobile">
												<div class="list-icon-container done">
													<i class="fa fa-mobile" style="color: #073763"></i>
												</div>
												<div class="list-datetime" style="margin-top: 2%;">
													<span style="font-size: 15px; color: #073763;"
														class="bold porcentagem-dado"></span>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Utilizando mobile</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
											<li class="mt-list-item item-medias">
												<div class="list-icon-container done">
													<i class="fa fa-clock-o" style="color: #073763"></i>
												</div>
												<div class="list-item-content">
													<h3 class="uppercase bold">Média da sessão</h3>
													<p style="color: grey;" class="valor-dado"></p>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript"
		src="<c:url value="resources/js/pagina_horario.js"/>"></script>
	<script src="<c:url value="/resources/js/dropdown_selecao_dias.js"/>"></script>


</body>
</html>

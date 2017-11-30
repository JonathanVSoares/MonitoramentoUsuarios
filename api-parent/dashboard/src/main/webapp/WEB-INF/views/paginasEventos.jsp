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
				<ul id="menu-content" class="menu-content collapse active">
					<li><a href="dashboard"> <i class="fa fa-home"></i>
							Dashboard
					</a></li>

					<li data-toggle="collapse" data-target="#publico" class="collapsed">
						<a href="#"><i class="fa fa-user"></i> Público <span
							class="arrow"></span></a>
					</li>
					<ul class="sub-menu collapse" id="publico">
						<li><a href="/tcc/tecnologia">Tecnologia</a></li>
						<li><a href="/tcc/localizacao">Localização</a></li>
					</ul>
					<li data-toggle="collapse" data-target="#comportamento"
						aria-expanded="true" style="border-bottom: 0px;"><a href="#"><i
							class="fa fa-lightbulb-o"></i> Comportamento <span class="arrow"></span></a>
					</li>
					<ul class="sub-menu collapse in" id="comportamento"
						aria-expanded="true">
						<li><a href="/tcc/horario">Horáriode Acessos</a></li>
						<li><a href="/tcc/buscas">Buscas</a></li>
						<li class="active"><a href="/tcc/paginasEventos">Páginas
								e Eventos</a></li>
					</ul>
				</ul>
			</div>
		</div>

		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="dashboard-stat yellow">
							<div class="visual">
								<i class="fa fa-photo fa-icon-medium"></i>
							</div>
							<div class="details">
								<div class="number" id="valor-cliquesBanner">
									<span data-counter="counterup" data-value="50000"></span>
								</div>
								<div class="desc">Visitantes clicaram no banner
									promocional</div>
							</div>
							<a class="more" style="cursor: default;"> Nos últimos 7 dias
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="dashboard-stat grey">
							<div class="visual">
								<i class="fa fa-mouse-pointer fa-icon-medium"></i>
							</div>
							<div class="details">
								<div class="number" id="valor-eventosSessao">
									<span data-counter="counterup" data-value="13499"></span> 50000
								</div>
								<div class="desc">Eventos realizados em média por sessão</div>
							</div>
							<a class="more" style="cursor: default;"> Nos últimos 7 dias
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="dashboard-stat blue">
							<div class="visual">
								<i class="fa fa-plus fa-icon-medium"></i>
							</div>
							<div class="details">
								<div class="number" id="valor-visitantesWishlistCarrinho">
									<span data-counter="counterup" data-value="5"></span> 50000
								</div>
								<div class="desc">Visitantes inseriram na
									wishlist/carrinho</div>
							</div>
							<a class="more" style="cursor: default;"> Nos últimos 7 dias
							</a>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-6" id="secao-paginasMaisAcessadas">
						<div class="portlet light bordered" style="padding-bottom: 0px;">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">TOP 5
										PÁGINAS MAIS ACESSADAS</span>
								</div>
								<div class="actions">
									<div class="btn-group dropdown-dias" id="dropdown-paginas-mais-acessadas">
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

							<div class="portlet-body" style="padding-top: 0px;">
								<div style="margin: 0px !important;">
									<table class="table table-bordered">
										<thead>
											<th style="font-size: 14px; color: #073763;"
												class="text-center">Título</th>
											<th style="font-size: 14px; color: #073763;"
												class="text-center">Qtd visitas</th>
											<th style="font-size: 14px; color: #073763;"
												class="text-center">% do Total</th>
										</thead>
										<tbody class="tabela-itens">
											<tr>
												<td class="text-center"><span class="subetext nome-item"></span>
												</td>
												<td class="text-center"><span class="subetext valor-item"></span>
												</td>
												<td class="text-center"><span class="subetext porcentagem-item"></span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subetext nome-item"></span>
												</td>
												<td class="text-center"><span class="subetext valor-item"></span>
												</td>
												<td class="text-center"><span class="subetext porcentagem-item"></span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subetext nome-item"></span>
												</td>
												<td class="text-center"><span class="subetext valor-item"></span>
												</td>
												<td class="text-center"><span class="subetext porcentagem-item"></span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subetext nome-item"></span>
												</td>
												<td class="text-center"><span class="subetext valor-item"></span>
												</td>
												<td class="text-center"><span class="subetext porcentagem-item"></span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subetext nome-item"></span>
												</td>
												<td class="text-center"><span class="subetext valor-item"></span>
												</td>
												<td class="text-center"><span class="subetext porcentagem-item"></span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6" id="secao-paginasMaisRejeitadas">
						<div class="portlet light bordered" style="padding-bottom: 0px;">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">TOP 5
										PÁGINAS MAIS REJEITADAS</span>
								</div>
								<div class="actions">
									<div class="btn-group dropdown-dias" id="dropdown-paginas-mais-rejeitadas">
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

							<div class="portlet-body" style="padding-top: 0px;">
								<div style="margin: 0px !important;">
									<table class="table table-bordered">
										<thead>
											<th style="font-size: 14px; color: #073763;"
												class="text-center">Título</th>
											<th style="font-size: 14px; color: #073763;"
												class="text-center">Qtd visitantes saíram</th>
											<th style="font-size: 14px; color: #073763;"
												class="text-center">% do Total</th>
										</thead>
										<tbody class="tabela-itens">
											<tr>
												<td class="text-center"><span class="subetext nome-item"></span>
												</td>
												<td class="text-center"><span class="subetext valor-item"></span>
												</td>
												<td class="text-center"><span class="subetext porcentagem-item"></span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subetext nome-item"></span>
												</td>
												<td class="text-center"><span class="subetext valor-item"></span>
												</td>
												<td class="text-center"><span class="subetext porcentagem-item"></span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subetext nome-item"></span>
												</td>
												<td class="text-center"><span class="subetext valor-item"></span>
												</td>
												<td class="text-center"><span class="subetext porcentagem-item"></span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subetext nome-item"></span>
												</td>
												<td class="text-center"><span class="subetext valor-item"></span>
												</td>
												<td class="text-center"><span class="subetext porcentagem-item"></span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subetext nome-item"></span>
												</td>
												<td class="text-center"><span class="subetext valor-item"></span>
												</td>
												<td class="text-center"><span class="subetext porcentagem-item"></span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>





			</div>



		</div>
	</div>



	<script src="<c:url value="/resources/js/dropdown_selecao_dias.js"/>"></script>
	<script src="<c:url value="/resources/js/pagina_paginasEventos.js"/>"></script>

</body>
</html>

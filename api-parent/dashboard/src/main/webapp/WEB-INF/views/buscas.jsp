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
						<li><a href="/tcc/horario">Horário</a></li>
					</ul>
					<li data-toggle="collapse" data-target="#comportamento"
						aria-expanded="true" style="border-bottom: 0px;"><a href="#"><i
							class="fa fa-lightbulb-o"></i> Comportamento <span class="arrow"></span></a>
					</li>
					<ul class="sub-menu collapse in" id="comportamento"
						aria-expanded="true">
						<li class="active"><a href="/tcc/buscas">Buscas</a></li>
						<li><a href="/tcc/paginasEventos">Páginas e Eventos</a></li>
					</ul>
				</ul>
			</div>
		</div>

		<div class="page-content-wrapper">
			<div class="page-content">
				<div class="row">

					<div class="col-lg-6 col-md-6">
						<div class="portlet light bordered" style="padding-bottom: 2px;">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Termos
										mais comuns</span>
								</div>
								<div class="actions">
									<div class="btn-group">
										<button class="btn btn-default btn-sm dropdown-toggle"
											id="datebtn" type="button" data-toggle="dropdown"
											aria-expanded="false">
											Últimos 7 dias <i class="fa fa-angle-down"></i>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li><a style="padding-top: 7px; padding-bottom: 7px;"
												href="javascript:;"> Últimos 15 dias </a></li>
											<li><a style="padding-top: 7px; padding-bottom: 7px;"
												href="javascript:;"> Últimos 30 dias </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="portlet-body">

								<div class="row text-center">
									<span class="caption-helper" style="color: #a3a3a3;">Pesquisas
										realizadas nos últimos 7 dias:</span>
								</div>
								<div class="row text-center">
									<span data-counter="counterup" class="disponumber"
										data-value="10">225450 </span>

								</div>
								<div class="row">
									<div style="text-align: center;">
										<span style="color: #009e0f;"><i class="fa fa-arrow-up"></i>
											8%</span>
									</div>
								</div>
								<br />
								<div style="margin: 0px !important;">
									<table class="table">
										<thead>
											<th style="font-size: 14px; color: #073763;"
												class="text-center">Termo</th>
											<th style="font-size: 14px; color: #073763;"
												class="text-center">Qtd Pesquisas</th>
											<th style="font-size: 14px; color: #073763;"
												class="text-center">Frequência</th>
										</thead>
										<tbody>
											<tr>
												<td class="text-center"><span class="subitext">'amarelo'</span>
												</td>
												<td class="text-center"><span class="subitext">60000</span>
												</td>
												<td class="text-center"><span class="subitext">3,65%</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subitext">'amarelo'</span>
												</td>
												<td class="text-center"><span class="subitext">60000</span>
												</td>
												<td class="text-center"><span class="subitext">3,65%</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subitext">'amarelo'</span>
												</td>
												<td class="text-center"><span class="subitext">60000</span>
												</td>
												<td class="text-center"><span class="subitext">3,65%</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subitext">'amarelo'</span>
												</td>
												<td class="text-center"><span class="subitext">60000</span>
												</td>
												<td class="text-center"><span class="subitext">3,65%</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subitext">'amarelo'</span>
												</td>
												<td class="text-center"><span class="subitext">60000</span>
												</td>
												<td class="text-center"><span class="subitext">3,65%</span>
												</td>
											</tr>
											<tr>
												<td class="text-center"><span class="subitext">'amarelo'</span>
												</td>
												<td class="text-center"><span class="subitext">60000</span>
												</td>
												<td class="text-center"><span class="subitext">3,65%</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>

							</div>
						</div>
					</div>

					<div class="col-lg-6 col-md-6">

						<div class="dashboard-stat2 bordered">
							<div class="display">
								<div class="number" style="margin-bottom: 20px;">
									<h3 class="font-green-sharp">50000</h3>
									<small>Visitantes realizaram buscas</small>
								</div>
								<div class="icon">
									<i class="fa fa-eye" style="font-size: 46px"></i>
								</div>
							</div>
							<div class="progress-info">
								<div class="progress">
									<span style="width: 68%;"
										class="progress-bar progress-bar-success green-sharp">
										<span class="sr-only">76% progress</span>
									</span>
								</div>
								<div class="status">
									<div class="status-title">% Entre todos os visitantes</div>
									<div class="status-number">68%</div>
								</div>
							</div>
						</div>


						<div class="dashboard-stat2 bordered">
							<div class="display">
								<div class="number" style="margin-bottom: 20px;">
									<h3 class="font-green-sharp">50000</h3>
									<small>Cliques em produtos da pesquisa</small>
								</div>
								<div class="icon">
									<i class="fa fa-search" style="font-size: 46px"></i>
								</div>
							</div>
							<div class="progress-info">
								<div class="progress">
									<span style="width: 40%;"
										class="progress-bar progress-bar-success green-sharp">
										<span class="sr-only">40% progress</span>
									</span>
								</div>
								<div class="status">
									<div class="status-title">% Entre todas as pesquisas</div>
									<div class="status-number">40%</div>
								</div>
							</div>
						</div>


						<div class="dashboard-stat2 bordered">
							<div class="display">
								<div class="number" style="margin-bottom: 20px;">
									<h3 class="font-green-sharp">50000</h3>
									<small>Visitantes mobile realizaram pesquisas</small>
								</div>
								<div class="icon">
									<i class="fa fa-mobile" style="font-size: 46px"></i>
								</div>
							</div>
							<div class="progress-info">
								<div class="progress">
									<span style="width: 10%;"
										class="progress-bar progress-bar-success green-sharp">
										<span class="sr-only">10% progress</span>
									</span>
								</div>
								<div class="status">
									<div class="status-title">% Entre visitantes mobile no
										geral</div>
									<div class="status-number">10%</div>
								</div>
							</div>
						</div>

					</div>

				</div>



			</div>
		</div>
	</div>




</body>
</html>

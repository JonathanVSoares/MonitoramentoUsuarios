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

	<link rel="stylesheet" type="text/css"
		href="<c:url value="/resources/css/style.css"/>" />
	<script src="<c:url value="/resources/amcharts/amcharts.js"/>"></script>
	<script src="<c:url value="/resources/amcharts/pie.js"/>"></script>
	<script src="<c:url value="/resources/amcharts/serial.js"/>"></script>
	<script src="<c:url value="/resources/js/echarts.min.js"/>"></script>
	<script src="<c:url value="/resources/js/calcular_dias.js"/>"></script>
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
					<li class="active"><a href="index.html"> <i
							class="fa fa-home"></i> Dashboard
					</a></li>

					<li data-toggle="collapse" data-target="#publico" class="collapsed">
						<a href="#"><i class="fa fa-user"></i> Público <span
							class="arrow"></span></a>
					</li>
					<ul class="sub-menu collapse" id="publico">
						<li><a href="#">Tecnologia</a></li>
						<li><a href="#">Localização</a></li>
						<li><a href="#">Tempo</a></li>
					</ul>
					<li data-toggle="collapse" data-target="#comportamento"
						class="collapsed" style="border-bottom: 0px;"><a href="#"><i
							class="fa fa-lightbulb-o"></i> Comportamento <span class="arrow"></span></a>
					</li>
					<ul class="sub-menu collapse" id="comportamento">
						<li><a href="#">Buscas</a></li>
						<li><a href="#">Páginas</a></li>
						<li><a href="#">Eventos</a></li>
					</ul>
				</ul>
			</div>
		</div>

		<div class="page-content-wrapper">
			<div class="page-content">
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<div class="portlet light bordered" style="padding-bottom: 0px;">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Gráfico
										de Comparações</span> <span class="caption-helper">Alterne as
										abas para mais comparações</span>
									<script
										src="<c:url value="/resources/js/grafico_comparacoes.js"/>"></script>
								</div>
								<div class="actions">
									<div class="btn-group dropdown-dias" id="dropdown-comparacao">
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
							<div class="portlet-body">
								<div class="tabbable-custom ">
									<ul class="nav nav-tabs ">
										<li class="active"><a href="#visu" data-toggle="tab"
											aria-expanded="true"> Visualizações </a></li>
										<li class=""><a href="#usu" data-toggle="tab"
											aria-expanded="false"> Usuários </a></li>
										<li class=""><a href="#ses" data-toggle="tab"
											aria-expanded="false"> Sessões </a></li>
										<li><a href="#pesq" data-toggle="tab"> Pesquisas </a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-pane col-md-12 active" id="visu">
											<div class="row text-center">
												<span class="caption-helper" style="color: #a3a3a3;">Total
													de visualizações nos últimos 7 dias:</span>
											</div>
											<div class="row text-center">
												<span data-counter="counterup" class="disponumber"
													data-value="10" id="numVisualizacoesGrafComp"></span>

											</div>
											<div class="row">
												<div style="text-align: center;">
													<span id="porcVisComp" style="color: #009e0f;"><i
														class="fa fa-arrow-up"></i> 8%</span>
												</div>
											</div>
											<br>
											<div class="row">
												<div id="vis"
													style="width: 100%; height: 260px; margin-top: -6%; margin-bottom: -5%;"></div>
												<script
													src="<c:url value="/resources/js/grafico_visualizacoes.js"/>"></script>
											</div>
										</div>
										<div class="tab-pane col-md-12" id="usu">
											<div class="row text-center">
												<span class="caption-helper" style="color: #a3a3a3;">Total
													de usuários nos últimos 7 dias:</span>
											</div>
											<div class="row text-center">
												<span data-counter="counterup" class="disponumber"
													data-value="10" id="numUsuariosGrafComp">225450 </span>

											</div>
											<div class="row">
												<div style="text-align: center;">
													<span id="porcUsComp" style="color: #009e0f;"><i
														class="fa fa-arrow-up"></i> 8%</span>
												</div>
											</div>
											<br>
											<div class="row">
												<div id="us"
													style="width: 1019%; height: 260px; margin-top: -6%; margin-bottom: -5%;"></div>
												<script
													src="<c:url value="/resources/js/grafico_usuarios.js"/>"></script>
											</div>
										</div>
										<div class="tab-pane col-md-12" id="ses">
											<div class="row text-center">
												<span class="caption-helper" style="color: #a3a3a3;">Total
													de sessões nos últimos 7 dias:</span>
											</div>
											<div class="row text-center">
												<span data-counter="counterup" class="disponumber"
													data-value="10" id="numSessoesGrafComp"></span>

											</div>
											<div class="row">
												<div style="text-align: center;">
													<span id="porcSesComp" style="color: #009e0f;"><i
														class="fa fa-arrow-up"></i> 8%</span>
												</div>
											</div>
											<br>
											<div class="row">
												<div id="se"
													style="width: 1019%; height: 260px; margin-top: -6%; margin-bottom: -5%;"></div>
												<script
													src="<c:url value="/resources/js/grafico_sessoes.js"/>"></script>
											</div>
										</div>
										<div class="tab-pane col-md-12" id="pesq">
											<div class="row text-center">
												<span class="caption-helper" style="color: #a3a3a3;">Total
													de pesquisas nos últimos 7 dias:</span>
											</div>
											<div class="row text-center">
												<span data-counter="counterup" class="disponumber"
													data-value="10" id="numPesquisasGrafComp">225450 </span>

											</div>
											<div class="row">
												<div style="text-align: center;">
													<span id="porcPesComp" style="color: #009e0f;"><i
														class="fa fa-arrow-up"></i> 8%</span>
												</div>
											</div>
											<br>
											<div class="row">
												<div id="pe"
													style="width: 1019%; height: 260px; margin-top: -6%; margin-bottom: -5%;"></div>
												<script
													src="<c:url value="/resources/js/grafico_pesquisas.js"/>"></script>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="portlet light real bordered"
							style="min-height: 434px;">
							<div class="portlet-title">
								<div class="caption">
									<i class=""></i> <span class="caption-subject bold uppercase"
										style="color: #fff;">Sessões no Momento</span>
								</div>
							</div>
							<div class="portlet-body">
								<div class="sessionnumber" id="numSessoes">
									<span data-counter="counterup" data-value="14"></span> 14
								</div>
								<table class="table">
									<thead>
										<tr>
											<th class="uppercase thsession">Páginas Ativas</th>
											<th class="uppercase thsession">Usuários</th>
										</tr>
									</thead>
									<tbody id="tbody-paginas-ativas">
										<tr>
											<td class="thsession">/Home</td>
											<td class="thsession text-center">4</td>
										</tr>
										<tr>
											<td class="thsession">/pesquisa?=amarelo</td>
											<td class="thsession text-center">3</td>
										</tr>
										<tr>
											<td class="thsession">/pesquisa?=branco</td>
											<td class="thsession text-center">2</td>
										</tr>
										<tr>
											<td class="thsession">/pesquisa?=mogno</td>
											<td class="thsession text-center">2</td>
										</tr>
										<tr>
											<td class="thsession">/pesquisa?=armario_branco</td>
											<td class="thsession text-center">1</td>
										</tr>
										<tr>
											<td class="thsession">/pesquisa?=armario_branco</td>
											<td class="thsession text-center">1</td>
										</tr>
										<tr>
											<td class="thsession">/pesquisa?=armario_branco</td>
											<td class="thsession text-center">1</td>
										</tr>
									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="portlet light bordered">
							<div class="portlet-title">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Horário</span>
								</div>
								<div class="actions">
									<div class="btn-group dropdown-dias" id="dropdown-horario">
										<button
											class="btn btn-default btn-sm dropdown-toggle dropdown-dias-escolhidos"
											id="datebtn" type="button" data-toggle="dropdown"
											aria-expanded="false">
											Últimos 7 dias <i class="fa fa-angle-down"></i>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li class="dropdown-dias-valor"><a
												style="padding-top: 7px; padding-bottom: 7px;"
												href="javascript:;" class="valor-dropdown" data-value="7">
													Últimos 7 dias </a></li>
											<li class="dropdown-dias-valor"><a
												style="padding-top: 7px; padding-bottom: 7px;"
												href="javascript:;" class="valor-dropdown" data-value="14">
													Últimos 14 dias </a></li>
											<li class="dropdown-dias-valor"><a
												style="padding-top: 7px; padding-bottom: 7px;"
												href="javascript:;" class="valor-dropdown" data-value="28">
													Últimos 28 dias </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="portlet-body">
								<div id="main2" style="width: 100%; height: 360px;"></div>
								<script type="text/javascript"
									src="<c:url value="/resources/js/grafico_horario.js"/>"></script>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="portlet light bordered">
							<div class="portlet-title">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Dispositivos</span>
								</div>
								<div class="actions">
									<div class="btn-group dropdown-dias" id="dropdown-dispositivos">
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
							<div class="portlet-body">
								<div id="main3" style="width: 100%; height: 250px;"></div>
								<script type="text/javascript"
									src="<c:url value="/resources/js/grafico_dispositivos.js"/>"></script>
								<div class="col-lg-4 col-md-4 text-center">
									<i style="font-size: 32px;" class="fa fa-desktop"></i></br> <span
										class="dispositivo">Desktop</span></br>
									<div class="disponumber" id="porcentagemDesktop">
										<span data-counter="counterup" data-value="89.2"></span>%
									</div>
									<span style="color: #cf2a27;" id="porcentagemAnteriorDesktop"><i
										class="fa fa-arrow-down"></i>%</span>
								</div>
								<div class="col-lg-4 col-md-4 text-center">
									<i style="font-size: 32px;" class="fa fa-mobile"></i></br> <span
										class="dispositivo">Celular</span></br>
									<div class="disponumber" id="porcentagemCelular">
										<span data-counter="counterup" data-value="10"></span>%
									</div>
									<span style="color: #009e0f;" id="porcentagemAnteriorCelular"><i
										class="fa fa-arrow-up"></i>%</span>
								</div>
								<div class="col-lg-4 col-md-4 text-center">
									<i style="font-size: 32px;" class="fa fa-tablet"></i></br> <span
										class="dispositivo">Tablet</span></br>
									<div class="disponumber" id="porcentagemTablet">
										<span data-counter="counterup" data-value="0.8"></span>%
									</div>
									<span style="color: #009e0f;" id="porcentagemAnteriorTablet"><i
										class="fa fa-arrow-up"></i>%</span>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="portlet light bordered">
							<div class="portlet-title">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Localização</span>
								</div>
								<div class="actions">
									<div class="btn-group dropdown-dias" id="dropdown-localizacoes">
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
							<div class="portlet-body">
								<div id="local" style="width: 100%; height: 360px;"></div>
								<script type="text/javascript"
									src="<c:url value="/resources/js/grafico_local.js"/>"></script>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="dashboard-stat yellow">
							<div class="visual">
								<i class="fa fa-clock-o fa-icon-medium"></i>
							</div>
							<div class="details">
								<div class="number" id="mediaSessao">
									<span data-counter="counterup" data-value="253"></span> 2:53
								</div>
								<div class="desc">Média de duração da sessão</div>
							</div>
							<a class="more" href="javascript:;"> Ver mais <i
								class="m-icon-swapright m-icon-white fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="dashboard-stat grey">
							<div class="visual">
								<i class="fa fa-shopping-basket fa-icon-medium"></i>
							</div>
							<div class="details">
								<div class="number" id="produtosWishlist">
									<span data-counter="counterup" data-value="13499"></span> 1453
								</div>
								<div class="desc">Produtos na Wishlist</div>
							</div>
							<a class="more" href="javascript:;"> Ver mais <i
								class="m-icon-swapright m-icon-white fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="dashboard-stat blue">
							<div class="visual">
								<i class="fa fa-eye fa-icon-medium"></i>
							</div>
							<div class="details">
								<div class="number" id="visitasSemana">
									<span data-counter="counterup" data-value="5"></span> + 5%
								</div>
								<div class="desc">Visitas esta semana</div>
							</div>
							<a class="more" href="javascript:;"> Ver mais <i
								class="m-icon-swapright m-icon-white fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<script type="text/javascript"
						src="<c:url value="/resources/js/bottom_data_dashboard.js"/>"></script>
				</div>
			</div>
		</div>
	</div>

	<script src="<c:url value="/resources/js/paginas_ativas.js"/>"></script>
	<script src="<c:url value="/resources/js/dropdown_selecao_dias.js"/>"></script>
	<script type="text/javascript">
		$('#menu-dashboard').addClass('menuativo');
		$('#a-dashboard').addClass('amenuativo');
	</script>



</body>
</html>

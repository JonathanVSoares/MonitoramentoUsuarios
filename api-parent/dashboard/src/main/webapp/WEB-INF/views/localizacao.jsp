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
					<li><a href="dashboard"> <i
							class="fa fa-home"></i> Dashboard
					</a></li>

					<li data-toggle="collapse" data-target="#publico" aria-expanded="true">
						<a href="#"><i class="fa fa-user"></i> Público <span
							class="arrow"></span></a>
					</li>
					<ul class="sub-menu collapse in" id="publico" aria-expanded="true">
						<li><a href="/tcc/tecnologia">Tecnologia</a></li>
						<li class="active"><a href="/tcc/localizacao">Localização</a></li>
					</ul>
					<li data-toggle="collapse" data-target="#comportamento"
						class="collapsed" style="border-bottom: 0px;"><a href="#"><i
							class="fa fa-lightbulb-o"></i> Comportamento <span class="arrow"></span></a>
					</li>
					<ul class="sub-menu collapse" id="comportamento">
						<li><a href="/tcc/horario">Horário de Acessos</a></li>
						<li><a href="/tcc/buscas">Buscas</a></li>
						<li><a href="/tcc/paginasEventos">Páginas e Eventos</a></li>
					</ul>
				</ul>
			</div>
		</div>

		<div class="page-content-wrapper">
			<div class="page-content">
				<div class="row">
					<div class="col-lg-12 col-md-12">
						<div class="portlet light bordered" style="padding-bottom: 15px;">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Métricas</span>
									<span class="caption-helper">Selecione abaixo um ou mais
										parâmetros para ver as características geográficas dos
										visitantes</span>
								</div>
								<div class="actions">
									<div class="btn-group dropdown-dias" id="dropdown-localizacao">
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
							<div class="portlet-body" style="padding-top: 12px;">
								<div class="row">
									<div class="col-md-10">
										<script type="text/javascript">
											$(document)
													.ready(
															function() {
																$('#multiacao')
																		.multiselect(
																				{
																					buttonWidth : '195px',
																					buttonClass : 'btn btn-default btn-sm dropdown-toggle metricbtn multSelectAcao',
																					allSelectedText : 'Todos selecionados',
																					nonSelectedText : 'Ação',
																					nSelectedText : ' Selecionados',
																					includeSelectAllOption : true,
																					selectAllText : 'Selecionar tudo'
																				});
															});
										</script>
										<div class="col-md-3">
											<select id="multiacao" multiple="multiple">
												<optgroup label="Inseriu item em" class="group-1">
													<option value="carrinho">Carrinho</option>
													<option value="wishlist">Wishlist</option>
												</optgroup>
											</select>
										</div>
										<script type="text/javascript">
											$(document)
													.ready(
															function() {
																$('#multilocal')
																		.multiselect(
																				{
																					buttonWidth : '195px',
																					buttonClass : 'btn btn-default btn-sm dropdown-toggle metricbtn multSelectDisp',
																					allSelectedText : 'Todos selecionados',
																					nonSelectedText : 'Dispositivo',
																					nSelectedText : ' Selecionados',
																					includeSelectAllOption : true,
																					selectAllText : 'Selecionar tudo'
																				});
															});
										</script>
										<div class="col-md-3">
											<select id="multilocal" multiple="multiple">
												<option value="desk">Desktop</option>
												<option value="note">Notebook</option>
												<option value="tab">Tablet</option>
												<option value="cel">Celular</option>
											</select>
										</div>

										<script type="text/javascript">
											$(document)
													.ready(
															function() {
																$('#multiperm')
																		.multiselect(
																				{
																					buttonWidth : '195px',
																					buttonClass : 'btn btn-default btn-sm dropdown-toggle metricbtn multSelectPerm',
																					allSelectedText : 'Todos selecionados',
																					nonSelectedText : 'Permanência',
																					nSelectedText : ' Selecionados',
																					includeSelectAllOption : true,
																					selectAllText : 'Selecionar tudo'
																				});
															});
										</script>
										<div class="col-md-3">
											<select id="multiperm" multiple="multiple">
												<optgroup label="Duração da sessão..." class="group-1">
													<option value="1">Menos que 1 min</option>
													<option value="3">Entre 1 e 3 min</option>
													<option value="5">Entre 3 e 5 min</option>
													<option value="10">Entre 5 e 10 min</option>
													<option value="10m">Mais que 10 min</option>
												</optgroup>
											</select>
										</div>

										<script type="text/javascript">
											$(document)
													.ready(
															function() {
																$('#multihora')
																		.multiselect(
																				{
																					buttonWidth : '195px',
																					buttonClass : 'btn btn-default btn-sm dropdown-toggle metricbtn multSelectHora',
																					allSelectedText : 'Todos selecionados',
																					nonSelectedText : 'Horário',
																					nSelectedText : ' Selecionados',
																					includeSelectAllOption : true,
																					selectAllText : 'Selecionar tudo'
																				});
															});
										</script>
										<div class="col-md-3">
											<select id="multihora" multiple="multiple"
												style="margin-left: 5px">
												<option value="man">Manhã</option>
												<option value="tar">Tarde</option>
												<option value="noi">Noite</option>
												<option value="mad">Madrugada</option>
											</select>
										</div>


									</div>
									<div class="col-md-2">
										<div class="btn-group metricas metricasright">
											<button style="min-width: 135px;"
												class="btn btn-default btn-sm datebtn" type="button" id="btnBuscar">
												<i class="fa fa-search"></i> Buscar
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="portlet light bordered" id="secao-estrangeiros"
							style="padding-bottom: 10px;">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Estrangeiros</span>
									<span class="caption-helper total-dados">Total: 1200</span>
								</div>
							</div>
							<div class="portlet-body" style="padding-top: 0px;">
								<div class="table-scrollable" style="margin: 0px !important;">
									<table class="table">
										<tbody class="tabela-itens">
											<tr>
												<td><span class="uppercase bold nome-item"
													style="font-size: 14px; color: #1f6399;"></span></td>
												<td><span class="bold valor-item"></span><span>
														Visitantes</span></td>
												<td><span class="bold pull-right porcentagem-item"
													style="color: grey;"></span></td>
											</tr>
											<tr>
												<td><span class="uppercase bold nome-item"
													style="font-size: 14px; color: #1f6399;"></span></td>
												<td><span class="bold valor-item"></span><span>
														Visitantes</span></td>
												<td><span class="bold pull-right porcentagem-item"
													style="color: grey;"></span></td>
											</tr>
											<tr>
												<td><span class="uppercase bold nome-item"
													style="font-size: 14px; color: #1f6399;"></span>
												</td>
												<td><span class="bold valor-item"></span><span>
														Visitantes</span></td>
												<td><span class="bold pull-right porcentagem-item"
													style="color: grey;"></span></td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="portlet light bordered" id="secao-idiomas"
							style="padding-bottom: 10px;">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Idioma
										dos visitantes</span>
								</div>
							</div>
							<div class="portlet-body" style="padding-top: 0px;">
								<div class="table-scrollable" style="margin: 0px !important;">
									<table class="table">
										<tbody class="tabela-itens">
											<tr>
												<td><span class="uppercase bold nome-item"
													style="font-size: 14px; color: #1f6399;"></span></td>
												<td><span class="bold valor-item"></span><span>
														Visitantes</span></td>
												<td><span class="bold pull-right porcentagem-item"
													style="color: grey;"></span></td>
											</tr>
											<tr>
												<td><span class="uppercase bold nome-item"
													style="font-size: 14px; color: #1f6399;"></span></td>
												<td><span class="bold valor-item"></span><span>
														Visitantes</span></td>
												<td><span class="bold pull-right porcentagem-item"
													style="color: grey;"></span></td>
											</tr>
											<tr>
												<td width="33%"><span class="uppercase bold nome-item"
													style="font-size: 14px; color: #1f6399;"></span></td>
												<td width="33%"><span class="bold valor-item"></span><span>
														Visitantes</span></td>
												<td width="33%"><span
													class="bold pull-right porcentagem-item"
													style="color: grey;"></span></td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="dashboard-stat2 bordered">
							<div class="display">
								<div class="number" style="margin-bottom: 20px;">
									<h3 class="font-green-sharp" id="total-estado-destaque"></h3>
									<small>Visitantes no estado de maior destaque</small>
								</div>
								<div class="icon">
									<i class="fa fa-globe" style="font-size: 46px"></i>
								</div>
							</div>
							<div class="progress-info">
								<div class="progress">
									<span
										class="progress-bar progress-bar-success green-sharp" id="barra-porcentagem-estado-destaque">
										<span class="sr-only"></span>
									</span>
								</div>
								<div class="status">
									<div class="status-title" id="nome-estado-destaque"></div>
									<div class="status-number" id="porcentagem-estado-destaque"></div>
								</div>
							</div>
						</div>


					</div>
					<div class="col-lg-6 col-md-6">
						<div class="portlet light bordered" style="padding-bottom: 0px;">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Brasil</span>
									<span class="caption-helper" id="totalAcessosBrasil">Total:</span>
								</div>
							</div>
							<div class="portlet-body">
								<div id="chart_div" style="height: 480px;"></div>
								<script type="text/javascript"
									src="<c:url value="resources/js/mapa_brasil.js"/>"></script>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="<c:url value="/resources/js/dropdown_selecao_dias.js"/>"></script>
	<script src="<c:url value="/resources/js/pegarFiltrosLocal.js"/>"></script>
	<script src="<c:url value="/resources/js/pagina_localizacao.js"/>"></script>
</body>
</html>

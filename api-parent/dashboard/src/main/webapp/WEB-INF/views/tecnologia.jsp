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

					<li data-toggle="collapse" data-target="#publico"
						aria-expanded="true"><a href="#"><i class="fa fa-user"></i>
							Público <span class="arrow"></span></a></li>
					<ul class="sub-menu collapse in" id="publico" aria-expanded="true">
						<li class="active"><a href="/tcc/tecnologia">Tecnologia</a></li>
						<li><a href="/tcc/localizacao">Localização</a></li>
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
										parâmetros para ver as características técnologicas dos
										visitantes</span>
								</div>
								<div class="actions">
									<div class="btn-group dropdown-dias" id="dropdown-tecnologia">
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
																					buttonId: 'multselacao',
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
																					buttonClass : 'btn btn-default btn-sm dropdown-toggle metricbtn multSelectLocal',
																					allSelectedText : 'Todos selecionados',
																					nonSelectedText : 'Localização',
																					nSelectedText : ' Selecionados',
																					includeSelectAllOption : true,
																					selectAllText : 'Selecionar tudo'
																				});
															});
										</script>
										<div class="col-md-3">
											<select id="multilocal" multiple="multiple">
												<option value="sul">Sul</option>
												<option value="sud">Sudeste</option>
												<option value="norte">Norte</option>
												<option value="nord">Nordeste</option>
												<option value="centro">Centro-Oeste</option>
												<option value="ext">Exterior</option>
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
													<option value="0:1">Menos que 1 min</option>
													<option value="1:3">Entre 1 e 3 min</option>
													<option value="3:5">Entre 3 e 5 min</option>
													<option value="5:10">Entre 5 e 10 min</option>
													<option value="10:0">Mais que 10 min</option>
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
												class="btn btn-default btn-sm datebtn" type="button" id="botao-buscar">
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
						<div class="portlet light bordered" style="padding-bottom: 0px;"
							id="secao-browser">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Browser</span>
								</div>
							</div>
							<div class="portlet-body" style="padding-top: 0px;">
								<div class="table-scrollable" style="margin: 0px !important;">
									<table class="table">
										<tbody>
											<tr id="linha-Chrome">
												<td style="padding: 10px;" width="30%"><i
													class="fa fa-chrome itable"></i><br> <span
													class="subitext">Chrome</span></td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
											<tr id="linha-Firefox">
												<td style="padding: 10px;" width="30%"><i
													class="fa fa-firefox itable"></i><br> <span
													class="subitext">Firefox</span></td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
											<tr id="linha-Explorer">
												<td style="padding: 10px;" width="30%"><i
													class="fa fa-internet-explorer itable"></i><br> <span
													class="subitext">Explorer</span></td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
											<tr id="linha-Safari">
												<td style="padding: 10px;" width="30%"><i
													class="fa fa-safari itable"></i><br> <span
													class="subitext">Safari</span></td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
											<tr id="linha-Opera">
												<td style="padding: 10px;" width="30%"><i
													class="fa fa-opera itable"></i><br> <span
													class="subitext">Opera</span></td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="portlet light bordered" style="padding-bottom: 0px;"
							id="secao-resolucao">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Resolução
										da tela</span>
								</div>
							</div>
							<div class="portlet-body" style="padding-top: 0px;">
								<div style="margin: 0px !important;">
									<table class="table table-bordered">
										<thead>
											<th style="font-size: 16px; color: grey;" class="text-center">
												800x600</th>
											<th style="font-size: 16px; color: grey;" class="text-center">
												1366x768</th>
											<th style="font-size: 16px; color: grey;" class="text-center">
												1280x1024</th>
											<th style="font-size: 16px; color: grey;" class="text-center">
												1920x1080</th>
										</thead>
										<tbody>
											<tr id="linha-visualizacoes">
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-800x600"></span> <span class="subitext">Visualizações</span></td>
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-1366x768"></span> <span class="subitext">Visualizações</span></td>
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-1280x1024"></span> <span class="subitext">Visualizações</span></td>
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-1920x1080"></span> <span class="subitext">Visualizações</span></td>
											</tr>
											<tr id="linha-sessoes">
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-800x600"></span> <span class="subitext">Sessões</span></td>
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-1366x768"></span> <span class="subitext">Sessões</span></td>
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-1280x1024"></span> <span class="subitext">Sessões</span></td>
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-1920x1080"></span> <span class="subitext">Sessões</span></td>
											</tr>
											<tr id="linha-pesquisas">
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-800x600"></span> <span class="subitext">Pesquisas</span></td>
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-1366x768"></span> <span class="subitext">Pesquisas</span></td>
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-1280x1024"></span> <span class="subitext">Pesquisas</span></td>
												<td class="text-center"><span
													style="font-size: 24px; color: #1f6399;"
													class="dado-1920x1080"></span> <span class="subitext">Pesquisas</span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="portlet light bordered" style="padding-bottom: 0px;"
							id="secao-dispositivos">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Dispositivos</span>
								</div>
							</div>
							<div class="portlet-body" style="padding-top: 0px;">
								<div class="table-scrollable" style="margin: 0px !important;">
									<table class="table">
										<tbody>
											<tr id="linha-DESKTOP">
												<td class="text-center" style="padding: 10px;" width="25%">
													<i class="fa fa-desktop itable"></i><br> <span
													class="subitext">Desktop</span>
												</td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
											<tr id="linha-NOTEBOOK">
												<td class="text-center" style="padding: 10px;" width="25%">
													<i class="fa fa-laptop itable"></i><br> <span
													class="subitext">Notebook</span>
												</td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
											<tr id="linha-TABLET">
												<td class="text-center" style="padding: 10px;" width="25%">
													<i class="fa fa-tablet itable"></i><br> <span
													class="subitext">Tablet<span>
												</td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
											<tr id="linha-CELULAR">
												<td class="text-center" style="padding: 10px;" width="25%">
													<i class="fa fa-mobile itable"></i><br> <span
													class="subitext">Smartphone</span>
												</td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="portlet light bordered" style="padding-bottom: 0px;"
							id="secao-so">
							<div class="portlet-title" style="margin-bottom: 0px;">
								<div class="caption">
									<i class=""></i> <span
										class="caption-subject font-dark bold uppercase">Sistema
										operacional</span>
								</div>
							</div>
							<div class="portlet-body" style="padding-top: 0px;">
								<div class="table-scrollable" style="margin: 0px !important;">
									<table class="table">
										<tbody>
											<tr id="linha-Windows">
												<td class="text-center" style="padding: 10px;" width="25%">
													<i class="fa fa-windows itable"></i><br> <span
													class="subitext">Windows</span>
												</td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
											<tr id="linha-Linux">
												<td class="text-center" style="padding: 10px;" width="25%">
													<i class="fa fa-linux itable"></i><br> <span
													class="subitext">Linux</span>
												</td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
											<tr id="linha-Android">
												<td class="text-center" style="padding: 10px;" width="25%">
													<i class="fa fa-android itable"></i><br> <span
													class="subitext">Android<span>
												</td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
												</td>
											</tr>
											<tr id="linha-Apple">
												<td class="text-center" style="padding: 10px;" width="25%">
													<i class="fa fa-apple itable"></i><br> <span
													class="subitext">Apple</span>
												</td>
												<td>Visualizações<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-visualizacoes">2000</span>
												</td>
												<td>Sessões<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-sessoes">2000</span>
												</td>
												<td>Pesquisas<br> <span
													style="font-size: 24px; color: #1f6399;"
													class="dado-pesquisas">2000</span>
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

	<script src="<c:url value="/resources/js/pegarFiltros.js"/>"></script>
	<script src="<c:url value="/resources/js/dropdown_selecao_dias.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="resources/js/pagina_tecnologia.js"/>"></script>

</body>
</html>

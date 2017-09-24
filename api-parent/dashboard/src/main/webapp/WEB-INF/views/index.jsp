<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<header>
	<title>E-eye</title>
	<meta charset="UTF-8" />
	<link rel="icon" type="image/png"
		href="<c:url value="/resources/imagens/logo.png" />" />

	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css"
		href="<c:url value="/resources/css/style.css" />" />
	<script src="<c:url value="/resources/js/echarts.min.js" />"></script>
	<script src="<c:url value="/resources/js/sessoes_no_momento.js" />"></script>
	<script src="<c:url value="/resources/js/paginas_ativas.js" />"></script>
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>


</header>
<body>
	<div class='header'>
		<a href="index.html" class='titulo'><img
			src="<c:url value="/resources/imagens/logo.PNG" />"
			alt="Logo do sistema" class="logo" />E-eye</a>
	</div>
	<div class='body'>
		<br />
		<div class='row'>
			<div class='col-md-2 col-sm-12'>
				<ul class="list-group">
					<a href='#' class="list-group-item list-group-item-dark"
						id='selecionado'><span class="glyphicon glyphicon-home"></span>
						Dashboard</a>
					<a href='#' class="list-group-item"><span
						class="glyphicon glyphicon-globe"></span> P˙blico</a>
					<a href='#' class="list-group-item">Comportamento</a>
					<a href='#' class="list-group-item"><span
						class="glyphicon glyphicon-user"></span> Perfil</a>
					<a href='#' class="list-group-item">Algoritmo</a>
				</ul>
			</div>
			<div class='col-md-10 col-sm-12'>
				<div class='row'>
					<div class='col-md-6 col-sm-12  panel panel-default'>
						<div class='row'>
							<div class='col-md-8 col-sm-12'>
								<br /> <img
									src="<c:url value="/resources/svg/si-glyph-chart-column.svg" />"
									style='width: 5%; height: 5%;' /> GR¡FICO DE COMPARA«’ES
							</div>
							<div class='col-md-4 col-sm-12'>
								<br />
								<div class="dropdown">
									<button class="btn btn-default dropdown-toggle" type="button"
										data-toggle="dropdown">
										⁄ltimos 7 dias <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li class="active"><a href="#">⁄ltimos 7 dias</a></li>
										<li><a href="#">⁄ltimo mÍs</a></li>
										<li><a href="#">⁄ltimo ano</a></li>
										<li><a href="#">Todo o perÌodo</a></li>
									</ul>
								</div>
							</div>
						</div>
						<hr />
						<div class="row">
							<div class='col-md-3 col-sm-6'
								style='border-style: solid; border-color: #ffd600 #dddddd #dddddd #dddddd;'>
								VisualizaÁıes
								<h3>137.450</h3>
								<p style='color: #009e0f'>
									<span class="glyphicon glyphicon-arrow-up"></span> 2.5%
								</p>
							</div>
							<div class='col-md-3 col-sm-6'>
								Usu·rios
								<h3 id="numUsuariosGrafComparacoes"></h3>
								<p style='color: #cf2a27'>
									<span class="glyphicon glyphicon-arrow-down"></span> 0.5%
								</p>
							</div>
							<div class='col-md-3 col-sm-6'>
								Sessıes
								<h3>18.450</h3>
								<p style='color: #cf2a27'>
									<span class="glyphicon glyphicon-arrow-down"></span> 1%
								</p>
							</div>
							<div class='col-md-3 col-sm-6'>
								Pesquisas
								<h3>22.450</h3>
								<p style='color: #009e0f'>
									<span class="glyphicon glyphicon-arrow-up"></span> 8%
								</p>
							</div>
						</div>
						<br />
						<div id="main" style="width: 100%; height: 300px;"></div>
						<script
							src="<c:url value="/resources/js/grafico_comparacoes.js" />"></script>
					</div>
					<div class='col-md-3 col-sm-12 panel panel-default'>
						<div class='row'>
							<div class='col-md-5 col-sm-12'>
								<br />HOR¡RIO
							</div>
							<br />
							<div class='col-md-7 col-sm-12'>
								<div class="dropdown">
									<button class="btn btn-default dropdown-toggle" type="button"
										data-toggle="dropdown">
										⁄ltimos 7 dias <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li class="active"><a href="#">⁄ltimos 7 dias</a></li>
										<li><a href="#">⁄ltimo mÍs</a></li>
										<li><a href="#">⁄ltimo ano</a></li>
										<li><a href="#">Todo o perÌodo</a></li>
									</ul>
								</div>
							</div>
						</div>
						<hr />
						<div id="main2" style="width: 100%; height: 400px;"></div>
						<script type="text/javascript"
							src="<c:url value="/resources/js/grafico_horario.js" />"></script>
					</div>
					<div class='col-md-3 col-sm-12 panel panel-default'
						style='background-color: #09395f'>
						<br />
						<p style='color: white'>SESS’ES NO MOMENTO</p>
						<HR />
						<center>
							<h1 style='color: white' id="numSessoes"></h1>
						</center>
						<table class="table table-hover">
							<thead style='color: white'>
								<tr>
									<th>P·ginas ativas</th>
									<th>Usu·rios</th>
								</tr>
							</thead>
							<tbody style='color: white' id="tbody-paginas-ativas">
								<tr>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<br />
			<div class='col-md-2 col-sm-12'></div>
			<div class='col-md-2 col-sm-12 panel panel-default'>
				<div class='row'>
					<div class='col-md-4 col-sm-12'>
						<br />PERFIL
					</div>
					<div class='col-md-3 col-sm-12'>
						<br />
						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" type="button"
								data-toggle="dropdown">
								⁄ltimos 7 dias <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li class="active"><a href="#">⁄ltimos 7 dias</a></li>
								<li><a href="#">⁄ltimo mÍs</a></li>
								<li><a href="#">⁄ltimo ano</a></li>
								<li><a href="#">Todo o perÌodo</a></li>
							</ul>
						</div>
					</div>
				</div>
				<hr />
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Perfil de categoria</th>
							<th>Visitas</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><img
								src="<c:url value="/resources/imagens/white.png" />"
								class="img-circle" alt="Perfil" width="25" height="25"
								style='border-style: solid; border-color: black;'> Perfil
								1 <br /> Breve descriÁ„o</td>
							<td>5.000</td>
						</tr>
						<tr>
							<td><img
								src="<c:url value="/resources/imagens/white.png" />"
								class="img-circle" alt="Perfil" width="25" height="25"
								style='border-style: solid; border-color: black;'> Perfil
								2 <br /> Breve descriÁ„o</td>
							<td>1.000</td>
						</tr>
						<tr>
							<td><img
								src="<c:url value="/resources/imagens/white.png" />"
								class="img-circle" alt="Perfil" width="25" height="25"
								style='border-style: solid; border-color: black;'> Perfil
								3 <br /> Breve descriÁ„o</td>
							<td>500</td>
						</tr>
						<tr>
							<td><img
								src="<c:url value="/resources/imagens/white.png" />"
								class="img-circle" alt="Perfil" width="25" height="25"
								style='border-style: solid; border-color: black;'> Perfil
								4 <br /> Breve descriÁ„o</td>
							<td>300</td>
						</tr>
						<tr>
							<td><img
								src="<c:url value="/resources/imagens/white.png" />"
								class="img-circle" alt="Perfil" width="25" height="25"
								style='border-style: solid; border-color: black;'> Perfil
								5 <br /> Breve descriÁ„o</td>
							<td>150</td>
						</tr>
					</tbody>
				</table>

			</div>
			<div class='col-md-3 col-sm-12 panel panel-default'>
				<div class='row'>
					<div class='col-md-6 col-sm-12'>
						<br /> DISPOSITIVOS
					</div>
					<div class='col-md-3 col-sm-12'>
						<br />
						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" type="button"
								data-toggle="dropdown">
								⁄ltimos 7 dias <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li class="active"><a href="#">⁄ltimos 7 dias</a></li>
								<li><a href="#">⁄ltimo mÍs</a></li>
								<li><a href="#">⁄ltimo ano</a></li>
								<li><a href="#">Todo o perÌodo</a></li>
							</ul>
						</div>
					</div>
				</div>
				<hr />
				<div id="main3" style="width: 100%; height: 400px;"></div>
				<script type="text/javascript"
					src="<c:url value="/resources/js/grafico_dispositivos.js" />"></script>
				<br />
				<div class='Row'>
					<div class='col-md-4 col-sm-4'>
						<center>
							<img src="<c:url value="/resources/svg/si-glyph-desktop.svg" />"
								style='width: 50%; height: 50%;' /> <br /> Desktop
							<h4>89,2%</h4>
							<p style='color: #cf2a27'>
								<span class="glyphicon glyphicon-arrow-down"></span> 0.5%
							</p>
						</center>
					</div>
					<div class='col-md-4 col-sm-4'>
						<center>
							<img
								src="<c:url value="/resources/svg/si-glyph-smartphone.svg" />"
								style='width: 50%; height: 50%;' /> <br /> Celular
							<h4>10%</h4>
							<p style='color: #009e0f'>
								<span class="glyphicon glyphicon-arrow-up"></span> 0.5%
							</p>
					</div>
					<div class='col-md-4 col-sm-4'>
						<center>
							<img src="<c:url value="/resources/svg/si-glyph-tablet.svg" />"
								style='width: 50%; height: 50%;' /> <br /> Tablet
							<h4>10%</h4>
							<p style='color: #009e0f'>
								<span class="glyphicon glyphicon-arrow-up"></span> 0.5%
							</p>
					</div>
				</div>
			</div>
			<div class='col-md-5 col-sm-4 panel panel-default'>
				<div class='row'>
					<div class='col-md-8 col-sm-4'>
						<br />LOCALIZA«√O DAS SESS’ES
					</div>
					<div class='col-md-4 col-sm-4'>
						<br />
						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" type="button"
								data-toggle="dropdown">
								⁄ltimos 7 dias <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li class="active"><a href="#">⁄ltimos 7 dias</a></li>
								<li><a href="#">⁄ltimo mÍs</a></li>
								<li><a href="#">⁄ltimo ano</a></li>
								<li><a href="#">Todo o perÌodo</a></li>
							</ul>
						</div>
					</DIV>
				</div>
				<hr />
				<div class='row'>
					<div class='col-md-5 col-sm-4'>
						<div id="main4" style="width: 100%; height: 400px;"></div>
						<script src="<c:url value="/resources/js/grafico_estados.js" />"></script>
					</div>
					<div class='col-md-7 col-sm-4'>
						<div id="chart_div"></div>
						<script src="<c:url value="/resources/js/mapa_brasil.js" />"></script>
					</div>
				</div>
			</div>
		</div>
		<br />
		<div class='col-md-2 col-sm-12' class='body'></div>
		<div class='col-md-10 col-sm-12 panel panel-default'>
			<div class='row'>
				<div class='col-md-4 col-sm-12 panel panel-default'>
					<div class='row'>
						<div class='col-md-7 col-sm-12'>
							<h2 style='color: #073763'>137.450</h2>
						</div>
						<div class='col-md-5 col-sm-12'>
							<br />
							<div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">
									⁄ltimos 7 dias <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li class="active"><a href="#">⁄ltimos 7 dias</a></li>
									<li><a href="#">⁄ltimo mÍs</a></li>
									<li><a href="#">Todo o perÌodo</a></li>
									<li><a href="#">⁄ltimo ano</a></li>
								</ul>
							</div>
						</div>
					</div>
					<p style='color: #a3a3a3'>TOTAL DE P¡GINAS VISITADAS</p>
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="70"
							aria-valuemin="0" aria-valuemax="100" style="width: 70%"></div>
					</div>
					<div class='row'>
						<div class='col-md-10 col-sm-12'>
							<p style='color: #a3a3a3'>HOME</p>
						</div>
						<div class='col-md-1 col-sm-12'>
							<p style='color: #a3a3a3'>70%</p>
						</div>
					</div>
					<br />
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="30"
							aria-valuemin="0" aria-valuemax="100" style="width: 30%"></div>
					</div>
					<div class='row'>
						<div class='col-md-10 col-sm-12'>
							<p style='color: #a3a3a3'>PESQUISAR</p>
						</div>
						<div class='col-md-1 col-sm-12'>
							<p style='color: #a3a3a3'>30%</p>
						</div>
					</div>
					<br />
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="6"
							aria-valuemin="0" aria-valuemax="100" style="width: 6%"></div>
					</div>
					<div class='row'>
						<div class='col-md-10 col-sm-12'>
							<p style='color: #a3a3a3'>BLOG</p>
						</div>
						<div class='col-md-1 col-sm-12'>
							<p style='color: #a3a3a3'>6%</p>
						</div>
					</div>
				</div>
				<div class='col-md-4 col-sm-12 panel panel-default'>
					<div class='row'>
						<div class='col-md-7 col-sm-12'>
							<h2 style='color: #073763'>22.450</h2>
						</div>
						<div class='col-md-5 col-sm-12'>
							<br />
							<div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">
									⁄ltimos 7 dias <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li class="active"><a href="#">⁄ltimos 7 dias</a></li>
									<li><a href="#">⁄ltimo mÍs</a></li>
									<li><a href="#">Todo o perÌodo</a></li>
									<li><a href="#">⁄ltimo ano</a></li>
								</ul>
							</div>
						</div>
					</div>
					<p style='color: #a3a3a3'>TOTAL DE PESQUISAS</p>
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="70"
							aria-valuemin="0" aria-valuemax="100" style="width: 70%"></div>
					</div>
					<div class='row'>
						<div class='col-md-10 col-sm-12'>
							<p style='color: #a3a3a3'>ARM√ÅRIO BRANCO</p>
						</div>
						<div class='col-md-1 col-sm-12'>
							<p style='color: #a3a3a3'>70%</p>
						</div>
					</div>
					<br />
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="30"
							aria-valuemin="0" aria-valuemax="100" style="width: 30%"></div>
					</div>
					<div class='row'>
						<div class='col-md-10 col-sm-12'>
							<p style='color: #a3a3a3'>CADEIRA DE PL¡STICO</p>
						</div>
						<div class='col-md-1 col-sm-12'>
							<p style='color: #a3a3a3'>30%</p>
						</div>
					</div>
					<br />
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="6"
							aria-valuemin="0" aria-valuemax="100" style="width: 6%"></div>
					</div>
					<div class='row'>
						<div class='col-md-10 col-sm-12'>
							<p style='color: #a3a3a3'>ESTANTE COLONIAL</p>
						</div>
						<div class='col-md-1 col-sm-12'>
							<p style='color: #a3a3a3'>6%</p>
						</div>
					</div>
				</div>
				<div class='col-md-4 col-sm-12 panel panel-default'>
					<div class='row'>
						<div class='col-md-7 col-sm-12'>
							<h2 style='color: #073763'>18.450</h2>
						</div>
						<div class='col-md-5 col-sm-12'>
							<br />
							<div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">
									⁄ltimos 7 dias <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li class="active"><a href="#">⁄ltimos 7 dias</a></li>
									<li><a href="#">⁄ltimo mÍs</a></li>
									<li><a href="#">Todo o perÌodo</a></li>
									<li><a href="#">⁄ltimo ano</a></li>
								</ul>
							</div>
						</div>
					</div>
					<p style='color: #a3a3a3'>TOTAL DE PRODUTOS VISITADOS</p>
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="70"
							aria-valuemin="0" aria-valuemax="100" style="width: 70%"></div>
					</div>
					<div class='row'>
						<div class='col-md-10 col-sm-12'>
							<p style='color: #a3a3a3'>GUARDA ROUPA</p>
						</div>
						<div class='col-md-1 col-sm-12'>
							<p style='color: #a3a3a3'>70%</p>
						</div>
					</div>
					<br />
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="30"
							aria-valuemin="0" aria-valuemax="100" style="width: 30%"></div>
					</div>
					<div class='row'>
						<div class='col-md-10 col-sm-12'>
							<p style='color: #a3a3a3'>CABIDEIRO CRIATIVA</p>
						</div>
						<div class='col-md-1 col-sm-12'>
							<p style='color: #a3a3a3'>30%</p>
						</div>
					</div>
					<br />
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="6"
							aria-valuemin="0" aria-valuemax="100" style="width: 6%"></div>
					</div>
					<div class='row'>
						<div class='col-md-10 col-sm-12'>
							<p style='color: #a3a3a3'>CRIADO MUDO URBE</p>
						</div>
						<div class='col-md-1 col-sm-12'>
							<p style='color: #a3a3a3'>6%</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
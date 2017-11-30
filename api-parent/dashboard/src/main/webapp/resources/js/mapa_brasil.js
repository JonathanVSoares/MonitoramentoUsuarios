function pegarDadosLocalizacaoMapa(dias, filtros) {
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/localizacao/totalEstadosAbrev/?diasInicio=-1&diasFim=" + (dias-1) + "&argsAcao=" + filtros["acoes"] + "&argsDispositivos=" + filtros["disp"] + "&argsPermanencia=" + filtros["perm"] + "&argsHorario=" + filtros["hora"]
	}).done(function(dados) {
		delete dados["ND"];
		drawRegionsMap(dados);
		atualizarTotalMapaBrasil(dados);
	});
}

function drawRegionsMap(dados) {
	let dataTable = [['State', 'Views']];
	Object.keys(dados).map(function(key, index) {
		dataTable.push(['BR-' + key, dados[key]]);
	});
	
	var data = google.visualization.arrayToDataTable(dataTable);

	var view = new google.visualization.DataView(data)
	view.setColumns([ 0, 1 ])

	var geochart = new google.visualization.GeoChart(document
			.getElementById('chart_div'));
	var options = {
		region : 'BR',
		resolution : 'provinces',
		width : 800,
		height : 400,
		colorAxis : {
			colors : [ 'orange', 'blue' ]
		}
	};
	geochart.draw(data, options);
};

function atualizarTotalMapaBrasil(dados) {
	let total = 0;
	Object.keys(dados).map(function(key, index) {
		total += dados[key];
	});
	
	$("#totalAcessosBrasil").text("Total: " + total);
}

google.load('visualization', '1', {
	'packages' : [ 'geochart', 'table' ]
});

google.setOnLoadCallback(function() {
	let filtros = pegarFiltros();
	pegarDadosLocalizacaoMapa(7, filtros);
});


$("#btnBuscar").click(function() {
	let dias = $("#datebtn").attr("data-value");

	let filtros = pegarFiltros();
	pegarDadosLocalizacaoMapa(dias, filtros);
});
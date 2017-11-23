function pegarDadosLocalizacaoMapa(dias) {
	let diasAnteriores = calcularDiasAnteriores(dias);
	
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/localizacao/totalEstadosAbrev/?diasInicio=-1&diasFim=" + dias
	}).done(function(dados) {
		drawRegionsMap(dados);
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

	var options = {
		region : 'BR',
		resolution : 'provinces',
		width : 200,
		height : 200
	};

	var chart = new google.visualization.GeoChart(document
			.getElementById('chart_div'));
	chart.draw(data, options);

	var geochart = new google.visualization.GeoChart(document
			.getElementById('chart_div'));
	var options = {
		region : 'BR',
		resolution : 'provinces',
		width : 400,
		height : 400,
		colorAxis : {
			colors : [ 'orange', 'blue' ]
		}
	// orange to blue
	};
	geochart.draw(data, options);
};

google.load('visualization', '1', {
	'packages' : [ 'geochart', 'table' ]
});

google.setOnLoadCallback(function() {
	pegarDadosLocalizacaoMapa(7);// get from select in html
});
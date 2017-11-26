function pegarDadosLocalizacaoEstados(grafico, dias) {
	let grafico = {
		tooltip: {
			trigger: 'axis',
			axisPointer: {
				type: 'shadow'
			}
		}
		,grid: {
			left: '3%',
			right: '4%',
			bottom: '3%',
			containLabel: true
		},
		xAxis: {
			type: 'value',
			boundaryGap: [0, 0.01]
		},
		yAxis: {
			type: 'category',
			data: []
		},
		series: [
			{
				name: '',
				type: 'bar',
				data: []
			}
		]
	};
	
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/localizacao/totalEstadosAbrev/?diasInicio=-1&diasFim=" + dias
	}).done(function(dados) {
		atualizarGraficoEstados(grafico, dados);
	});
}

function atualizarGraficoEstados(grafico, dados) {
	let estados = [];
	Object.keys(dados).map(function(key, index) {
		estados.push([key, dados[key]]);
	});
	
	estados.sort(function(a, b) {
	    return b[1] - a[1];
	});
	
	let totalOutros = 0;
	
	for (index = 6; index < estados.length; ++index) {
		totalOutros += estados[index][[1]];
	}
	
	let nomesEstados = [];
	let valoresEstados = [];
	
	for (index = 0; index < estados.length && index < 6; ++index) {
		nomesEstados.push(estados[index][0]);
		valoresEstados.push(estados[index][1]);
	}
	
	if (totalOutros > 0) {
		nomesEstados.push("Outros");
		valoresEstados.push(totalOutros);
	}
	
	grafico.yAxis.data = nomesEstados;
	grafico.series[0].data = valoresEstados;
	

	var myChart = echarts.init(document.getElementById('main4'));
	myChart.setOption(grafico);
}

var myChart = echarts.init(document.getElementById('main4'));
myChart.setOption(option);

pegarDadosLocalizacaoEstados(option, 7);
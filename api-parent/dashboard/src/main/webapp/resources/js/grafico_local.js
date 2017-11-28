function pegarDadosLocalizacaoEstados(grafico, dias) {
	let diasAnteriores = calcularDiasAnteriores(dias);

	$.ajax({
			url : "http://localhost:7070/tcc/dashboardData/localizacao/totalEstadosAbrevSemArgs/?diasInicio=-1&diasFim=" + (dias - 1)
		}).done(function(dados) {
			atualizarGraficoEstados(grafico, dados);
	});
}

function getDadoGraficoLocal(nomeEstado, numeroAcessos) {
	return {
		name : nomeEstado,
		type : 'bar',
		label : {
			normal : {
				show : true
			}
		},
		data : [ numeroAcessos ]
	};
}

function atualizarGraficoEstados(grafico, dados) {
	grafico.series = [];
	let estados = [];
	Object.keys(dados).map(function(key, index) {
		estados.push(getDadoGraficoLocal(key, dados[key]));
	});

	estados.sort(function(a, b) {
		return b.data[0] - a.data[0];
	});

	let totalOutros = 0;

	for (index = 6; index < estados.length; ++index) {
		totalOutros += estados[index].data[0];
	}

	let topEstados = [];

	for (index = 0; index < estados.length && index < 6; ++index) {
		topEstados.push(estados[index]);
	}

	if (totalOutros > 0) {
		topEstados.push(getDadoGraficoLocal("Outros", totalOutros));
	}

	topEstados.sort(function(a, b) {
		return a.data[0] - b.data[0];
	});

	let nomesEstados = [];
	for (index = 0; index < topEstados.length; ++index) {
		nomesEstados.push(topEstados[index].name);
	}

	grafico.legend.data = nomesEstados;
	grafico.series = topEstados;

	let myChart = echarts.init(document.getElementById('local'));
	myChart.clear();
	myChart.setOption(grafico);
}

var myChart = echarts.init(document.getElementById('local'));

// specify chart configuration item and data
function getGraficoLocal() {
	return {
		tooltip : {
			trigger : 'axis',
			axisPointer : {
				type : 'line'
			}
		},
		legend : {
			data : []
		},
		grid : {
			left : '3%',
			right : '4%',
			bottom : '3%',
			containLabel : true
		},
		xAxis : [ {
			type : 'value'
		} ],
		yAxis : [ {
			type : 'category',
			axisTick : {
				show : false
			},
			data : [ ]
		} ],
		series : []
	};
}

// use configuration item and data specified to show chart
myChart.setOption(getGraficoLocal());

pegarDadosLocalizacaoEstados(getGraficoLocal(), 7);

$("#dropdown-localizacoes .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	pegarDadosLocalizacaoEstados(getGraficoLocal(), dias);
});
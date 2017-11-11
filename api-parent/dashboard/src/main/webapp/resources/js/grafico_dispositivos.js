function pegarDadosGraficoDispositivos(grafico, dias) {
	let diasAnteriores = calcularDiasAnteriores(dias);
	
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/dispositivos/totais/?diasInicio=-1&diasFim=" + dias
	}).done(function(data) {
		atualizarValores(grafico, data);
		
		$.ajax({
			url: "http://localhost:7070/tcc/dashboardData/dispositivos/totais/?diasInicio=" + diasAnteriores[0] + "&diasFim=" + diasAnteriores[1]
		}).done(function(dataDiasAnteriores) {
			atualizarValoresDiasAnteriores(data, dataDiasAnteriores);
		});
	});
}

function atualizarValores(grafico, data) {
	grafico.series[0].data = [
		{value:data["DESKTOP"], name:'Desktop'},
		{value:data["CELULAR"], name:'Celular'},
		{value:data["TABLET"], name:'Tablet'}
	];

	var myChart = echarts.init(document.getElementById('main3'));
	myChart.setOption(grafico);
	
	let porcentagens = calcularPorcentagens(data);
	
	$("#porcentagemDesktop").text(parseFloat(porcentagens["DESKTOP"]).toFixed(2) + "%");
	$("#porcentagemCelular").text(parseFloat(porcentagens["CELULAR"]).toFixed(2) + "%");
	$("#porcentagemTablet").text(parseFloat(porcentagens["TABLET"]).toFixed(2) + "%");
}

function calcularPorcentagens(data) {
	let total = data["DESKTOP"] + data["CELULAR"] + data["TABLET"];
	let porcentagens = {};
	
	if (total == 0) {
		porcentagens["DESKTOP"] = 0;
		porcentagens["CELULAR"] = 0;
		porcentagens["TABLET"] = 0;
		return porcentagens;
	}
	
	porcentagens["DESKTOP"] = (100 * data["DESKTOP"]) / total;
	porcentagens["CELULAR"] = (100 * data["CELULAR"]) / total;
	porcentagens["TABLET"] = (100 * data["TABLET"]) / total;
	
	return porcentagens;
}

function atualizarValoresDiasAnteriores(dadosDiasAtuais, data) {
	let porcentagemDiasAnteriores = calcularPorcentagens(data);
	let porcentagemDiasAtuais = calcularPorcentagens(dadosDiasAtuais);
	
	atualizarPorcentagensDiasAnteriores(porcentagemDiasAnteriores['DESKTOP'], porcentagemDiasAtuais['DESKTOP'], '#porcentagemAnteriorDesktop')
	atualizarPorcentagensDiasAnteriores(porcentagemDiasAnteriores['CELULAR'], porcentagemDiasAtuais['CELULAR'], '#porcentagemAnteriorCelular')
	atualizarPorcentagensDiasAnteriores(porcentagemDiasAnteriores['TABLET'], porcentagemDiasAtuais['TABLET'], '#porcentagemAnteriorTablet')
}

function atualizarPorcentagensDiasAnteriores(poncetagemAnterior, porcentagemAtual, identificadorPorcentagem) {
	let diferenca;
	let elementoPorcentagem = $(identificadorPorcentagem);
	
	if (poncetagemAnterior > porcentagemAtual) {
		diferenca = poncetagemAnterior - porcentagemAtual;

		elementoPorcentagem.css('color', '#cf2a27');
		elementoPorcentagem.children(".glyphicon").removeClass("glyphicon-arrow-up").addClass("glyphicon-arrow-down");
	} else if (poncetagemAnterior < porcentagemAtual) {
		diferenca = porcentagemAtual - poncetagemAnterior;
		
		elementoPorcentagem.css('color', '#009e0f');
		elementoPorcentagem.children(".glyphicon").removeClass("glyphicon-arrow-down").addClass("glyphicon-arrow-up");
	} else {
		diferenca = 0;
		
		elementoPorcentagem.css('color', '#009e0f');
		elementoPorcentagem.children(".glyphicon").removeClass("glyphicon-arrow-down glyphicon-arrow-up");
	}
	
	let elementoPorcentagemContents = elementoPorcentagem.contents();

	elementoPorcentagemContents[elementoPorcentagemContents.length - 1].nodeValue = parseFloat(diferenca).toFixed(2) + "%";
}

function calcularDiasAnteriores(dias) {
	return [dias, dias+dias];
}

// based on prepared DOM, initialize echarts instance
var myChart = echarts.init(document.getElementById('main3'));
option = {
	tooltip : {
		trigger: 'item',
		formatter: "{a} <br/>{b} : {c} ({d}%)"
	},
	legend: {
		orient: 'horizontal',
		left: 'left',
		data: ['Desktop','Celular','Tablet']
	},
	series : [
		{
			name: 'Dispositivo',
			type: 'pie',
			radius : '55%',
			center: ['50%', '60%'],
			data:[],
			itemStyle: {
				emphasis: {
					shadowBlur: 10,
					shadowOffsetX: 0,
					shadowColor: 'rgba(0, 0, 0, 0.5)'
				}
			}
		}
	]
};
	
pegarDadosGraficoDispositivos(option, 7);// get from select in html

// use configuration item and data specified to show chart
myChart.setOption(option);
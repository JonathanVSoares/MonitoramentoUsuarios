function pegarDadosGraficoDispositivos(dias) {
	let diasAnteriores = calcularDiasAnteriores(dias);

	let grafico = {
		color: [
			"#09395f",
			"#ffd600",
			"#ff6600",
			"#79af30",
			"#4f3963",
			"#B0DE09",
			"#04D215",
			"#0D8ECF",
			"#0D52D1",
			"#2A0CD0",
			"#8A0CCF",
			"#CD0D74",
			"#754DEB",
			"#DDDDDD",
			"#999999",
			"#333333",
			"#000000",
			"#57032A",
			"#CA9726",
			"#990000",
			"#4B0C25"
		],
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

	var myChart = echarts.init(document.getElementById('main3'));
	myChart.setOption(grafico);
	
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/dispositivos/totais/?diasInicio=-1&diasFim=" + (dias-1)
	}).done(function(data) {
		atualizarValoresDispositivo(grafico, data);
		
		$.ajax({
			url: "http://localhost:7070/tcc/dashboardData/dispositivos/totais/?diasInicio=" + diasAnteriores[0] + "&diasFim=" + diasAnteriores[1]
		}).done(function(dataDiasAnteriores) {
			atualizarValoresDiasAnteriores(data, dataDiasAnteriores);
		});
	});
}

function atualizarValoresDispositivo(grafico, data) {
	grafico.series[0].data = [
		{value:data["DESKTOP"], name:'Desktop'},
		{value:data["CELULAR"], name:'Celular'},
		{value:data["TABLET"], name:'Tablet'}
	];

	var myChart = echarts.init(document.getElementById('main3'));
	myChart.setOption(grafico);
	
	let porcentagens = calcularPorcentagens(data);
	
	atualizarPorcentagemDispositivos("#porcentagemDesktop", porcentagens["DESKTOP"]);
	atualizarPorcentagemDispositivos("#porcentagemCelular", porcentagens["CELULAR"]);
	atualizarPorcentagemDispositivos("#porcentagemTablet", porcentagens["TABLET"]);
}

function atualizarPorcentagemDispositivos(identificadorElementoPorcentagem, valor) {
	let elementoPorcentagem = $(identificadorElementoPorcentagem);

	let elementoPorcentagemContents = elementoPorcentagem.contents();
	
	elementoPorcentagemContents[elementoPorcentagemContents.length - 1].nodeValue = parseFloat(valor).toFixed(1) + "%";
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
	
	atualizarPorcentagensDiasAnterioresDispositivos(porcentagemDiasAnteriores['DESKTOP'], porcentagemDiasAtuais['DESKTOP'], '#porcentagemAnteriorDesktop')
	atualizarPorcentagensDiasAnterioresDispositivos(porcentagemDiasAnteriores['CELULAR'], porcentagemDiasAtuais['CELULAR'], '#porcentagemAnteriorCelular')
	atualizarPorcentagensDiasAnterioresDispositivos(porcentagemDiasAnteriores['TABLET'], porcentagemDiasAtuais['TABLET'], '#porcentagemAnteriorTablet')
}

function atualizarPorcentagensDiasAnterioresDispositivos(poncetagemAnterior, porcentagemAtual, identificadorPorcentagem) {
	let diferenca;
	let elementoPorcentagem = $(identificadorPorcentagem);
	
	if (poncetagemAnterior > porcentagemAtual) {
		diferenca = poncetagemAnterior - porcentagemAtual;

		elementoPorcentagem.css('color', '#cf2a27');
		elementoPorcentagem.children(".fa").removeClass("fa-arrow-up").addClass("fa-arrow-down");
	} else if (poncetagemAnterior < porcentagemAtual) {
		diferenca = porcentagemAtual - poncetagemAnterior;
		
		elementoPorcentagem.css('color', '#009e0f');
		elementoPorcentagem.children(".fa").removeClass("fa-arrow-down").addClass("fa-arrow-up");
	} else {
		diferenca = 0;
		
		elementoPorcentagem.css('color', '#009e0f');
		elementoPorcentagem.children(".fa").removeClass("fa-arrow-down fa-arrow-up");
	}
	
	let elementoPorcentagemContents = elementoPorcentagem.contents();

	elementoPorcentagemContents[elementoPorcentagemContents.length - 1].nodeValue = parseFloat(diferenca).toFixed(1) + "%";
}
	
pegarDadosGraficoDispositivos(7);// get from select in html

$("#dropdown-dispositivos .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	pegarDadosGraficoDispositivos(dias);
});
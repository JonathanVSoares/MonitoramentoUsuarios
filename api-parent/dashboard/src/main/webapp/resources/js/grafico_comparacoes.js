function atualizarDadosGraficoComparacoes(url, complUrl, dias, idGrafico, idNumTotal, nomeDados, idPercent) {
	var graficoComparacao = {
		tooltip : {
			trigger : 'axis'
		},

		calculable : true,
		xAxis : [ {
			type : 'category',
			data : []
		} ],
		yAxis : [ {
			type : 'value'
		} ],
		series : [ {
			itemStyle : {
				normal : {
					color : '#09395f',
					opacity : 0.8,
				}
			},
			name : nomeDados,
			type : 'bar',

			data : [],
			markPoint : {
				itemStyle : {
					normal : {
						color : '#ffd600',
						opacity : 0.9,
					}
				},
				data : [ {
					type : 'max',
					name : 'Máximo'
				}, {
					type : 'min',
					name : 'Mínimo'
				} ]
			},
			markLine : {
				itemStyle : {
					normal : {
						color : '#ffd600',
					}
				},
				data : [ {
					type : 'average',
					name : 'Média'
				} ]
			}
		} ]
	};

	atualizarDias(graficoComparacao, dias);
	
	$.ajax({
		url : url + -1 + complUrl + (dias-1)
	}).done(function(data) {
		var myChart = echarts.init(document.getElementById(idGrafico));
		
		atualizarValoresTotaisGrafComp(idNumTotal, data);

		atualizarValores(graficoComparacao, data, myChart);

		let diasAnteriores = calcularDiasAnteriores(dias);
		$.ajax({
			url : url + diasAnteriores[0] + complUrl + diasAnteriores[1]
		}).done(function(dataAnterior) {
			let total = getTotalGrafComp(data);
			let totalAnterior = getTotalGrafComp(dataAnterior);
			
			let diferencaPorc = ((100 * total) / totalAnterior) - 100;

			let elementoPorcentagem = $(idPercent);
			if (diferencaPorc < 0) {
				elementoPorcentagem.css('color', '#cf2a27');
				elementoPorcentagem.children(".fa").removeClass("fa-arrow-up").addClass("fa-arrow-down");
			} else if (diferencaPorc > 0) {
				elementoPorcentagem.css('color', '#009e0f');
				elementoPorcentagem.children(".fa").removeClass("fa-arrow-down").addClass("fa-arrow-up");
			} else {
				elementoPorcentagem.css('color', '#009e0f');
				elementoPorcentagem.children(".fa").removeClass("fa-arrow-down fa-arrow-up");
			}

			
			let elementoPorcentagemContents = elementoPorcentagem.contents();

			elementoPorcentagemContents[elementoPorcentagemContents.length - 1].nodeValue = parseFloat(diferencaPorc).toFixed(1) + "%";
		});
		
	});
}

function atualizarDias(grafico, numDias) {
	for (i = 0; i < numDias; i++) {
		let dia = new Date();
		dia.setDate(dia.getDate() - i);

		let dd = dia.getDate();
		let mm = dia.getMonth() + 1;

		if (dd < 10) {
			dd = '0' + dd;
		}
		if (mm < 10) {
			mm = '0' + mm;
		}

		grafico.xAxis[0].data[numDias - (i + 1)] = dd + '/' + mm;
	}
}

function atualizarValoresTotaisGrafComp(id, dados) {
	let total = 0;
	Object.keys(dados).map(function(key, index) {
		total += dados[key];
	});
	
	$(id).text(total);
}

function getTotalGrafComp(dados) {
	let total = 0;
	Object.keys(dados).map(function(key, index) {
		total += dados[key];
	});
	
	return total;
}

function atualizarValores(grafico, dados, chart) {
	let dadosGrafico = grafico.series[0].data;

	let dias = grafico.xAxis[0].data;

	for (let i = 0; i < dias.length; i++) {
		if (dados[dias[i]] == undefined) {
			dadosGrafico[i] = 0;
		} else {
			dadosGrafico[i] = dados[dias[i]];
		}
	}

	chart.setOption(grafico);
}
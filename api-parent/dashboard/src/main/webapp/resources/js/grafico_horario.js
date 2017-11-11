var days = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'];
var hours = ['00:00', '02:00', '04:00',
		'06:00', '08:00', '10:00', '12:00', '14:00', '16:00', '18:00', '20:00', '22:00'];

function encontrarIndexHorario(horario, hours) {
	for (let i = 0; i < hours.length; i++) {
		if (hours[i] == horario) {
			return i;
		}
	}
	
	return -1;
}

// specify chart configuration item and data
function updateData(grafico, hours) {
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/horario/ultimosDias"
	}).done(function(data) {
		var dadosGrafico = [];
		let maxAcessos = 0;
		for (let i = 0; i < data.length; i++) {
			let indexDiaSemana = data[i].diaDaSemana;
			let numAcessos = data[i].numeroAcessos;
			let indexHorario = encontrarIndexHorario(data[i].horario, hours);
			
			dadosGrafico[i] = [indexHorario, indexDiaSemana, numAcessos];
			if (numAcessos > maxAcessos) {
				maxAcessos = numAcessos;
			}
		}
		
		dadosGrafico = dadosGrafico.map(function (item) {
			return [item[1], item[0], item[2] || '-'];
		});
		
		grafico.series[0].data = dadosGrafico;
		grafico.visualMap.max = maxAcessos;

		var myChart = echarts.init(document.getElementById('main2'));
		myChart.setOption(grafico);
	});
}


var option = {
	tooltip: {
		position: 'top'
	},
	animation: false,
	grid: {
		height: '50%',
		y: '10%'
	},
	xAxis: {
		type: 'category',
		data: days,
		splitArea: {
			show: true
		}
	},
	yAxis: {
		type: 'category',
		data: hours,
		splitArea: {
			show: true
		}
	},
	visualMap: {
		min: 0,
		calculable: true,
		orient: 'horizontal',
		left: 'center',
		bottom: '10%'
	},
	series: [{
		name: 'Punch Card',
		type: 'heatmap',
		data: [],
		label: {
			normal: {
				show: true
			}
		},
		itemStyle: {
			emphasis: {
				shadowBlur: 20,
				shadowColor: 'rgba(0, 0, 0, 0)'
			}
		}
	}]
};

updateData(option, hours);
function atualizarDadosGraficoComparacoes(grafico, dias) {
	atualizarDias(grafico, dias);
	
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/numVisualizacoesAgrupadas/?dias=" + dias
	}).done(function(data) {
		atualizarValores(grafico, "Visualizações", data);
	});
	
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/numUsuariosAgrupados/?dias=" + dias
	}).done(function(data) {
		atualizarValores(grafico, "Usuários", data);
	});

	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/numSessoesAgrupadas/?dias=" + dias
	}).done(function(data) {
		atualizarValores(grafico, "Sessões", data);
	});
}

function atualizarDias(grafico, numDias) {
	for (i = 0; i < numDias; i++) {
		let dia = new Date();
		dia.setDate(dia.getDate() - i);
		
		let dd = dia.getDate();
		let mm = dia.getMonth()+1;
		

		if (dd < 10) {
			dd = '0' + dd;
		}
		if (mm < 10) {
			mm = '0' + mm;
		}
		
		grafico.xAxis.data[numDias - (i + 1)] = dd + '/' + mm;
	}
}

function atualizarValores(grafico, campo, dados) {
	let campoAMudar;
	let campos = grafico.series;
	for (let i = 0; i < campos.length; i++) {
		if (campos[i].name == campo) {
			campoAMudar = campos[i];
			break;
		}
	}
	
	let dias = grafico.xAxis.data;
	
	for (let i = 0; i < dias.length; i++) {
		if (dados[dias[i]] == undefined) {
			campoAMudar.data[i] = 0;
		} else {
			campoAMudar.data[i] = dados[dias[i]];
		}
	}

	var myChart = echarts.init(document.getElementById('main'));
	myChart.setOption(grafico);
}

var myChart = echarts.init(document.getElementById('main'));

// specify chart configuration item and data
var option = {
	tooltip: {
		trigger: 'axis'
	},
	legend: {
		data:['Visualizações','Usuários','Sessões','Pesquisas']
	},
	grid: {
		left: '3%',
		right: '4%',
		bottom: '3%',
		containLabel: true
	},
	xAxis: {
		type: 'category',
		boundaryGap: false,
		data: []
	},
	yAxis: {
		type: 'value'
	},
	series: [
		{
			name:'Visualizações',
			type:'line',
			stack: '总量',
			data:[]
		},
		{
			name:'Usuários',
			type:'line',
			stack: '总量',
			data:[]
		},
		{
			name:'Sessões',
			type:'line',
			stack: '总量',
			data:[]
		},
		{
			name:'Pesquisas',
			type:'line',
			stack: '总量',
			data:[]
		}
	]
};

let diasGrafico = 7; // get from select in html

atualizarDadosGraficoComparacoes(option, 7);

// use configuration item and data specified to show chart
myChart.setOption(option);
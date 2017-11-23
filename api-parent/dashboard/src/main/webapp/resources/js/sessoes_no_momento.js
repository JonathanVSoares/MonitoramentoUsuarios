function refreshNumSessoes() {
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/numVisualizacoes/?diasInicio=-1&diasFim=6"
	}).done(function(data) {
		$("#numVizualizacoesGrafComparacoes").text(data);

		$.ajax({
			url: "http://localhost:7070/tcc/dashboardData/numVisualizacoes/?diasInicio=6&diasFim=13"
		}).done(function(dataAnterior) {
			let porcentagemDiferenca = ((data * 100) / dataAnterior) - 100;
			atualizarPorcentagensDiasAnteriores(porcentagemDiferenca, '#porcentagemDiferencaVisualizacoes');
		});
	});
	
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/numUsuarios/?diasInicio=-1&diasFim=6"
	}).done(function(data) {
		$("#numUsuariosGrafComparacoes").text(data);

		$.ajax({
			url: "http://localhost:7070/tcc/dashboardData/numUsuarios/?diasInicio=6&diasFim=13"
		}).done(function(dataAnterior) {
			let porcentagemDiferenca = ((data * 100) / dataAnterior) - 100;
			atualizarPorcentagensDiasAnteriores(porcentagemDiferenca, '#porcentagemDiferencaUsuarios');
		});
	});
	
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/numSessoes/?diasInicio=-1&diasFim=6"
	}).done(function(data) {
		$("#numSessoesGrafComparacoes").text(data);

		$.ajax({
			url: "http://localhost:7070/tcc/dashboardData/numSessoes/?diasInicio=6&diasFim=13"
		}).done(function(dataAnterior) {
			let porcentagemDiferenca = ((data * 100) / dataAnterior) - 100;
			atualizarPorcentagensDiasAnteriores(porcentagemDiferenca, '#porcentagemDiferencaSessoes');
		});
	});
}

function atualizarPorcentagensDiasAnteriores(porcentagemDiferenca, identificadorPorcentagem) {
	let elementoPorcentagem = $(identificadorPorcentagem);

	if (porcentagemDiferenca < 0) {
		elementoPorcentagem.css('color', '#cf2a27');
		elementoPorcentagem.children(".glyphicon").removeClass("glyphicon-arrow-up").addClass("glyphicon-arrow-down");
	} else if (porcentagemDiferenca > 0) {
		elementoPorcentagem.css('color', '#009e0f');
		elementoPorcentagem.children(".glyphicon").removeClass("glyphicon-arrow-down").addClass("glyphicon-arrow-up");
	} else {
		elementoPorcentagem.css('color', '#009e0f');
		elementoPorcentagem.children(".glyphicon").removeClass("glyphicon-arrow-down glyphicon-arrow-up");
	}
	
	let elementoPorcentagemContents = elementoPorcentagem.contents();

	elementoPorcentagemContents[elementoPorcentagemContents.length - 1].nodeValue = parseFloat(porcentagemDiferenca).toFixed(2) + "%";
}

$(document).ready(function(){
	refreshNumSessoes();
	
	setInterval(refreshNumSessoes, 10000);
});
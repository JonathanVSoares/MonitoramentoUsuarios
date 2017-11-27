function atualizarDadosTecnologia(dias, secao, nomeDado) {
	let diasInicio = -1;
	let diasFim = dias - 1;
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/tecnologia/" + secao + "/" + nomeDado + "/?diasInicio=" + diasInicio + "&diasFim=" + diasFim
	}).done(function(dados) {
		let elementoSecao = $("#secao-" + secao);
		Object.keys(dados).map(function(key, index) {
			elementoSecao.find("#linha-" + key).find(".dado-" + nomeDado).text(dados[key]);
		});
	});
}

function atualizarDadosTecnologiaResolucao(dias, nomeDado) {
	let diasInicio = -1;
	let diasFim = dias - 1;
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/tecnologia/resolucao/" + nomeDado + "/?diasInicio=" + diasInicio + "&diasFim=" + diasFim
	}).done(function(dados) {
		let elementoSecao = $("#secao-resolucao");
		Object.keys(dados).map(function(key, index) {
			elementoSecao.find("#linha-" + nomeDado).find(".dado-" + key).text(dados[key]);
		});
	});
}

function atualizarValoresPaginaTecnologia(dias) {
	atualizarDadosTecnologia(dias, "browser", "visualizacoes");
	atualizarDadosTecnologia(dias, "browser", "sessoes");
	atualizarDadosTecnologia(dias, "browser", "pesquisas");

	atualizarDadosTecnologiaResolucao(dias, "visualizacoes");
	atualizarDadosTecnologiaResolucao(dias, "sessoes");
	atualizarDadosTecnologiaResolucao(dias, "pesquisas");

	atualizarDadosTecnologia(dias, "dispositivos", "visualizacoes");
	atualizarDadosTecnologia(dias, "dispositivos", "sessoes");
	atualizarDadosTecnologia(dias, "dispositivos", "pesquisas");

	atualizarDadosTecnologia(dias, "so", "visualizacoes");
	atualizarDadosTecnologia(dias, "so", "sessoes");
	atualizarDadosTecnologia(dias, "so", "pesquisas");
}

atualizarValoresPaginaTecnologia(7);

$("#dropdown-tecnologia .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	atualizarValoresPaginaTecnologia(dias);
});

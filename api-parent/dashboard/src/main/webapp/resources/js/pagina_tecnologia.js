function atualizarDadosTecnologia(dias, secao, nomeDado, filtros) {
	let diasInicio = -1;
	let diasFim = dias - 1;
	
	console.log("http://localhost:7070/tcc/dashboardData/tecnologia/" + secao + "/" + nomeDado + "/?diasInicio=" + diasInicio + "&diasFim=" + diasFim + "&argsAcao=" + filtros["acoes"] + "&argsLocalizacao=" + filtros["local"] + "&argsPermanencia=" + filtros["perm"] + "&argsHorario=" + filtros["hora"]);
	
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/tecnologia/" + secao + "/" + nomeDado + "/?diasInicio=" + diasInicio + "&diasFim=" + diasFim + "&argsAcao=" + filtros["acoes"] + "&argsLocalizacao=" + filtros["local"] + "&argsPermanencia=" + filtros["perm"] + "&argsHorario=" + filtros["hora"]
	}).done(function(dados) {
		let elementoSecao = $("#secao-" + secao);
		Object.keys(dados).map(function(key, index) {
			elementoSecao.find("#linha-" + key).find(".dado-" + nomeDado).text(dados[key]);
		});
	});
}

function atualizarDadosTecnologiaResolucao(dias, nomeDado, filtros) {
	let diasInicio = -1;
	let diasFim = dias - 1;
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/tecnologia/resolucao/" + nomeDado + "/?diasInicio=" + diasInicio + "&diasFim=" + diasFim + "&argsAcao=" + filtros["acoes"] + "&argsLocalizacao=" + filtros["local"] + "&argsPermanencia=" + filtros["perm"] + "&argsHorario=" + filtros["hora"]
	}).done(function(dados) {
		let elementoSecao = $("#secao-resolucao");
		Object.keys(dados).map(function(key, index) {
			elementoSecao.find("#linha-" + nomeDado).find(".dado-" + key).text(dados[key]);
		});
	});
}

function atualizarValoresPaginaTecnologia(dias) {
	let filtros = pegarFiltros();
	
	atualizarDadosTecnologia(dias, "browser", "visualizacoes", filtros);
	atualizarDadosTecnologia(dias, "browser", "sessoes", filtros);
	atualizarDadosTecnologia(dias, "browser", "pesquisas", filtros);

	atualizarDadosTecnologiaResolucao(dias, "visualizacoes", filtros);
	atualizarDadosTecnologiaResolucao(dias, "sessoes", filtros);
	atualizarDadosTecnologiaResolucao(dias, "pesquisas", filtros);

	atualizarDadosTecnologia(dias, "dispositivos", "visualizacoes", filtros);
	atualizarDadosTecnologia(dias, "dispositivos", "sessoes", filtros);
	atualizarDadosTecnologia(dias, "dispositivos", "pesquisas", filtros);

	atualizarDadosTecnologia(dias, "so", "visualizacoes", filtros);
	atualizarDadosTecnologia(dias, "so", "sessoes", filtros);
	atualizarDadosTecnologia(dias, "so", "pesquisas", filtros);
}

atualizarValoresPaginaTecnologia(7);

$("#botao-buscar").click(function() {
	let dias = $("#datebtn").attr("data-value");
	atualizarValoresPaginaTecnologia(dias);
});

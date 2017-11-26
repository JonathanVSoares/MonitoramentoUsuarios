function atualizarDadosHorario(dias, nomeDado) {
	let diasInicio = -1;
	let diasFim = dias - 1;
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/sessoeshorario/" + nomeDado + "?diasInicio=" + diasInicio + "&diasFim=" + diasFim
	}).done(function(dados) {
		let porcentagens = calcularPoncentagensPeriodos(dados);
		let classeDado = ".item-" + nomeDado;

		Object.keys(dados).map(function(key, index) {
			let idSecaoPeriodo = "#secao-" + key.toLowerCase();
			$(idSecaoPeriodo).find(classeDado).find(".valor-dado").text(dados[key]);
			$(idSecaoPeriodo).find(classeDado).find(".porcentagem-dado").text(porcentagens[key] + "%");
		});
	});
}

function atualizarMediasDuracaoHorario(dias, nomeDado) {
	let diasInicio = -1;
	let diasFim = dias - 1;
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/sessoeshorario/mediaDuracao?diasInicio=" + diasInicio + "&diasFim=" + diasFim
	}).done(function(dados) {
		let classeDado = ".item-medias";

		Object.keys(dados).map(function(key, index) {
			let idSecaoPeriodo = "#secao-" + key.toLowerCase();
			let valorFormatado = formatarHorario(dados[key]);
			
			$(idSecaoPeriodo).find(classeDado).find(".valor-dado").text(valorFormatado);
		});
	});
}

function formatarHorario(tempo) {
	 let date = new Date(null);
	 date.setSeconds(tempo);
	 return date.toISOString().substr(11, 8);
}

function calcularPoncentagensPeriodos(dados) {
	let total = 0;
	
	Object.keys(dados).map(function(key, index) {
		total += parseInt(dados[key]);
	});

	let porcentagens = {};
	
	if (total == 0) {
		Object.keys(dados).map(function(key, index) {
			porcentagens[key] = parseFloat(0).toFixed(1);
		});
	} else {
		Object.keys(dados).map(function(key, index) {
			porcentagens[key] = parseFloat((dados[key] * 100) / total).toFixed(1);
		});
	}
	
	return porcentagens;
}

function atualizarValoresPaginaHorario(dias) {
	atualizarDadosHorario(dias, "visitantes");
	atualizarDadosHorario(dias, "pesquisas");
	atualizarDadosHorario(dias, "wishlist");
	atualizarDadosHorario(dias, "carrinho");
	atualizarDadosHorario(dias, "mobile");
	
	atualizarMediasDuracaoHorario(dias);
}

atualizarValoresPaginaHorario(7);

$("#dropdown-secoes-horario .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	atualizarValoresPaginaHorario(dias);
});

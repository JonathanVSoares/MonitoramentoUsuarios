function atualizarDadosPaginasEventos(dias, nomeDado) {
	let diasInicio = -1;
	let diasFim = dias - 1;
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/paginasEventos/" + nomeDado + "?diasInicio=" + diasInicio + "&diasFim=" + diasFim
	}).done(function(dados) {
		let porcentagens = calcularPorcentagens(dados);

		let arrayDados = [];
		Object.keys(dados).map(function(key, index) {
			arrayDados.push([key, dados[key]]);
		});
		
		arrayDados.sort(function(a, b) {
		    return b[1] - a[1];
		});

		let idSecao = "#secao-" + nomeDado;
		let tabela = $(idSecao).find(".tabela-itens");
		
		for (let i = 0; i < 5; i++) {
			let secaoItem = tabela.find("tr:nth-child(" + (i + 1) + ")");
			if (i >= arrayDados.length) {
				secaoItem.find(".nome-item").text("");
				secaoItem.find(".valor-item").text("");
				secaoItem.find(".porcentagem-item").text("");
			} else {
				let key = arrayDados[i][0];
				
				secaoItem.find(".nome-item").text(key);
				secaoItem.find(".valor-item").text(dados[key]);
				secaoItem.find(".porcentagem-item").text(porcentagens[key] + "%");
			}
		}
	});
}

function atualizarDadosPaginasEventos7Dias(nomeDado) {
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/paginasEventos/" + nomeDado
	}).done(function(dados) {
		let elementoDado = $("#valor-" + nomeDado).contents();
		
		elementoDado[elementoDado.length - 1].nodeValue = dados;
	});
}

function calcularTotal(dados) {
	let total = 0;
	Object.keys(dados).map(function(key, index) {
		total += dados[key];
	});
	
	return total;
}

function calcularPorcentagens(dados) {
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

atualizarDadosPaginasEventos(7, "paginasMaisAcessadas");
atualizarDadosPaginasEventos(7, "paginasMaisRejeitadas");

atualizarDadosPaginasEventos7Dias("cliquesBanner");
atualizarDadosPaginasEventos7Dias("eventosSessao");
atualizarDadosPaginasEventos7Dias("visitantesWishlistCarrinho");

$("#dropdown-paginas-mais-acessadas .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	atualizarDadosPaginasEventos(dias, "paginasMaisAcessadas");
});

$("#dropdown-paginas-mais-rejeitadas .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	atualizarDadosPaginasEventos(dias, "paginasMaisRejeitadas");
});

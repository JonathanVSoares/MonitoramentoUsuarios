function atualizarDadosLocalizacao(dias, nomeDado) {
	let diasInicio = -1;
	let diasFim = dias - 1;
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/localizacao/" + nomeDado + "?diasInicio=" + diasInicio + "&diasFim=" + diasFim
	}).done(function(dados) {
		let porcentagens = calcularPorcentagens(dados);

		let classeDado = ".item-" + nomeDado;

		let arrayDados = [];
		Object.keys(dados).map(function(key, index) {
			arrayDados.push([key, dados[key]]);
		});
		
		arrayDados.sort(function(a, b) {
		    return b[1] - a[1];
		});

		let idSecao = "#secao-" + nomeDado;
		let tabela = $(idSecao).find(".tabela-itens");

		let total = calcularTotal(dados);
		$(idSecao).find(".total-dados").text("Total: " + total);
		
		for (let i = 0; i < arrayDados.length && i < 3; i++) {
			let key = arrayDados[i][0];
			
			let secaoItem = tabela.find("tr:nth-child(" + (i + 1) + ")");
			
			secaoItem.find(".nome-item").text(key);
			secaoItem.find(".valor-item").text(dados[key]);
			secaoItem.find(".porcentagem-item").text(porcentagens[key] + "%");
		}
	});
}

function atualizarVisitantesDestaque(dias) {
	let diasInicio = -1;
	let diasFim = dias - 1;
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/localizacao/totalEstados?diasInicio=" + diasInicio + "&diasFim=" + diasFim
	}).done(function(dados) {
		let estados = [];
		let total = calcularTotal(dados);
		let porcentagens = calcularPorcentagens(dados);
		
		Object.keys(dados).map(function(key, index) {
			estados.push([key, dados[key], porcentagens[key]]);
		});
		
		estados.sort(function(a, b) {
		    return b[1] - a[1];
		});

		$("#nome-estado-destaque").text(estados[0][0]);
		$("#total-estado-destaque").text(estados[0][1]);
		$("#porcentagem-estado-destaque").text(estados[0][2] + "%");
		$("#barra-porcentagem-estado-destaque").css("width", estados[0][2] + "%");
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

function atualizarValoresPaginaLocalizacao(dias) {
	atualizarDadosLocalizacao(dias, "estrangeiros");
	atualizarDadosLocalizacao(dias, "idiomas");
	
	atualizarVisitantesDestaque(dias);
}

atualizarValoresPaginaLocalizacao(7);

$("#dropdown-localizacao .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	atualizarValoresPaginaLocalizacao(dias);
});

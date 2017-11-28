function atualizarDadosLocalizacao(dias, nomeDado, filtros) {
	let diasInicio = -1;
	let diasFim = dias - 1;
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/localizacao/" + nomeDado + "?diasInicio=" + diasInicio + "&diasFim=" + diasFim + "&argsAcao=" + filtros["acoes"] + "&argsDispositivos=" + filtros["disp"] + "&argsPermanencia=" + filtros["perm"] + "&argsHorario=" + filtros["hora"]
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

		let total = calcularTotal(dados);
		$(idSecao).find(".total-dados").text("Total: " + total);
		
		for (let i = 0; i < 3; i++) {
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

function atualizarVisitantesDestaque(dias, filtros) {
	let diasInicio = -1;
	let diasFim = dias - 1;
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/localizacao/totalEstados?diasInicio=" + diasInicio + "&diasFim=" + diasFim + "&argsAcao=" + filtros["acoes"] + "&argsDispositivos=" + filtros["disp"] + "&argsPermanencia=" + filtros["perm"] + "&argsHorario=" + filtros["hora"]
	}).done(function(dados) {
		delete dados["ND"];
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
	let filtros = pegarFiltros();
	atualizarDadosLocalizacao(dias, "estrangeiros", filtros);
	atualizarDadosLocalizacao(dias, "idiomas", filtros);
	
	atualizarVisitantesDestaque(dias, filtros);
}

atualizarValoresPaginaLocalizacao(7);

$("#btnBuscar").click(function() {
	let dias = $("#datebtn").attr("data-value");
	atualizarValoresPaginaLocalizacao(dias);
});
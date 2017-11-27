function atualizarTermosMaisComuns(dias) {
	let diasInicio = -1;
	let diasFim = dias - 1;

	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/numPesquisasAgrupadas/?diasInicio=" + diasInicio + "&diasFim=" + diasFim
	}).done(function(totaisPesquisas) {
		let total = calcularTotal(totaisPesquisas);
		$("#totalPesquisas").text(total);
		$.ajax({
			url: "http://localhost:7070/tcc/dashboardData/buscas/termosMaisComuns/?diasInicio=" + diasInicio + "&diasFim=" + diasFim
		}).done(function(dados) {
			let porcentagens = calcularPorcentagens(dados, total);
			let termosArr = []
	
			Object.keys(dados).map(function(key, index) {
				termosArr.push([key, dados[key], porcentagens[key]]);
			});
			
			termosArr.sort(function(a, b) {
			    return b[1] - a[1];
			});

			let tabela = $("#tabela-termos-mais-comuns")
			for (let i = 0; i < termosArr.length && i < 6; i++) {
				let key = termosArr[i][0];
				
				let secaoItem = tabela.find("tr:nth-child(" + (i + 1) + ")");
				
				secaoItem.find(".nome-termo").text("'" + key + "'");
				secaoItem.find(".qtd-termo").text(dados[key]);
				secaoItem.find(".porcentagem-termo").text(porcentagens[key] + "%");
			}
		});

		let diasAnteriores = calcularDiasAnteriores(dias);
		
		$.ajax({
			url: "http://localhost:7070/tcc/dashboardData/numPesquisasAgrupadas/?diasInicio=" + diasAnteriores[0] + "&diasFim=" + diasAnteriores[1]
		}).done(function(totaisPesquisasAnteriores) {
			let totalAnterior = calcularTotal(totaisPesquisasAnteriores);
			
			let porcentagemDiferenca = ((total * 100) / totalAnterior) - 100;
			
			let elementoPorcentagem = $("#porcentagemAnteriorPesquisas");
			if (porcentagemDiferenca < 0) {
				elementoPorcentagem.css('color', '#cf2a27');
				elementoPorcentagem.children(".fa").removeClass("fa-arrow-up").addClass("fa-arrow-down");
			} else if (porcentagemDiferenca > 0) {
				elementoPorcentagem.css('color', '#009e0f');
				elementoPorcentagem.children(".fa").removeClass("fa-arrow-down").addClass("fa-arrow-up");
			} else {
				elementoPorcentagem.css('color', '#009e0f');
				elementoPorcentagem.children(".fa").removeClass("fa-arrow-down fa-arrow-up");
			}

			let elementoPorcentagemContents = elementoPorcentagem.contents();

			elementoPorcentagemContents[elementoPorcentagemContents.length - 1].nodeValue = parseFloat(porcentagemDiferenca).toFixed(1) + "%";
		});
	});
}

function calcularDiasAnteriores(dias) {
	let diasFinal = parseInt(dias) + parseInt(dias) - 1;
	return [parseInt(dias) - 1, diasFinal];
}

function calcularTotal(dados) {
	let total = 0;
	Object.keys(dados).map(function(key, index) {
		total += dados[key];
	});
	
	return total;
}

function calcularPorcentagens(dados, total) {
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

atualizarTermosMaisComuns(7);

$("#dropdown-buscas .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	atualizarTermosMaisComuns(dias);
});

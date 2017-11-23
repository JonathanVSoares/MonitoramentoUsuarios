function atualizarTabela(paginas) {	
	var paginasOrdenadas = [];
	for (var pagina in paginas) {
		paginasOrdenadas.push([pagina, paginas[pagina]]);
	}

	paginasOrdenadas.sort(function(a, b) {
	    return b[1] - a[1];
	});

	let elementosPaginasAtivas = $("#tbody-paginas-ativas").children("tr");
	
	for (let i = 0; i < 7; i++) {
		let elementoNomePagina = elementosPaginasAtivas.eq(i).children("td:first-child");
		let elementoNumTotalPagina = elementosPaginasAtivas.eq(i).children("td:nth-child(2)");
		if (paginasOrdenadas.length <= i) {
			elementoNomePagina.text("");
			elementoNumTotalPagina.text("");
		} else {
			elementoNomePagina.text(paginasOrdenadas[i][0]);
			elementoNumTotalPagina.text(paginasOrdenadas[i][1]);
		}
	}
}

function refreshPaginasAtivas() {
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/paginasAtivas"
	}).done(function(data) {
		atualizarTabela(data);
	});

	
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/numUsuariosAtuais"
	}).done(function(data) {
		let numSessoes = $("#numSessoes").contents();
		
		numSessoes[numSessoes.length - 1].nodeValue = data;
		 $("#numSessoes").find("span").attr("data-value", data);
	});
}

$(document).ready(function() {
	refreshPaginasAtivas();

	setInterval(refreshPaginasAtivas, 10000);
});
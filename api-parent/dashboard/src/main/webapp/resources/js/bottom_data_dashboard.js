function calcularMediaDuracao() {
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/bottomData/mediaDuracao"
	}).done(function(data) {
		let minutos = parseInt(data / 60);
		if (minutos < 10) {
			minutos = "0" + minutos;
		}
		
		let segundos = data % 60;
		if (segundos < 10) {
			segundos = "0" + segundos;
		}
		
		let mediaSessao = $("#mediaSessao").contents();
		mediaSessao[mediaSessao.length - 1].nodeValue = minutos + ":" + segundos;
	})
}

function pegarProdutosWishlist() {
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/bottomData/produtosWishlist"
	}).done(function(data) {
		let produtosWishlist = $("#produtosWishlist").contents();
		produtosWishlist[produtosWishlist.length - 1].nodeValue = data;
	})
}

function visitasEssaSemana() {
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/numSessoes/?diasInicio=-1&diasFim=6"
	}).done(function(essaSemana) {
		$.ajax({
			url: "http://localhost:7070/tcc/dashboardData/numSessoes/?diasInicio=6&diasFim=13"
		}).done(function(semanaAnterior) {
			let porcentagemDiferenca = ((essaSemana * 100) / semanaAnterior) - 100;

			let visitasSemana = $("#visitasSemana").contents();
			visitasSemana[visitasSemana.length - 1].nodeValue = parseFloat(porcentagemDiferenca).toFixed(1) + "%";
		});
	});
}

calcularMediaDuracao();
pegarProdutosWishlist();
visitasEssaSemana();
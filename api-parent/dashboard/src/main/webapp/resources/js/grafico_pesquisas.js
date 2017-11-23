let urlPesquisasAgrupadas = "http://localhost:7070/tcc/dashboardData/numPesquisasAgrupadas/?diasInicio=";
let urlComplPe = "&diasFim=";
let idGraficoPesquisas = "pe";
let idNumTotalPesquisas = "#numPesquisasGrafComp";
let nomePesquisas = "Pesquisas";
let porcPesComp = "#porcPesComp";

atualizarDadosGraficoComparacoes(urlPesquisasAgrupadas, urlComplPe, 7, idGraficoPesquisas, idNumTotalPesquisas, nomePesquisas, porcPesComp); // grafico_comparacoes.js

$("#dropdown-comparacao .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	atualizarDadosGraficoComparacoes(urlPesquisasAgrupadas, urlComplPe, dias, idGraficoPesquisas, idNumTotalPesquisas, nomePesquisas, porcPesComp);
});
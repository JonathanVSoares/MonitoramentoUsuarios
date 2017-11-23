let urlSessoesAgrupadas = "http://localhost:7070/tcc/dashboardData/numSessoesAgrupadas/?diasInicio=";
let urlComplse = "&diasFim=";
let idGraficoSessoes = "se";
let idNumTotalSessoes = "#numSessoesGrafComp";
let nomeSessoes = "Sessões";
let porcSesComp = "#porcSesComp";

atualizarDadosGraficoComparacoes(urlSessoesAgrupadas, urlComplse, 7, idGraficoSessoes, idNumTotalSessoes, nomeSessoes, porcSesComp); // grafico_comparacoes.js

$("#dropdown-comparacao .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	atualizarDadosGraficoComparacoes(urlSessoesAgrupadas, urlComplse, dias, idGraficoSessoes, idNumTotalSessoes, nomeSessoes, porcSesComp);
});
let urlVisualizacoesAgrupadas = "http://localhost:7070/tcc/dashboardData/numVisualizacoesAgrupadas/?diasInicio=";
let urlComplVis = "&diasFim="
let idGraficoVis = "vis";
let idNumTotalVis = "#numVisualizacoesGrafComp";
let nomeVisualizacoes = "Visualizações";
let porcVisComp = "#porcVisComp";

atualizarDadosGraficoComparacoes(urlVisualizacoesAgrupadas, urlComplVis, 7, idGraficoVis, idNumTotalVis, nomeVisualizacoes, porcVisComp); // grafico_comparacoes.js

$("#dropdown-comparacao .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	atualizarDadosGraficoComparacoes(urlVisualizacoesAgrupadas, urlComplVis, dias, idGraficoVis, idNumTotalVis, nomeVisualizacoes, porcVisComp);
});
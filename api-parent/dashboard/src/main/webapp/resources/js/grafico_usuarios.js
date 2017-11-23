let urlUsuariosAgrupadas = "http://localhost:7070/tcc/dashboardData/numUsuariosAgrupados/?diasInicio=";
let urlComplUs = "&diasFim="
let idGraficoUsuarios = "us";
let idNumTotalUsuarios = "#numUsuariosGrafComp";
let nomeUsuarios = "Usuários";
let porcUsComp = "#porcUsComp";

atualizarDadosGraficoComparacoes(urlUsuariosAgrupadas, urlComplUs, 7, idGraficoUsuarios, idNumTotalUsuarios, nomeUsuarios, porcUsComp); // grafico_comparacoes.js

$("#dropdown-comparacao .valor-dropdown").click(function() {
	let dias = $(this).attr("data-value");
	atualizarDadosGraficoComparacoes(urlUsuariosAgrupadas, urlComplUs, dias, idGraficoUsuarios, idNumTotalUsuarios, nomeUsuarios, porcUsComp);
});
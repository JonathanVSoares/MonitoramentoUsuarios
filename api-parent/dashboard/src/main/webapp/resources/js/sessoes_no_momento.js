function refreshNumSessoes() {
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/numSessoes/ultimosDias"
	}).done(function(data) {
		$("#numUsuariosGrafComparacoes").text(data);
	});
	
	$.ajax({
		url: "http://localhost:7070/tcc/dashboardData/numSessoes"
	}).done(function(data) {
		$("#numSessoes").text(data);
	});
}

$(document).ready(function(){
	refreshNumSessoes();
	
	setInterval(refreshNumSessoes, 10000);
});
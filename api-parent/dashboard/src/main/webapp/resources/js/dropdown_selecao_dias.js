function colocarValoresPadrao() {
	$(".dropdown-dias-escolhidos").each(function() {
		$(this).attr("data-value", 7);
		$(this).contents()[0].nodeValue = " Últimos 7 dias ";
	});
	
	$(".dropdown-dias").each(function() {
		$(this).find(".dropdown-dias-valor").first().hide();
	});
}

function atualizarValoresDropdown(elementoClicado) {
	let dropdown = elementoClicado.closest(".dropdown-dias");
	
	dropdown.find(".dropdown-dias-escolhidos").attr("data-value", elementoClicado.attr("data-value"));
	dropdown.find(".dropdown-dias-escolhidos").contents()[0].nodeValue = elementoClicado.text();

	dropdown.find(".dropdown-dias-valor").show();
	elementoClicado.closest(".dropdown-dias-valor").hide();
}

colocarValoresPadrao();

$(".valor-dropdown").click(function() {
	atualizarValoresDropdown($(this));
});
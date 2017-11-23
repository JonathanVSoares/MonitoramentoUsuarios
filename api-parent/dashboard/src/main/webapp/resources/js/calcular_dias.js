function calcularDiasAnteriores(dias) {
	let diasFinal = parseInt(dias) + parseInt(dias) - 1;
	return [parseInt(dias) - 1, diasFinal];
}
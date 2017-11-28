function pegarFiltros() {
	let filtros = {};
	filtros["acoes"] = $(".multSelectAcao").attr("title") == undefined || $(".multSelectAcao").attr("title") == "Ação"? "" : $(".multSelectAcao").attr("title").replace(" ", "");
	filtros["local"] = $(".multSelectLocal").attr("title") == undefined || $(".multSelectLocal").attr("title") == "Localização"? "" : $(".multSelectLocal").attr("title").replace(" ", "").replace("-", "");
	filtros["perm"] = getPerms();
	filtros["hora"] = $(".multSelectHora").attr("title") == undefined || $(".multSelectHora").attr("title") == "Horário"? "" : $(".multSelectHora").attr("title").replace(" ", "");
	
	return filtros;
}

function getPerms() {
	let textoPerms = $(".multSelectPerm").attr("title");
	let perms = "";
	
	if (textoPerms == undefined || textoPerms == "Permanência") {
		return perms;
	}
	
	if (textoPerms.includes("Menos que 1")) {
		perms += "0:1,";
	}
	if (textoPerms.includes("Entre 1 e 3")) {
		perms += "1:3,";
	}
	if (textoPerms.includes("Entre 3 e 5")) {
		perms += "3:5,";
	}
	if (textoPerms.includes("Entre 5 e 10")) {
		perms += "5:10,";
	}
	if (textoPerms.includes("Mais que 10")) {
		perms += "10:0,";
	}
	
	if (perms.length > 0) {
		perms = perms.slice(0, -1);
	}
	
	return perms;
}
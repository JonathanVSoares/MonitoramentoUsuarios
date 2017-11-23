function getCookie(cname) {
	var name = cname + "=";
	var decodedCookie = decodeURIComponent(document.cookie);
	var ca = decodedCookie.split(';');
	for(var i = 0; i <ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0) == ' ') {
			c = c.substring(1);
		}
		if (c.indexOf(name) == 0) {
			return c.substring(name.length, c.length);
		}
	}
	return "";
}

function hover(idElemento) {
	this.user = getCookie('Username');
	this.idElemento = idElemento;
	this.tipo = "hover";
}

function clique(idElemento) {
	this.user = getCookie('Username');
	this.idElemento = idElemento;
	this.tipo = "clique";
}

function inview(idElemento) {
	this.user = getCookie('Username');
	this.idElemento = idElemento;
	this.tempoTotal = 0;
	this.inview = false;
	this.tipo = "inview";
}

function tempoNavegacao() {
	this.user = getCookie('Username');
	this.tempoInicio = Date.now();
	this.tempoTotal = 0;
	this.tipo = "tempoEmPagina";
}

function navegacao() {
	this.user = getCookie('Username');
	this.tipo = "navegacao";
	this.horario = new Date();
	this.tipoDispositivo = getTipoDispositivo(this);
	this.browser = getBrowser();
	this.pagina = location.pathname != "" ? location.pathname : "/home";
	this.posicaoGeo = setPosition(this);
	this.resolutionHeight = screen.height;
	this.resolutionWidth = screen.width;
	this.os = getOs();
	this.idioma = getIdioma();
}

function wishlist(idElemento) {
	this.user = getCookie('Username');
	this.tipo = "wishlist";
	this.idElemento = idElemento;
}

function carrinho(idElemento) {
	this.user = getCookie('Username');
	this.tipo = "carrinho";
	this.idElemento = idElemento;
}

function eventos() {
	this.tempoEmTela = {};
	this.hovers = [];
	this.cliques = [];
	this.wishlists = [];
	this.carrinhos = [];
	this.tempoEmPagina = new tempoNavegacao();
}

function salvar(object, action) {
	if (jQuery.isEmptyObject(object))
		return;
	
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", "http://localhost:9090/tcc/" + action);
	xhttp.setRequestHeader("Content-Type", "application/json");
	xhttp.send(JSON.stringify(object));
}

function getBrowser() {
	let ua = navigator.userAgent;
	return /Edge\/\d+/.test(ua) ? 'Edge' : /MSIE 9/.test(ua) ? 'Internet Explorer 9' : /MSIE 10/.test(ua) ? 'Internet Explorer 10' :
		/MSIE 11/.test(ua) ? 'Internet Explorer 11' : /MSIE\s\d/.test(ua) ? 'Internet Explorer' : /rv\:11/.test(ua) ? 'Internet Explorer 11' :
			/Firefox\W\d/.test(ua) ? 'Mozilla Firefox' : /Chrome\W\d/.test(ua) ? 'Google Chrome' : /Chromium\W\d/.test(ua) ? 'Chromium' :
				/\bSafari\W\d/.test(ua) ? 'Safari' : /\bOpera\W\d/.test(ua) ? 'Opera' : /\bOPR\W\d/i.test(ua) ? 'Opera' : typeof MSPointerEvent !== 'undefined' ? 'Internet Explorer' : '';
}

function getOs() {
	let os = navigator.platform;
	return os.indexOf("Mac") != -1 ? "MAC" : os.indexOf("Linux") != -1 ? "LINUX" : os.indexOf("X11") != -1 ? "LINUX" : os.indexOf("Win") != -1 ? "WINDOWS" : "LINUX";
}

function getIdioma() {
	return navigator.language || navigator.userLanguage;
}

function getTipoDispositivo(infoNavegacao) {
	let ua = navigator.userAgent;
	
    mobile = /IEMobile|Windows Phone|Lumia/i.test(ua) ? 1 : /iPhone|iP[oa]d/.test(ua) ? 1 : /Android/.test(ua) ? 1 :
    	/BlackBerry|PlayBook|BB10/.test(ua) ? 1 : /Mobile Safari/.test(ua) ? 1 : /webOS|Mobile|Tablet|Opera Mini|\bCrMo\/|Opera Mobi/i.test(ua) ? 1 : 0;

    tablet = /Tablet|iPad/i.test(ua);
	
    if (tablet) {
    	return 'TABLET';
    } else if (mobile) {
    	return 'CELULAR';
    } else {
		navigator.getBattery().then(function(battery) {
    	    if (battery.charging && battery.chargingTime === 0) {
    	    	infoNavegacao.tipoDispositivo = "DESKTOP";
    	    } else {
    	    	infoNavegacao.tipoDispositivo = "NOTEBOOK";
    	    }
		});
		return "DESKTOP";
    }
}


function setPosition(infoNavegacao) {
	let posicaoGeo = null;
	if (navigator.geolocation) {
    	navigator.geolocation.getCurrentPosition(function(posicao) {
    		infoNavegacao.posicaoGeo = {
    				type: "Point",
    				coordinates: [
    					posicao.coords.latitude,
    					posicao.coords.longitude
    				]
    		};
	    });
	}
	return null;
}

$(document).ready(function(){ 
	
	var user = getCookie('Username');
	
	if (user == ''){
		var d = new Date();
		var date = d.getTime();
		d.setTime(d.getTime() + (60*24*60*60*1000));
		var expires = "expires="+ d.toUTCString();
		document.cookie = "Username=" + date + ";" + expires + ";path=/";
		user = date;
	}
	
	// salvar navegacao inicial
	let infoNavegacao = new navegacao();
	setTimeout(function() { salvar(infoNavegacao, "navegacao") }, 10000);
	
	
	// obj para salvar todos eventos
	let eventosASalvar = new eventos();
	
	function salvarEventos() {
		let nomeElementosVisiveis = [];
		
		for (let nomeElemento in eventosASalvar.tempoEmTela){
			let tempoEmTelaElemento = eventosASalvar.tempoEmTela[nomeElemento];
			if (eventosASalvar.tempoEmTela.hasOwnProperty(nomeElemento) && tempoEmTelaElemento.inview) {
				pararContagemInview(tempoEmTelaElemento);
				nomeElementosVisiveis.push(nomeElemento);
			}
		}
		
		salvar($.map(eventosASalvar.tempoEmTela, function(value, index) {return [value];}), "inview");
		salvar(eventosASalvar.hovers, "acao");
		salvar(eventosASalvar.cliques, "acao");
		salvar(eventosASalvar.wishlists, "acao");
		salvar(eventosASalvar.carrinhos, "acao");
		salvar(eventosASalvar.tempoEmPagina, "tempoEmPagina");
		
		eventosASalvar = new eventos();
		
		nomeElementosVisiveis.forEach(function(nomeElemento) {
			eventosASalvar.tempoEmTela[nomeElemento] = new inview(nomeElemento);
			iniciarContagemInview(eventosASalvar.tempoEmTela[nomeElemento]);
		});
	}
	setInterval(salvarEventos, 10000);


	// tempo de navegação
	let tempoEmPagina = new tempoNavegacao();
	
	$( window ).on('unload', function() {
		eventosASalvar.tempoEmPagina.tempoTotal = Date.now() - eventosASalvar.tempoEmPagina.tempoInicio;
		salvarEventos();
		
		// salva infoNavegacao caso não tenha sido salvo
		if (!infoNavegacao.salvo) {
			salvar(infoNavegacao, "navegacao");
		}
	});
	
	// secao para salvar acoes
	$(".produto-eeye").click(function() { eventosASalvar.cliques.push(new clique($(this).attr('title'))) })
	$(".add-wishlist-produto").click(function() { eventosASalvar.wishlists.push(new wishlist($(this).attr('title'))) });
	$(".add-carrinho-produto").click(function() { eventosASalvar.carrinhos.push(new carrinho($(this).attr('title'))) });
	
	let setTimeoutConst;
	$(".produto-eeye").hover(
		function() {
			let nomeElemento = $(this).attr('title');
			setTimeoutConst = setTimeout(function() {
				console.log(nomeElemento);
				eventosASalvar.hovers.push(new hover(nomeElemento));
			}, 2000);
		},function(){
			clearTimeout(setTimeoutConst);
	   	}
	);
	

	// seção para salvar elementos que estão sendo vistos
	function iniciarContagemInview(elemento) {
		elemento["horarioInicioInview"] = Date.now();
		elemento["inview"] = true;
	}
	
	function pararContagemInview(elemento) {
		elemento["tempoTotal"] += Date.now() - elemento["horarioInicioInview"];
		elemento["horarioInicioInview"] = undefined;
	}

	$(".produto-eeye").on("inview", function(event, isInView) {
		let nomeElemento = $(this).attr("title");
		
		if (eventosASalvar["tempoEmTela"][nomeElemento] == undefined) {
			eventosASalvar["tempoEmTela"][nomeElemento] = new inview(nomeElemento);
		}
		
		let tempoEmTelaElemento = eventosASalvar["tempoEmTela"][nomeElemento];
		
		if (isInView) {
			iniciarContagemInview(eventosASalvar.tempoEmTela[nomeElemento]);
		} else {
			pararContagemInview(tempoEmTelaElemento);
			tempoEmTelaElemento["inview"] = false;
		}
	});


	// parar contagem quando pagina sair de foco
	$(window).blur(function() {
		for (let nomeElemento in eventosASalvar["tempoEmTela"]) {
			if (eventosASalvar["tempoEmTela"].hasOwnProperty(nomeElemento)) {
				let tempoEmTelaElemento = eventosASalvar["tempoEmTela"][nomeElemento];
				if (["inview"]) {
					pararContagemInview(tempoEmTelaElemento);
				}
			}
		}
	});

	// voltar contagem quando pagina voltar ao foco
	$(window).focus(function() {
		for (var nomeElemento in eventosASalvar["tempoEmTela"]) {
			if (eventosASalvar["tempoEmTela"].hasOwnProperty(nomeElemento)) {
				let tempoEmTelaElemento = eventosASalvar["tempoEmTela"][nomeElemento];
				if (tempoEmTelaElemento["inview"]) {
					tempoEmTelaElemento["horarioInicioInview"] = Date.now();
				}
			}
		}
	});
	
});
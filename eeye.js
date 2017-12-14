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
	this.horario = new Date();
}

function clique(idElemento) {
	this.user = getCookie('Username');
	this.idElemento = idElemento;
	this.tipo = "clique";
	this.horario = new Date();
}

function inview(idElemento) {
	this.user = getCookie('Username');
	this.idElemento = idElemento;
	this.tempoTotal = 0;
	this.inview = false;
	this.tipo = "inview";
	this.horario = new Date();
}

function tempoNavegacao() {
	this.user = getCookie('Username');
	this.tempoInicio = Date.now();
	this.tempoTotal = 0;
	this.tipo = "tempoEmPagina";
}

function wishlist(idElemento) {
	this.user = getCookie('Username');
	this.tipo = "wishlist";
	this.idElemento = idElemento;
	this.horario = new Date();
}

function carrinho(idElemento) {
	this.user = getCookie('Username');
	this.tipo = "carrinho";
	this.idElemento = idElemento;
	this.horario = new Date();
}

function pesquisa(idElemento) {
	this.user = getCookie('Username');
	this.tipo = "pesquisa";
	this.idElemento = idElemento;
	this.horario = new Date();
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
	return /Edge\/\d+/.test(ua) ? 'Explorer' : /MSIE 9/.test(ua) ? 'Explorer' : /MSIE 10/.test(ua) ? 'Explorer' :
		/MSIE 11/.test(ua) ? 'Explorer' : /MSIE\s\d/.test(ua) ? 'Explorer' : /rv\:11/.test(ua) ? 'Explorer' :
			/Firefox\W\d/.test(ua) ? 'Firefox' : /Chrome\W\d/.test(ua) ? 'Chrome' : /Chromium\W\d/.test(ua) ? 'Chrome' :
				/\bSafari\W\d/.test(ua) ? 'Safari' : /\bOpera\W\d/.test(ua) ? 'Opera' : /\bOPR\W\d/i.test(ua) ? 'Opera' : typeof MSPointerEvent !== 'Explorer' ? 'Explorer' : '';
}

function getOs() {
	if (/android/i.test(navigator.userAgent)) {
		return "Android";
	}
	
	let os = navigator.platform;
	return os.indexOf("Mac") != -1 ? "Apple" : os.indexOf("Linux") != -1 ? "Linux" : os.indexOf("X11") != -1 ? "Linux" : os.indexOf("Win") != -1 ? "Windows" : "Linux";
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

// Pesquisa
function salvarPesquisa() {
	let textoPesquisa = $("#pesq").val();
	let objPesquisa = new pesquisa(textoPesquisa);
	
	salvar(objPesquisa, "acao/unico");
}

function salvarCarrinho() {
	let nomeProduto = $("#nome-produto-eeye").text();

	let objCarrinho = new carrinho(nomeProduto);
	salvar(objCarrinho, "acao/unico");
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

var eeyeMD5 = function(s){function L(k,d){return(k<<d)|(k>>>(32-d))}function K(G,k){var I,d,F,H,x;F=(G&2147483648);H=(k&2147483648);I=(G&1073741824);d=(k&1073741824);x=(G&1073741823)+(k&1073741823);if(I&d){return(x^2147483648^F^H)}if(I|d){if(x&1073741824){return(x^3221225472^F^H)}else{return(x^1073741824^F^H)}}else{return(x^F^H)}}function r(d,F,k){return(d&F)|((~d)&k)}function q(d,F,k){return(d&k)|(F&(~k))}function p(d,F,k){return(d^F^k)}function n(d,F,k){return(F^(d|(~k)))}function u(G,F,aa,Z,k,H,I){G=K(G,K(K(r(F,aa,Z),k),I));return K(L(G,H),F)}function f(G,F,aa,Z,k,H,I){G=K(G,K(K(q(F,aa,Z),k),I));return K(L(G,H),F)}function D(G,F,aa,Z,k,H,I){G=K(G,K(K(p(F,aa,Z),k),I));return K(L(G,H),F)}function t(G,F,aa,Z,k,H,I){G=K(G,K(K(n(F,aa,Z),k),I));return K(L(G,H),F)}function e(G){var Z;var F=G.length;var x=F+8;var k=(x-(x%64))/64;var I=(k+1)*16;var aa=Array(I-1);var d=0;var H=0;while(H<F){Z=(H-(H%4))/4;d=(H%4)*8;aa[Z]=(aa[Z]| (G.charCodeAt(H)<<d));H++}Z=(H-(H%4))/4;d=(H%4)*8;aa[Z]=aa[Z]|(128<<d);aa[I-2]=F<<3;aa[I-1]=F>>>29;return aa}function B(x){var k="",F="",G,d;for(d=0;d<=3;d++){G=(x>>>(d*8))&255;F="0"+G.toString(16);k=k+F.substr(F.length-2,2)}return k}function J(k){k=k.replace(/rn/g,"n");var d="";for(var F=0;F<k.length;F++){var x=k.charCodeAt(F);if(x<128){d+=String.fromCharCode(x)}else{if((x>127)&&(x<2048)){d+=String.fromCharCode((x>>6)|192);d+=String.fromCharCode((x&63)|128)}else{d+=String.fromCharCode((x>>12)|224);d+=String.fromCharCode(((x>>6)&63)|128);d+=String.fromCharCode((x&63)|128)}}}return d}var C=Array();var P,h,E,v,g,Y,X,W,V;var S=7,Q=12,N=17,M=22;var A=5,z=9,y=14,w=20;var o=4,m=11,l=16,j=23;var U=6,T=10,R=15,O=21;s=J(s);C=e(s);Y=1732584193;X=4023233417;W=2562383102;V=271733878;for(P=0;P<C.length;P+=16){h=Y;E=X;v=W;g=V;Y=u(Y,X,W,V,C[P+0],S,3614090360);V=u(V,Y,X,W,C[P+1],Q,3905402710);W=u(W,V,Y,X,C[P+2],N,606105819);X=u(X,W,V,Y,C[P+3],M,3250441966);Y=u(Y,X,W,V,C[P+4],S,4118548399);V=u(V,Y,X,W,C[P+5],Q,1200080426);W=u(W,V,Y,X,C[P+6],N,2821735955);X=u(X,W,V,Y,C[P+7],M,4249261313);Y=u(Y,X,W,V,C[P+8],S,1770035416);V=u(V,Y,X,W,C[P+9],Q,2336552879);W=u(W,V,Y,X,C[P+10],N,4294925233);X=u(X,W,V,Y,C[P+11],M,2304563134);Y=u(Y,X,W,V,C[P+12],S,1804603682);V=u(V,Y,X,W,C[P+13],Q,4254626195);W=u(W,V,Y,X,C[P+14],N,2792965006);X=u(X,W,V,Y,C[P+15],M,1236535329);Y=f(Y,X,W,V,C[P+1],A,4129170786);V=f(V,Y,X,W,C[P+6],z,3225465664);W=f(W,V,Y,X,C[P+11],y,643717713);X=f(X,W,V,Y,C[P+0],w,3921069994);Y=f(Y,X,W,V,C[P+5],A,3593408605);V=f(V,Y,X,W,C[P+10],z,38016083);W=f(W,V,Y,X,C[P+15],y,3634488961);X=f(X,W,V,Y,C[P+4],w,3889429448);Y=f(Y,X,W,V,C[P+9],A,568446438);V=f(V,Y,X,W,C[P+14],z,3275163606);W=f(W,V,Y,X,C[P+3],y,4107603335);X=f(X,W,V,Y,C[P+8],w,1163531501);Y=f(Y,X,W,V,C[P+13],A,2850285829);V=f(V,Y,X,W,C[P+2],z,4243563512);W=f(W,V,Y,X,C[P+7],y,1735328473);X=f(X,W,V,Y,C[P+12],w,2368359562);Y=D(Y,X,W,V,C[P+5],o,4294588738);V=D(V,Y,X,W,C[P+8],m,2272392833);W=D(W,V,Y,X,C[P+11],l,1839030562);X=D(X,W,V,Y,C[P+14],j,4259657740);Y=D(Y,X,W,V,C[P+1],o,2763975236);V=D(V,Y,X,W,C[P+4],m,1272893353);W=D(W,V,Y,X,C[P+7],l,4139469664);X=D(X,W,V,Y,C[P+10],j,3200236656);Y=D(Y,X,W,V,C[P+13],o,681279174);V=D(V,Y,X,W,C[P+0],m,3936430074);W=D(W,V,Y,X,C[P+3],l,3572445317);X=D(X,W,V,Y,C[P+6],j,76029189);Y=D(Y,X,W,V,C[P+9],o,3654602809);V=D(V,Y,X,W,C[P+12],m,3873151461);W=D(W,V,Y,X,C[P+15],l,530742520);X=D(X,W,V,Y,C[P+2],j,3299628645);Y=t(Y,X,W,V,C[P+0],U,4096336452);V=t(V,Y,X,W,C[P+7],T,1126891415);W=t(W,V,Y,X,C[P+14],R,2878612391);X=t(X,W,V,Y,C[P+5],O,4237533241);Y=t(Y,X,W,V,C[P+12],U,1700485571);V=t(V,Y,X,W,C[P+3],T,2399980690);W=t(W,V,Y,X,C[P+10],R,4293915773);X=t(X,W,V,Y,C[P+1],O,2240044497);Y=t(Y,X,W,V,C[P+8],U,1873313359);V=t(V,Y,X,W,C[P+15],T,4264355552);W=t(W,V,Y,X,C[P+6],R,2734768916);X=t(X,W,V,Y,C[P+13],O,1309151649);Y=t(Y,X,W,V,C[P+4],U,4149444226);V=t(V,Y,X,W,C[P+11],T,3174756917);W=t(W,V,Y,X,C[P+2],R,718787259);X=t(X,W,V,Y,C[P+9],O,3951481745);Y=K(Y,h);X=K(X,E);W=K(W,v);V=K(V,g)}var i=B(Y)+B(X)+B(W)+B(V);return i.toLowerCase()};

$(document).ready(function(){
	
	var user = getCookie('Username');
	
	if (user == ''){
		var d = new Date();
		var date = d.getTime();
		d.setTime(d.getTime() + (60*24*60*60*1000));
		var expires = "expires="+ d.toUTCString();
		document.cookie = "Username=" + (eeyeMD5(date.toString())) + ";" + expires + ";path=/";
		user = date;
	}
	
	// salvar navegacao
	let infoNavegacao = new navegacao();
	setTimeout(function() {
		salvar(infoNavegacao, "navegacao");
		infoNavegacao.salvo = true;
	}, 10000);
	
	
	// obj para salvar todos eventos
	let eventosASalvar = new eventos();
	
	function salvarEventos() {
		let nomeElementosVisiveis = [];
		
		for (let nomeElemento in eventosASalvar.tempoEmTela){
			let tempoEmTelaElemento = eventosASalvar.tempoEmTela[nomeElemento];
			if (eventosASalvar.tempoEmTela.hasOwnProperty(nomeElemento) && tempoEmTelaElemento.inview) {
				pararContagemInview(tempoEmTelaElemento);
				if (Number.isInteger(tempoEmTelaElemento["tempoTotal"]) && tempoEmTelaElemento["tempoTotal"] > 0) {
					nomeElementosVisiveis.push(nomeElemento);
				} else {
					delete eventosASalvar.tempoEmTela[nomeElemento];
				}
			}
		}
		
		salvar($.map(eventosASalvar.tempoEmTela, function(value, index) {return [value];}), "inview");
		salvar(eventosASalvar.hovers, "acao");
		salvar(eventosASalvar.cliques, "acao");
		salvar(eventosASalvar.wishlists, "acao");
		salvar(eventosASalvar.carrinhos, "acao");
		
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

		if (eventosASalvar.tempoEmPagina.tempoTotal !== 0) {
			salvar(eventosASalvar.tempoEmPagina, "tempoEmPagina");
		}
		
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
	
	// Pesquisa
	$("#botaoPesquisaEeye").click(function() {
		salvarPesquisa();
	});
	
	// Carrinho
	$(".formulario-carrinho-eeye").submit(function() {
		salvarCarrinho();
	})

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
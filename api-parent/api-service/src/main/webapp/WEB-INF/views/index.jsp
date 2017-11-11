
<!DOCTYPE html>
<!--
========================================================================
Olá. Obrigado por mostrar interesse em nosso código fonte.
Talvez você gostaria de se juntar à nossa equipe?
Para saber mais, visite: https://www.lojaskd.com.br/trabalhe-conosco/
========================================================================
-->
<html lang="pt-br">
<head>
<link rel="manifest" href="/manifest.json">
<script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async> </script>
<script> 
var OneSignal = window.OneSignal || [];
OneSignal.push(["init", {
appId: '305f4077-3a6c-46c5-a59f-c14f2d27221d',
autoRegister: false,
notifyButton: {
enable: true, 
size: 'small',
position: 'bottom-left',
modalPrompt: true,
showCredit: false,
text: {
'tip.state.unsubscribed': 'Inscrever-se para receber notificações',
'tip.state.subscribed': 'Não quero receber notificações',
'tip.state.blocked': 'Você bloqueou as notificações',
'message.prenotify': 'Clique para receber notificações',
'message.action.subscribed': 'Obrigado por se inscrever!',
'message.action.resubscribed': 'Você se inscreveu para receber notificações',
'message.action.unsubscribed': 'Você não receberá notificações novamente',
'dialog.main.title': 'Gerenciar notificações',
'dialog.main.button.subscribe': 'INSCREVER-SE',
'dialog.main.button.unsubscribe': 'NÃO RECEBER MAIS NOTIFICAÇÕES',
'dialog.blocked.title': 'LojasKD:',
'dialog.blocked.message': 'Siga as instruções e receba nossas notificações'
}
},
welcomeNotification: {
title: 'LojasKD',
message : 'Obrigado por se inscrever!'
}
}]);</script>
<link rel="icon" href="/favicons/favicon.ico">
<title>LojasKD: Sua Loja de Móveis Online!</title>
<meta charset="utf-8">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VQIBUFdWCRADVlNVBAQPUQ=="};window.NREUM||(NREUM={}),__nr_require=function(t,n,e){function r(e){if(!n[e]){var o=n[e]={exports:{}};t[e][0].call(o.exports,function(n){var o=t[e][1][n];return r(o||n)},o,o.exports)}return n[e].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<e.length;o++)r(e[o]);return r}({1:[function(t,n,e){function r(t){try{s.console&&console.log(t)}catch(n){}}var o,i=t("ee"),a=t(15),s={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,o.indexOf("dev")!==-1&&(s.dev=!0),o.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&i.on("internal-error",function(t){r(t.stack)}),s.dev&&i.on("fn-err",function(t,n,e){r(e.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,n){return t}).join(", ")))},{}],2:[function(t,n,e){function r(t,n,e,r,o){try{d?d-=1:i("err",[o||new UncaughtException(t,n,e)])}catch(s){try{i("ierr",[s,c.now(),!0])}catch(u){}}return"function"==typeof f&&f.apply(this,a(arguments))}function UncaughtException(t,n,e){this.message=t||"Uncaught error with no additional information",this.sourceURL=n,this.line=e}function o(t){i("err",[t,c.now()])}var i=t("handle"),a=t(16),s=t("ee"),c=t("loader"),f=window.onerror,u=!1,d=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(l){"stack"in l&&(t(8),t(7),"addEventListener"in window&&t(5),c.xhrWrappable&&t(9),u=!0)}s.on("fn-start",function(t,n,e){u&&(d+=1)}),s.on("fn-err",function(t,n,e){u&&(this.thrown=!0,o(e))}),s.on("fn-end",function(){u&&!this.thrown&&d>0&&(d-=1)}),s.on("internal-error",function(t){i("ierr",[t,c.now(),!0])})},{}],3:[function(t,n,e){t("loader").features.ins=!0},{}],4:[function(t,n,e){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(8),s=t(7),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",y="pushState",g=t("loader");g.features.stn=!0,t(6);var b=NREUM.o.EV;o.on(m,function(t,n){var e=t[0];e instanceof b&&(this.bstStart=g.now())}),o.on(w,function(t,n){var e=t[0];e instanceof b&&i("bst",[e,n,this.bstStart,g.now()])}),a.on(m,function(t,n,e){this.bstStart=g.now(),this.bstType=e}),a.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),this.bstType])}),s.on(m,function(){this.bstStart=g.now()}),s.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),"requestAnimationFrame"])}),o.on(y+p,function(t){this.time=g.now(),this.startPath=location.pathname+location.hash}),o.on(y+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,n,e){function r(t){for(var n=t;n&&!n.hasOwnProperty(u);)n=Object.getPrototypeOf(n);n&&o(n)}function o(t){s.inPlace(t,[u,d],"-",i)}function i(t,n){return t[1]}var a=t("ee").get("events"),s=t(18)(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";n.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,n){var e=t[1],r=c(e,"nr@wrapped",function(){function t(){if("function"==typeof e.handleEvent)return e.handleEvent.apply(e,arguments)}var n={object:t,"function":e}[typeof e];return n?s(n,"fn-",null,n.name||"anonymous"):e});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,n,e){var r=t("ee").get("history"),o=t(18)(r);n.exports=r,o.inPlace(window.history,["pushState","replaceState"],"-")},{}],7:[function(t,n,e){var r=t("ee").get("raf"),o=t(18)(r),i="equestAnimationFrame";n.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],8:[function(t,n,e){function r(t,n,e){t[0]=a(t[0],"fn-",null,e)}function o(t,n,e){this.method=e,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,e)}var i=t("ee").get("timer"),a=t(18)(i),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";n.exports=i,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(c+u,r),i.on(s+u,o)},{}],9:[function(t,n,e){function r(t,n){d.inPlace(n,["onreadystatechange"],"fn-",s)}function o(){var t=this,n=u.context(t);t.readyState>3&&!n.resolved&&(n.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,y,"fn-",s)}function i(t){g.push(t),h&&(x?x.then(a):w?w(a):(E=-E,O.data=E))}function a(){for(var t=0;t<g.length;t++)r([],g[t]);g.length&&(g=[])}function s(t,n){return n}function c(t,n){for(var e in t)n[e]=t[e];return n}t(5);var f=t("ee"),u=f.get("xhr"),d=t(18)(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",y=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],g=[];n.exports=u;var b=window.XMLHttpRequest=function(t){var n=new p(t);try{u.emit("new-xhr",[n],n),n.addEventListener(v,o,!1)}catch(e){try{u.emit("internal-error",[e])}catch(r){}}return n};if(c(p,b),b.prototype=p.prototype,d.inPlace(b.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,n){r(t,n),i(n)}),u.on("open-xhr-start",r),h){var x=m&&m.resolve();if(!w&&!m){var E=1,O=document.createTextNode(E);new h(a).observe(O,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],10:[function(t,n,e){function r(t){var n=this.params,e=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<d;r++)t.removeEventListener(u[r],this.listener,!1);if(!n.aborted){if(e.duration=a.now()-this.startTime,4===t.readyState){n.status=t.status;var i=o(t,this.lastSize);if(i&&(e.rxSize=i),this.sameOrigin){var c=t.getResponseHeader("X-NewRelic-App-Data");c&&(n.cat=c.split(", ").pop())}}else n.status=0;e.cbTime=this.cbTime,f.emit("xhr-done",[t],t),s("xhr",[n,e,this.startTime])}}}function o(t,n){var e=t.responseType;if("json"===e&&null!==n)return n;var r="arraybuffer"===e||"blob"===e||"json"===e?t.response:t.responseText;return h(r)}function i(t,n){var e=c(n),r=t.params;r.host=e.hostname+":"+e.port,r.pathname=e.pathname,t.sameOrigin=e.sameOrigin}var a=t("loader");if(a.xhrWrappable){var s=t("handle"),c=t(11),f=t("ee"),u=["load","error","abort","timeout"],d=u.length,l=t("id"),p=t(14),h=t(13),m=window.XMLHttpRequest;a.features.xhr=!0,t(9),f.on("new-xhr",function(t){var n=this;n.totalCbs=0,n.called=0,n.cbTime=0,n.end=r,n.ended=!1,n.xhrGuids={},n.lastSize=null,p&&(p>34||p<10)||window.opera||t.addEventListener("progress",function(t){n.lastSize=t.loaded},!1)}),f.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),f.on("open-xhr-end",function(t,n){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&n.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),f.on("send-xhr-start",function(t,n){var e=this.metrics,r=t[0],o=this;if(e&&r){var i=h(r);i&&(e.txSize=i)}this.startTime=a.now(),this.listener=function(t){try{"abort"===t.type&&(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof n.onload))&&o.end(n)}catch(e){try{f.emit("internal-error",[e])}catch(r){}}};for(var s=0;s<d;s++)n.addEventListener(u[s],this.listener,!1)}),f.on("xhr-cb-time",function(t,n,e){this.cbTime+=t,n?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof e.onload||this.end(e)}),f.on("xhr-load-added",function(t,n){var e=""+l(t)+!!n;this.xhrGuids&&!this.xhrGuids[e]&&(this.xhrGuids[e]=!0,this.totalCbs+=1)}),f.on("xhr-load-removed",function(t,n){var e=""+l(t)+!!n;this.xhrGuids&&this.xhrGuids[e]&&(delete this.xhrGuids[e],this.totalCbs-=1)}),f.on("addEventListener-end",function(t,n){n instanceof m&&"load"===t[0]&&f.emit("xhr-load-added",[t[1],t[2]],n)}),f.on("removeEventListener-end",function(t,n){n instanceof m&&"load"===t[0]&&f.emit("xhr-load-removed",[t[1],t[2]],n)}),f.on("fn-start",function(t,n,e){n instanceof m&&("onload"===e&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),f.on("fn-end",function(t,n){this.xhrCbStart&&f.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,n],n)})}},{}],11:[function(t,n,e){n.exports=function(t){var n=document.createElement("a"),e=window.location,r={};n.href=t,r.port=n.port;var o=n.href.split("://");!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=n.hostname||e.hostname,r.pathname=n.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname);var i=!n.protocol||":"===n.protocol||n.protocol===e.protocol,a=n.hostname===document.domain&&n.port===e.port;return r.sameOrigin=i&&(!n.hostname||a),r}},{}],12:[function(t,n,e){function r(){}function o(t,n,e){return function(){return i(t,[f.now()].concat(s(arguments)),n?null:this,e),n?void 0:this}}var i=t("handle"),a=t(15),s=t(16),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,n){u[n]=o(l+n,!0,"api")}),u.addPageAction=o(l+"addPageAction",!0),u.setCurrentRouteName=o(l+"routeName",!0),n.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,n){var e={},r=this,o="function"==typeof n;return i(p+"tracer",[f.now(),t,e],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],e),o)try{return n.apply(this,arguments)}finally{c.emit("fn-end",[f.now()],e)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,n){h[n]=o(p+n)}),newrelic.noticeError=function(t){"string"==typeof t&&(t=new Error(t)),i("err",[t,f.now()])}},{}],13:[function(t,n,e){n.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(n){return}}}},{}],14:[function(t,n,e){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),n.exports=r},{}],15:[function(t,n,e){function r(t,n){var e=[],r="",i=0;for(r in t)o.call(t,r)&&(e[i]=n(r,t[r]),i+=1);return e}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],16:[function(t,n,e){function r(t,n,e){n||(n=0),"undefined"==typeof e&&(e=t?t.length:0);for(var r=-1,o=e-n||0,i=Array(o<0?0:o);++r<o;)i[r]=t[n+r];return i}n.exports=r},{}],17:[function(t,n,e){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],18:[function(t,n,e){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(16),a="nr@original",s=Object.prototype.hasOwnProperty,c=!1;n.exports=function(t,n){function e(t,n,e,o){function nrWrapper(){var r,a,s,c;try{a=this,r=i(arguments),s="function"==typeof e?e(r,a):e||{}}catch(f){l([f,"",[r,a,o],s])}u(n+"start",[r,a,o],s);try{return c=t.apply(a,r)}catch(d){throw u(n+"err",[r,a,d],s),d}finally{u(n+"end",[r,a,c],s)}}return r(t)?t:(n||(n=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,n,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<n.length;c++)s=n[c],a=t[s],r(a)||(t[s]=e(a,f?s+o:o,i,s))}function u(e,r,o){if(!c||n){var i=c;c=!0;try{t.emit(e,r,o,n)}catch(a){l([a,e,r,o])}c=i}}function d(t,n){if(Object.defineProperty&&Object.keys)try{var e=Object.keys(t);return e.forEach(function(e){Object.defineProperty(n,e,{get:function(){return t[e]},set:function(n){return t[e]=n,n}})}),n}catch(r){l([r])}for(var o in t)s.call(t,o)&&(n[o]=t[o]);return n}function l(n){try{t.emit("internal-error",n)}catch(e){}}return t||(t=o),e.inPlace=f,e.flag=a,e}},{}],ee:[function(t,n,e){function r(){}function o(t){function n(t){return t&&t instanceof r?t:t?c(t,s,i):i()}function e(e,r,o,i){if(!l.aborted||i){t&&t(e,r,o);for(var a=n(o),s=h(e),c=s.length,f=0;f<c;f++)s[f].apply(a,r);var d=u[y[e]];return d&&d.push([g,e,r,a]),a}}function p(t,n){v[t]=h(t).concat(n)}function h(t){return v[t]||[]}function m(t){return d[t]=d[t]||o(e)}function w(t,n){f(t,function(t,e){n=n||"feature",y[e]=n,n in u||(u[n]=[])})}var v={},y={},g={on:p,emit:e,get:m,listeners:h,context:n,buffer:w,abort:a,aborted:!1};return g}function i(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var s="nr@context",c=t("gos"),f=t(15),u={},d={},l=n.exports=o();l.backlog=u},{}],gos:[function(t,n,e){function r(t,n,e){if(o.call(t,n))return t[n];var r=e();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(t,n,e){function r(t,n,e,r){o.buffer([t],r),o.emit(t,n,e)}var o=t("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(t,n,e){function r(t){var n=typeof t;return!t||"object"!==n&&"function"!==n?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");n.exports=r},{}],loader:[function(t,n,e){function r(){if(!x++){var t=b.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&n))return u.abort();f(y,function(n,e){t[n]||(t[n]=e)}),c("mark",["onload",a()+b.offset],null,"api");var e=l.createElement("script");e.src="https://"+t.agent,n.parentNode.insertBefore(e,n)}}function o(){"complete"===l.readyState&&i()}function i(){c("mark",["domContent",a()+b.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(s=Math.max((new Date).getTime(),s))-b.offset}var s=(new Date).getTime(),c=t("handle"),f=t(15),u=t("ee"),d=window,l=d.document,p="addEventListener",h="attachEvent",m=d.XMLHttpRequest,w=m&&m.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:m,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1044.min.js"},g=m&&w&&w[p]&&!/CriOS/.test(navigator.userAgent),b=n.exports={offset:s,now:a,origin:v,features:{},xhrWrappable:g};t(12),l[p]?(l[p]("DOMContentLoaded",i,!1),d[p]("load",r,!1)):(l[h]("onreadystatechange",o),d[h]("onload",r)),c("mark",["firstbyte",s],null,"api");var x=0,E=t(17)},{}]},{},["loader",2,10,4,3]);</script>
<meta http-equiv="Content-Language" content="pt-br">
<meta property="og:title" content="LojasKD: Sua Loja de Móveis Online!">
<meta property="og:type" content="website">
<meta name="twitter:card" content="app">
<meta name="twitter:title"
	content="LojasKD: Sua Loja de Móveis Online!">
<meta name="twitter:site" content="@lojaskd">
<meta name="description"
	content="LojasKD, a maior loja de móveis online com os melhores preços para você mobiliar e decorar sua casa! Sua satisfação ? nossa maior alegria!">
<meta property="og:description"
	content="LojasKD, a maior loja de móveis online com os melhores preços para você mobiliar e decorar sua casa! Sua satisfação ? nossa maior alegria!">
<meta name="twitter:description"
	content="LojasKD, a maior loja de móveis online com os melhores preços para você mobiliar e decorar sua casa! Sua satisfação ? nossa maior alegria!">
<meta property="og:site_name" content="LojasKD">
<meta property="og:image"
	content="//assets.lojaskd.com.br/releases/production/dist/images/lkd-share.jpg">
<meta property="og:image:secure_url"
	content="//assets.lojaskd.com.br/releases/production/dist/images/lkd-share.jpg">
<meta name="twitter:image"
	content="//assets.lojaskd.com.br/releases/production/dist/images/lkd-share.jpg">
<meta name="abstract" content="Loja Virtual, móveis online">
<meta name="classification" content="online store">
<meta name="country" content="Brazil">
<meta name="google-site-verification"
	content="DHvI4r4IAA8UXmFgutY1KU-rnJrEF8nxEPRoxDBtTJ0">
<meta name="p:domain_verify" content="25e4cb5934662231a559341cb54eac02">
<link rel="canonical" href="https://www.lojaskd.com.br/">
<meta property="og:url" content="https://www.lojaskd.com.br/">
<script> 
var facebook_id = '1805557119678625';
var assets_cdn = '//assets.lojaskd.com.br/releases/production/';
var deploy_version = '29092017043322';
var deviceType = 'desktop';</script>
<link rel="stylesheet"
	href="//assets.lojaskd.com.br/releases/production/dist/stylesheets/lkd-icons.min.css?v=29092017043322">
<style type="text/css"> /**
* @lojaskd/gulp-tasks - Gulp tasks for use in LojasKD projects
* @version v1.4.3
* @license MIT
* @copyright 2016 LojasKD development team <ti@lojaskd.com.br> .
* @link https://github.com/LojasKD/gulp-tasks#readme
*/
@charset "UTF-8"; 

#notify_when_available_form:after, .box-youtube:after, .chamadaSobre:after,
	.clearfix:after, .container:after, .divOpiniao #cadastrarComentarioBox-formulario .item:after,
	.limit:after, .lkd-alert:after, .lkd-container:after, .lkd-form .lkd-form__input-group:after,
	.lkd-header:after, .lkd-helpcenter .lkd-helpcenter__vertical-tabs-container.is-loading:after,
	.lkd-helpcenter .lkd-helpcenter__vertical-tabs.is-loading:after,
	.lkd-helpcenter:after, .lkd-helpcenter__article-heading:after,
	.lkd-helpcenter__category:after, .lkd-helpcenter__heading:after,
	.lkd-nav:after, .lkd-navbar:after, .lkd-topbar:after,
	.lkd-vertical-content:after, .miniLista .item:after, .owl-pagination .owl-wrapper:after,
	.products-showcase-similar:after, .products-showcase:after, .vitrine:after
	{
	clear: both;
	content: "";
	display: table
}

.kr-visually-hidden {
	position: absolute !important;
	border: 0 !important;
	clip: rect(0, 0, 0, 0) !important;
	width: 1px !important;
	height: 1px !important;
	margin: -1px !important;
	padding: 0 !important;
	overflow: hidden !important
}

.kr-focusable.is-focused, .kr-focusable:focus {
	-webkit-box-shadow: 0 0 0 2px color(blue, medium, .7);
	box-shadow: 0 0 0 2px color(blue, medium, .7);
	outline: none
}

.kr-focusable-inline.is-focused, .kr-focusable-inline:focus {
	text-decoration: underline
}

.kr-accessibility-aid {
	position: absolute;
	width: 1px;
	height: 1px;
	margin: 0;
	overflow: hidden;
	z-index: -1;
	clip: rect(1px, 1px, 1px, 1px)
}

.kr-accessibility-aid:focus {
	top: 0;
	z-index: 10000;
	width: auto;
	height: auto;
	padding: 0 20px;
	clip: auto;
	font-weight: 700;
	line-height: 50px;
	color: #424242;
	text-decoration: none;
	background: #e1e1e1
}

.lkd-customer-navbar__username, .lkd-ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap
}

.flt_container_indique .form_indique label, .lkd-form__group {
	width: 100%;
	display: block;
	margin: 0;
	position: relative;
	font-size: 1.143rem
}

.flt_container_indique .form_indique label:after, .lkd-form__group:after
	{
	clear: both;
	content: "";
	display: table
}

.flt_container_indique .form_indique label:not (:last-child ),
	.lkd-form__group:not (:last-child ){
	margin-bottom: 15px
}

#notify_when_available_form input[type=email],
	#notify_when_available_form input[type=text], .filter-bar .filter-order select,
	.filter-bar .filter-select select, .flt_container_indique .form_indique input[type=text],
	.flt_container_indique .form_indique textarea,
	.lkd-description__variants-select, .lkd-form__input, .lkd-form__select,
	.lkd-form__textarea, .lkd-helpcenter__search input, .lkd-search-form>.lkd-search-form__input
	{
	width: 100%;
	display: block;
	cursor: text;
	background-color: #fff;
	background-image: none;
	background-clip: padding-box;
	border: 1px solid #ccc;
	border-radius: 8px;
	line-height: 1.42857143;
	height: 40px;
	color: #424242;
	padding: 10px 15px;
	font-family: inherit;
	font-size: inherit;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	-webkit-transition: box-shadow .15s ease-in-out;
	-webkit-transition: -webkit-box-shadow .15s ease-in-out;
	transition: -webkit-box-shadow .15s ease-in-out;
	transition: box-shadow .15s ease-in-out;
	transition: box-shadow .15s ease-in-out, -webkit-box-shadow .15s
		ease-in-out
}

#notify_when_available_form input[type=email]:focus,
	#notify_when_available_form input[type=text]:focus, .filter-bar .filter-order select:focus,
	.filter-bar .filter-select select:focus, .flt_container_indique .form_indique input[type=text]:focus,
	.flt_container_indique .form_indique textarea:focus,
	.lkd-description__variants-select:focus, .lkd-form__input:focus,
	.lkd-form__select:focus, .lkd-form__textarea:focus,
	.lkd-helpcenter__search input:focus, .lkd-search-form>.lkd-search-form__input:focus
	{
	color: #424242;
	background-color: #fff;
	border-color: #0288d1;
	outline: none
}

#notify_when_available_form input[type=email]:focus::-ms-value,
	#notify_when_available_form input[type=text]:focus::-ms-value,
	.filter-bar .filter-order select:focus::-ms-value, .filter-bar .filter-select select:focus::-ms-value,
	.flt_container_indique .form_indique input[type=text]:focus::-ms-value,
	.flt_container_indique .form_indique textarea:focus::-ms-value,
	.lkd-description__variants-select:focus::-ms-value, .lkd-form__input:focus::-ms-value,
	.lkd-form__select:focus::-ms-value, .lkd-form__textarea:focus::-ms-value,
	.lkd-helpcenter__search input:focus::-ms-value, .lkd-search-form>.lkd-search-form__input:focus::-ms-value
	{
	color: #424242;
	background-color: #fff
}

#notify_when_available_form input[type=email]::-webkit-input-placeholder,
	#notify_when_available_form input[type=text]::-webkit-input-placeholder,
	.filter-bar .filter-order select::-webkit-input-placeholder,
	.filter-bar .filter-select select::-webkit-input-placeholder,
	.flt_container_indique .form_indique input[type=text]::-webkit-input-placeholder,
	.flt_container_indique .form_indique textarea::-webkit-input-placeholder,
	.lkd-description__variants-select::-webkit-input-placeholder,
	.lkd-form__input::-webkit-input-placeholder, .lkd-form__select::-webkit-input-placeholder,
	.lkd-form__textarea::-webkit-input-placeholder, .lkd-helpcenter__search input::-webkit-input-placeholder,
	.lkd-search-form>.lkd-search-form__input::-webkit-input-placeholder {
	color: #999;
	opacity: 1
}

#notify_when_available_form input[type=email]:-moz-placeholder,
	#notify_when_available_form input[type=text]:-moz-placeholder,
	.filter-bar .filter-order select:-moz-placeholder, .filter-bar .filter-select select:-moz-placeholder,
	.flt_container_indique .form_indique input[type=text]:-moz-placeholder,
	.flt_container_indique .form_indique textarea:-moz-placeholder,
	.lkd-description__variants-select:-moz-placeholder, .lkd-form__input:-moz-placeholder,
	.lkd-form__select:-moz-placeholder, .lkd-form__textarea:-moz-placeholder,
	.lkd-helpcenter__search input:-moz-placeholder, .lkd-search-form>.lkd-search-form__input:-moz-placeholder
	{
	color: #999;
	opacity: 1
}

#notify_when_available_form input[type=email]:-ms-input-placeholder,
	#notify_when_available_form input[type=text]:-ms-input-placeholder,
	.filter-bar .filter-order select:-ms-input-placeholder, .filter-bar .filter-select select:-ms-input-placeholder,
	.flt_container_indique .form_indique input[type=text]:-ms-input-placeholder,
	.flt_container_indique .form_indique textarea:-ms-input-placeholder,
	.lkd-description__variants-select:-ms-input-placeholder,
	.lkd-form__input:-ms-input-placeholder, .lkd-form__select:-ms-input-placeholder,
	.lkd-form__textarea:-ms-input-placeholder, .lkd-helpcenter__search input:-ms-input-placeholder,
	.lkd-search-form>.lkd-search-form__input:-ms-input-placeholder {
	color: #999;
	opacity: 1
}

#notify_when_available_form input[type=email]::-moz-placeholder,
	#notify_when_available_form input[type=text]::-moz-placeholder,
	.filter-bar .filter-order select::-moz-placeholder, .filter-bar .filter-select select::-moz-placeholder,
	.flt_container_indique .form_indique input[type=text]::-moz-placeholder,
	.flt_container_indique .form_indique textarea::-moz-placeholder,
	.lkd-description__variants-select::-moz-placeholder, .lkd-form__input::-moz-placeholder,
	.lkd-form__select::-moz-placeholder, .lkd-form__textarea::-moz-placeholder,
	.lkd-helpcenter__search input::-moz-placeholder, .lkd-search-form>.lkd-search-form__input::-moz-placeholder
	{
	color: #999;
	opacity: 1
}

#notify_when_available_form input[type=email]:focus::-webkit-input-placeholder,
	#notify_when_available_form input[type=text]:focus::-webkit-input-placeholder,
	.filter-bar .filter-order select:focus::-webkit-input-placeholder,
	.filter-bar .filter-select select:focus::-webkit-input-placeholder,
	.flt_container_indique .form_indique input[type=text]:focus::-webkit-input-placeholder,
	.flt_container_indique .form_indique textarea:focus::-webkit-input-placeholder,
	.lkd-description__variants-select:focus::-webkit-input-placeholder,
	.lkd-form__input:focus::-webkit-input-placeholder, .lkd-form__select:focus::-webkit-input-placeholder,
	.lkd-form__textarea:focus::-webkit-input-placeholder,
	.lkd-helpcenter__search input:focus::-webkit-input-placeholder,
	.lkd-search-form>.lkd-search-form__input:focus::-webkit-input-placeholder
	{
	color: #999;
	opacity: 1
}

#notify_when_available_form input[type=email]:focus:-moz-placeholder,
	#notify_when_available_form input[type=text]:focus:-moz-placeholder,
	.filter-bar .filter-order select:focus:-moz-placeholder, .filter-bar .filter-select select:focus:-moz-placeholder,
	.flt_container_indique .form_indique input[type=text]:focus:-moz-placeholder,
	.flt_container_indique .form_indique textarea:focus:-moz-placeholder,
	.lkd-description__variants-select:focus:-moz-placeholder,
	.lkd-form__input:focus:-moz-placeholder, .lkd-form__select:focus:-moz-placeholder,
	.lkd-form__textarea:focus:-moz-placeholder, .lkd-helpcenter__search input:focus:-moz-placeholder,
	.lkd-search-form>.lkd-search-form__input:focus:-moz-placeholder {
	color: #999;
	opacity: 1
}

#notify_when_available_form input[type=email]:focus:-ms-input-placeholder,
	#notify_when_available_form input[type=text]:focus:-ms-input-placeholder,
	.filter-bar .filter-order select:focus:-ms-input-placeholder,
	.filter-bar .filter-select select:focus:-ms-input-placeholder,
	.flt_container_indique .form_indique input[type=text]:focus:-ms-input-placeholder,
	.flt_container_indique .form_indique textarea:focus:-ms-input-placeholder,
	.lkd-description__variants-select:focus:-ms-input-placeholder,
	.lkd-form__input:focus:-ms-input-placeholder, .lkd-form__select:focus:-ms-input-placeholder,
	.lkd-form__textarea:focus:-ms-input-placeholder,
	.lkd-helpcenter__search input:focus:-ms-input-placeholder,
	.lkd-search-form>.lkd-search-form__input:focus:-ms-input-placeholder {
	color: #999;
	opacity: 1
}

#notify_when_available_form input[type=email]:focus::-moz-placeholder,
	#notify_when_available_form input[type=text]:focus::-moz-placeholder,
	.filter-bar .filter-order select:focus::-moz-placeholder, .filter-bar .filter-select select:focus::-moz-placeholder,
	.flt_container_indique .form_indique input[type=text]:focus::-moz-placeholder,
	.flt_container_indique .form_indique textarea:focus::-moz-placeholder,
	.lkd-description__variants-select:focus::-moz-placeholder,
	.lkd-form__input:focus::-moz-placeholder, .lkd-form__select:focus::-moz-placeholder,
	.lkd-form__textarea:focus::-moz-placeholder, .lkd-helpcenter__search input:focus::-moz-placeholder,
	.lkd-search-form>.lkd-search-form__input:focus::-moz-placeholder {
	color: #999;
	opacity: 1
}

#notify_when_available_form input[type=email]::-ms-expand,
	#notify_when_available_form input[type=text]::-ms-expand, .filter-bar .filter-order select::-ms-expand,
	.filter-bar .filter-select select::-ms-expand, .flt_container_indique .form_indique input[type=text]::-ms-expand,
	.flt_container_indique .form_indique textarea::-ms-expand,
	.lkd-description__variants-select::-ms-expand, .lkd-form__input::-ms-expand,
	.lkd-form__select::-ms-expand, .lkd-form__textarea::-ms-expand,
	.lkd-helpcenter__search input::-ms-expand, .lkd-search-form>.lkd-search-form__input::-ms-expand
	{
	background-color: transparent;
	border: 0
}

#notify_when_available_form input[readonly][type=email],
	#notify_when_available_form input[readonly][type=text],
	#notify_when_available_form input[type=email]:disabled,
	#notify_when_available_form input[type=text]:disabled, .filter-bar .filter-order select:disabled,
	.filter-bar .filter-order select[readonly], .filter-bar .filter-select select:disabled,
	.filter-bar .filter-select select[readonly], .flt_container_indique .form_indique input[readonly][type=text],
	.flt_container_indique .form_indique input[type=text]:disabled,
	.flt_container_indique .form_indique textarea:disabled,
	.flt_container_indique .form_indique textarea[readonly],
	.lkd-description__variants-select:disabled, .lkd-form__input:disabled,
	.lkd-form__select:disabled, .lkd-form__textarea:disabled,
	.lkd-helpcenter__search input:disabled, .lkd-helpcenter__search input[readonly],
	.lkd-search-form>.lkd-search-form__input:disabled, .lkd-search-form>[readonly].lkd-search-form__input,
	[readonly].lkd-description__variants-select, [readonly].lkd-form__input,
	[readonly].lkd-form__select, [readonly].lkd-form__textarea {
	background-color: #ebebeb;
	opacity: 1
}

#notify_when_available_form input[type=email]:disabled,
	#notify_when_available_form input[type=text]:disabled, .filter-bar .filter-order select:disabled,
	.filter-bar .filter-select select:disabled, .flt_container_indique .form_indique input[type=text]:disabled,
	.flt_container_indique .form_indique textarea:disabled,
	.lkd-description__variants-select:disabled, .lkd-form__input:disabled,
	.lkd-form__select:disabled, .lkd-form__textarea:disabled,
	.lkd-helpcenter__search input:disabled, .lkd-search-form>.lkd-search-form__input:disabled
	{
	cursor: not-allowed
}

.filter-bar .filter-order select, .filter-bar .filter-select select,
	.lkd-description__variants-select, .lkd-form__select {
	display: inline-block;
	max-width: 100%;
	vertical-align: middle;
	background: #fff
		url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3E%3Cpath fill='%23333' d='M2 0L0 2h4zm0 5L0 3h4z'/%3E%3C/svg%3E")
		no-repeat right 10px center;
	background-size: 8px 10px
}

#notify_when_available_form input[type=submit], .flt_container_indique .form_indique .enviar,
	.lkd-button, .lkd-button-buy, .lkd-description__button,
	.lkd-description__button--ghost, .lkd-description__view-description,
	.lkd-floater__button, .lkd-floater__facebook-button, .lkd-form__button,
	.lkd-form__button--cancel, .lkd-form__button--link,
	.lkd-gshopping-product__button-freight,
	.lkd-gshopping-product__see-details, .lkd-product-box__button {
	position: relative;
	padding: 0 1.2em;
	cursor: pointer;
	border: none;
	display: inline-block;
	vertical-align: middle;
	text-decoration: none;
	text-align: center;
	white-space: nowrap;
	font-family: inherit;
	font-weight: 400;
	line-height: 40px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-user-drag: none;
	zoom: 1;
	-webkit-box-shadow: 1px 2px 3px 0 hsla(0, 0%, 46%, .15);
	box-shadow: 1px 2px 3px 0 hsla(0, 0%, 46%, .15);
	-webkit-transition: color .2s ease-in-out, background-color .2s
		ease-in-out, -webkit-box-shadow 15ms ease-in-out;
	transition: color .2s ease-in-out, background-color .2s ease-in-out,
		-webkit-box-shadow 15ms ease-in-out;
	transition: color .2s ease-in-out, background-color .2s ease-in-out,
		box-shadow 15ms ease-in-out;
	transition: color .2s ease-in-out, background-color .2s ease-in-out,
		box-shadow 15ms ease-in-out, -webkit-box-shadow 15ms ease-in-out;
	font-size: 14px;
	border-radius: 8px;
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none
}

#notify_when_available_form input[disabled][type=submit],
	#notify_when_available_form input[disabled][type=submit]:focus,
	#notify_when_available_form input[disabled][type=submit]:hover,
	.flt_container_indique .form_indique [disabled].enviar,
	.flt_container_indique .form_indique [disabled].enviar:focus,
	.flt_container_indique .form_indique [disabled].enviar:hover, [disabled].lkd-button,
	[disabled].lkd-button-buy, [disabled].lkd-button-buy:focus, [disabled].lkd-button-buy:hover,
	[disabled].lkd-button:focus, [disabled].lkd-button:hover, [disabled].lkd-description__button,
	[disabled].lkd-description__button--ghost, [disabled].lkd-description__button--ghost:focus,
	[disabled].lkd-description__button--ghost:hover, [disabled].lkd-description__button:focus,
	[disabled].lkd-description__button:hover, [disabled].lkd-description__view-description,
	[disabled].lkd-description__view-description:focus, [disabled].lkd-description__view-description:hover,
	[disabled].lkd-floater__button, [disabled].lkd-floater__button:focus, [disabled].lkd-floater__button:hover,
	[disabled].lkd-floater__facebook-button, [disabled].lkd-floater__facebook-button:focus,
	[disabled].lkd-floater__facebook-button:hover, [disabled].lkd-form__button,
	[disabled].lkd-form__button--cancel, [disabled].lkd-form__button--cancel:focus,
	[disabled].lkd-form__button--cancel:hover, [disabled].lkd-form__button--link,
	[disabled].lkd-form__button--link:focus, [disabled].lkd-form__button--link:hover,
	[disabled].lkd-form__button:focus, [disabled].lkd-form__button:hover, [disabled].lkd-gshopping-product__button-freight,
	[disabled].lkd-gshopping-product__button-freight:focus, [disabled].lkd-gshopping-product__button-freight:hover,
	[disabled].lkd-gshopping-product__see-details, [disabled].lkd-gshopping-product__see-details:focus,
	[disabled].lkd-gshopping-product__see-details:hover, [disabled].lkd-product-box__button,
	[disabled].lkd-product-box__button:focus, [disabled].lkd-product-box__button:hover
	{
	cursor: not-allowed;
	-webkit-box-shadow: none;
	box-shadow: none;
	opacity: .65
}

#notify_when_available_form input[type=submit]:focus,
	#notify_when_available_form input[type=submit]:hover,
	.flt_container_indique .form_indique .enviar:focus,
	.flt_container_indique .form_indique .enviar:hover, .lkd-button-buy:focus,
	.lkd-button-buy:hover, .lkd-button:focus, .lkd-button:hover,
	.lkd-description__button--ghost:focus, .lkd-description__button--ghost:hover,
	.lkd-description__button:focus, .lkd-description__button:hover,
	.lkd-description__view-description:focus,
	.lkd-description__view-description:hover, .lkd-floater__button:focus,
	.lkd-floater__button:hover, .lkd-floater__facebook-button:focus,
	.lkd-floater__facebook-button:hover, .lkd-form__button--cancel:focus,
	.lkd-form__button--cancel:hover, .lkd-form__button--link:focus,
	.lkd-form__button--link:hover, .lkd-form__button:focus,
	.lkd-form__button:hover, .lkd-gshopping-product__button-freight:focus,
	.lkd-gshopping-product__button-freight:hover,
	.lkd-gshopping-product__see-details:focus,
	.lkd-gshopping-product__see-details:hover, .lkd-product-box__button:focus,
	.lkd-product-box__button:hover {
	-webkit-box-shadow: 0 4px 7px 0 hsla(0, 0%, 46%, .15);
	box-shadow: 0 4px 7px 0 hsla(0, 0%, 46%, .15);
	text-decoration: none;
	outline: none
}

.lkd-button--default, .lkd-gshopping-product__see-details {
	color: #4f4f4f;
	background-color: #cacaca
}

.lkd-button--default:focus, .lkd-button--default:hover,
	.lkd-gshopping-product__see-details:focus,
	.lkd-gshopping-product__see-details:hover {
	color: #474747;
	background-color: #bdbdbd
}

.lkd-button--default:active, .lkd-gshopping-product__see-details:active
	{
	background-color: #b0b0b0
}

.lkd-button--secondary, .lkd-floater__button, .lkd-form .lkd-form__input-group>.lkd-form__button
	{
	color: #fff;
	background-color: #0288d1
}

.lkd-button--secondary:focus, .lkd-button--secondary:hover,
	.lkd-floater__button:focus, .lkd-floater__button:hover, .lkd-form .lkd-form__input-group>.lkd-form__button:focus,
	.lkd-form .lkd-form__input-group>.lkd-form__button:hover {
	color: #f7f7f7;
	background-color: #0278b8
}

.lkd-button--secondary:active, .lkd-floater__button:active, .lkd-form .lkd-form__input-group>.lkd-form__button:active
	{
	background-color: #02679e
}

#notify_when_available_form input[type=submit], .flt_container_indique .form_indique .enviar,
	.lkd-button--primary, .lkd-button-buy, .lkd-floater__button[type=submit],
	.lkd-form .lkd-form__input-group>.lkd-form__button--primary,
	.lkd-form__button {
	color: #424242;
	background-color: #ffca28
}

#notify_when_available_form input[type=submit]:focus,
	#notify_when_available_form input[type=submit]:hover,
	.flt_container_indique .form_indique .enviar:focus,
	.flt_container_indique .form_indique .enviar:hover,
	.lkd-button--primary:focus, .lkd-button--primary:hover, .lkd-button-buy:focus,
	.lkd-button-buy:hover, .lkd-floater__button[type=submit]:focus,
	.lkd-floater__button[type=submit]:hover, .lkd-form .lkd-form__input-group>.lkd-form__button--primary:focus,
	.lkd-form .lkd-form__input-group>.lkd-form__button--primary:hover,
	.lkd-form__button:focus, .lkd-form__button:hover {
	color: #3a3a3a;
	background-color: #ffc40f
}

#notify_when_available_form input[type=submit]:active,
	.flt_container_indique .form_indique .enviar:active,
	.lkd-button--primary:active, .lkd-button-buy:active,
	.lkd-floater__button[type=submit]:active, .lkd-form .lkd-form__input-group>.lkd-form__button--primary:active,
	.lkd-form__button:active {
	background-color: #f4b800
}

.lkd-button-buy--off {
	color: #424242;
	background-color: #bdbdbd
}

.lkd-button-buy--off:focus, .lkd-button-buy--off:hover {
	color: #3a3a3a;
	background-color: #b0b0b0
}

.lkd-button-buy--off:active {
	background-color: #a4a4a4
}

.lkd-floater__facebook-button {
	color: #fff;
	background-color: #4568b2
}

.lkd-floater__facebook-button:focus, .lkd-floater__facebook-button:hover
	{
	color: #f7f7f7;
	background-color: #3e5da0
}

.lkd-floater__facebook-button:active {
	background-color: #37538d
}

.lkd-button--link, .lkd-description__view-description,
	.lkd-form__button--cancel, .lkd-form__button--link {
	-webkit-box-shadow: none;
	box-shadow: none;
	text-decoration: underline;
	color: #29b6f6;
	background-color: transparent
}

.lkd-button--link:focus, .lkd-button--link:hover,
	.lkd-description__view-description:focus,
	.lkd-description__view-description:hover, .lkd-form__button--cancel:focus,
	.lkd-form__button--cancel:hover, .lkd-form__button--link:focus,
	.lkd-form__button--link:hover {
	color: #1ab1f5;
	background-color: transparent
}

.lkd-button--link:active, .lkd-description__view-description:active,
	.lkd-form__button--cancel:active, .lkd-form__button--link:active {
	background-color: transparent
}

.lkd-button--link:hover, .lkd-description__view-description:hover,
	.lkd-form__button--cancel:hover, .lkd-form__button--link:hover {
	color: #0288d1
}

.lkd-button--link:active, .lkd-button--link:focus, .lkd-button--link:hover,
	.lkd-description__view-description:active,
	.lkd-description__view-description:focus,
	.lkd-description__view-description:hover, .lkd-form__button--cancel:active,
	.lkd-form__button--cancel:focus, .lkd-form__button--cancel:hover,
	.lkd-form__button--link:active, .lkd-form__button--link:focus,
	.lkd-form__button--link:hover {
	-webkit-box-shadow: none;
	box-shadow: none;
	background-color: transparent
}

.lkd-button--ghost, .lkd-description__button--ghost,
	.lkd-floater__button--ghost, .lkd-gshopping-product__button-freight {
	color: #0288d1;
	background-color: transparent;
	-webkit-box-shadow: none;
	box-shadow: none;
	border: 1px solid #0288d1;
	text-decoration: none
}

.lkd-button--ghost:focus, .lkd-button--ghost:hover,
	.lkd-description__button--ghost:focus, .lkd-description__button--ghost:hover,
	.lkd-floater__button--ghost:focus, .lkd-floater__button--ghost:hover,
	.lkd-gshopping-product__button-freight:focus,
	.lkd-gshopping-product__button-freight:hover {
	color: #027ec2;
	background-color: transparent
}

.lkd-button--ghost:active, .lkd-description__button--ghost:active,
	.lkd-floater__button--ghost:active,
	.lkd-gshopping-product__button-freight:active {
	background-color: transparent
}

.lkd-button--ghost:active, .lkd-button--ghost:focus, .lkd-button--ghost:hover,
	.lkd-description__button--ghost:active, .lkd-description__button--ghost:focus,
	.lkd-description__button--ghost:hover, .lkd-floater__button--ghost:active,
	.lkd-floater__button--ghost:focus, .lkd-floater__button--ghost:hover,
	.lkd-gshopping-product__button-freight:active,
	.lkd-gshopping-product__button-freight:focus,
	.lkd-gshopping-product__button-freight:hover {
	-webkit-box-shadow: none;
	box-shadow: none;
	color: #fff;
	background-color: #0288d1
}

.lkd-button--ghost:active:focus, .lkd-button--ghost:active:hover,
	.lkd-button--ghost:focus:focus, .lkd-button--ghost:focus:hover,
	.lkd-button--ghost:hover:focus, .lkd-button--ghost:hover:hover,
	.lkd-description__button--ghost:active:focus,
	.lkd-description__button--ghost:active:hover,
	.lkd-description__button--ghost:focus:focus,
	.lkd-description__button--ghost:focus:hover,
	.lkd-description__button--ghost:hover:focus,
	.lkd-description__button--ghost:hover:hover,
	.lkd-floater__button--ghost:active:focus, .lkd-floater__button--ghost:active:hover,
	.lkd-floater__button--ghost:focus:focus, .lkd-floater__button--ghost:focus:hover,
	.lkd-floater__button--ghost:hover:focus, .lkd-floater__button--ghost:hover:hover,
	.lkd-gshopping-product__button-freight:active:focus,
	.lkd-gshopping-product__button-freight:active:hover,
	.lkd-gshopping-product__button-freight:focus:focus,
	.lkd-gshopping-product__button-freight:focus:hover,
	.lkd-gshopping-product__button-freight:hover:focus,
	.lkd-gshopping-product__button-freight:hover:hover {
	color: #f7f7f7;
	background-color: #0278b8
}

.lkd-button--ghost:active:active, .lkd-button--ghost:focus:active,
	.lkd-button--ghost:hover:active, .lkd-description__button--ghost:active:active,
	.lkd-description__button--ghost:focus:active,
	.lkd-description__button--ghost:hover:active,
	.lkd-floater__button--ghost:active:active, .lkd-floater__button--ghost:focus:active,
	.lkd-floater__button--ghost:hover:active,
	.lkd-gshopping-product__button-freight:active:active,
	.lkd-gshopping-product__button-freight:focus:active,
	.lkd-gshopping-product__button-freight:hover:active {
	background-color: #02679e
}

.lkd-gshopping-product__images img {
	width: auto;
	max-width: 100%;
	height: auto;
	display: block;
	margin: 0 auto
}

.lkd-gallery canvas, .lkd-gallery img, .lkd-gallery svg {
	width: 100%;
	height: auto;
	display: block
}

a, abbr, acronym, address, applet, article, aside, audio, b, big,
	blockquote, body, canvas, caption, center, cite, code, dd, del, details,
	dfn, div, dl, dt, em, embed, fieldset, figcaption, figure, footer, form,
	h1, h2, h3, h4, h5, h6, header, hgroup, html, i, iframe, img, ins, kbd,
	label, legend, li, mark, menu, nav, object, ol, output, p, pre, q, ruby,
	s, samp, section, small, span, strike, strong, sub, summary, sup, table,
	tbody, td, tfoot, th, thead, time, tr, tt, u, ul, var, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block
}

ol, ul {
	list-style: none
}

button, input, select, textarea {
	margin: 0
}

html {
	-webkit-box-sizing: initial;
	box-sizing: initial;
	-ms-overflow-style: scrollbar;
	-webkit-tap-highlight-color: transparent
}

*, :after, :before {
	-webkit-box-sizing: inherit;
	box-sizing: inherit
}

@
-ms-viewport {
	width: device-width
}

body, html {
	width: 100%;
	height: 100%
}

audio, embed, img, object, video {
	height: auto;
	max-width: 100%
}

iframe {
	border: 0
}

table {
	border-collapse: collapse;
	border-spacing: 0
}

td, th {
	padding: 0;
	text-align: left
}

.fa {
	display: inline-block;
	font: normal normal normal 14px/1 FontAwesome;
	font-size: inherit;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale
}

.fa-glass:before {
	content: ""
}

.fa-music:before {
	content: ""
}

.fa-search:before {
	content: ""
}

.fa-envelope-o:before {
	content: ""
}

.fa-heart:before {
	content: ""
}

.fa-star:before {
	content: ""
}

.fa-star-o:before {
	content: ""
}

.fa-user:before {
	content: ""
}

.fa-film:before {
	content: ""
}

.fa-th-large:before {
	content: ""
}

.fa-th:before {
	content: ""
}

.fa-th-list:before {
	content: ""
}

.fa-check:before {
	content: ""
}

.fa-close:before, .fa-remove:before, .fa-times:before {
	content: ""
}

.fa-search-plus:before {
	content: ""
}

.fa-search-minus:before {
	content: ""
}

.fa-power-off:before {
	content: ""
}

.fa-signal:before {
	content: ""
}

.fa-cog:before, .fa-gear:before {
	content: ""
}

.fa-trash-o:before {
	content: ""
}

.fa-home:before {
	content: ""
}

.fa-file-o:before {
	content: ""
}

.fa-clock-o:before {
	content: ""
}

.fa-road:before {
	content: ""
}

.fa-download:before {
	content: ""
}

.fa-arrow-circle-o-down:before {
	content: ""
}

.fa-arrow-circle-o-up:before {
	content: ""
}

.fa-inbox:before {
	content: ""
}

.fa-play-circle-o:before {
	content: ""
}

.fa-repeat:before, .fa-rotate-right:before {
	content: ""
}

.fa-refresh:before {
	content: ""
}

.fa-list-alt:before {
	content: ""
}

.fa-lock:before {
	content: ""
}

.fa-flag:before {
	content: ""
}

.fa-headphones:before {
	content: ""
}

.fa-volume-off:before {
	content: ""
}

.fa-volume-down:before {
	content: ""
}

.fa-volume-up:before {
	content: ""
}

.fa-qrcode:before {
	content: ""
}

.fa-barcode:before {
	content: ""
}

.fa-tag:before {
	content: ""
}

.fa-tags:before {
	content: ""
}

.fa-book:before {
	content: ""
}

.fa-bookmark:before {
	content: ""
}

.fa-print:before {
	content: ""
}

.fa-camera:before {
	content: ""
}

.fa-font:before {
	content: ""
}

.fa-bold:before {
	content: ""
}

.fa-italic:before {
	content: ""
}

.fa-text-height:before {
	content: ""
}

.fa-text-width:before {
	content: ""
}

.fa-align-left:before {
	content: ""
}

.fa-align-center:before {
	content: ""
}

.fa-align-right:before {
	content: ""
}

.fa-align-justify:before {
	content: ""
}

.fa-list:before {
	content: ""
}

.fa-dedent:before, .fa-outdent:before {
	content: ""
}

.fa-indent:before {
	content: ""
}

.fa-video-camera:before {
	content: ""
}

.fa-image:before, .fa-photo:before, .fa-picture-o:before {
	content: ""
}

.fa-pencil:before {
	content: ""
}

.fa-map-marker:before {
	content: ""
}

.fa-adjust:before {
	content: ""
}

.fa-tint:before {
	content: ""
}

.fa-edit:before, .fa-pencil-square-o:before {
	content: ""
}

.fa-share-square-o:before {
	content: ""
}

.fa-check-square-o:before {
	content: ""
}

.fa-arrows:before {
	content: ""
}

.fa-step-backward:before {
	content: ""
}

.fa-fast-backward:before {
	content: ""
}

.fa-backward:before {
	content: ""
}

.fa-play:before {
	content: ""
}

.fa-pause:before {
	content: ""
}

.fa-stop:before {
	content: ""
}

.fa-forward:before {
	content: ""
}

.fa-fast-forward:before {
	content: ""
}

.fa-step-forward:before {
	content: ""
}

.fa-eject:before {
	content: ""
}

.fa-chevron-left:before {
	content: ""
}

.fa-chevron-right:before {
	content: ""
}

.fa-plus-circle:before {
	content: ""
}

.fa-minus-circle:before {
	content: ""
}

.fa-times-circle:before {
	content: ""
}

.fa-check-circle:before {
	content: ""
}

.fa-question-circle:before {
	content: ""
}

.fa-info-circle:before {
	content: ""
}

.fa-crosshairs:before {
	content: ""
}

.fa-times-circle-o:before {
	content: ""
}

.fa-check-circle-o:before {
	content: ""
}

.fa-ban:before {
	content: ""
}

.fa-arrow-left:before {
	content: ""
}

.fa-arrow-right:before {
	content: ""
}

.fa-arrow-up:before {
	content: ""
}

.fa-arrow-down:before {
	content: ""
}

.fa-mail-forward:before, .fa-share:before {
	content: ""
}

.fa-expand:before {
	content: ""
}

.fa-compress:before {
	content: ""
}

.fa-plus:before {
	content: ""
}

.fa-minus:before {
	content: ""
}

.fa-asterisk:before {
	content: ""
}

.fa-exclamation-circle:before {
	content: ""
}

.fa-gift:before {
	content: ""
}

.fa-leaf:before {
	content: ""
}

.fa-fire:before {
	content: ""
}

.fa-eye:before {
	content: ""
}

.fa-eye-slash:before {
	content: ""
}

.fa-exclamation-triangle:before, .fa-warning:before {
	content: ""
}

.fa-plane:before {
	content: ""
}

.fa-calendar:before {
	content: ""
}

.fa-random:before {
	content: ""
}

.fa-comment:before {
	content: ""
}

.fa-magnet:before {
	content: ""
}

.fa-chevron-up:before {
	content: ""
}

.fa-chevron-down:before {
	content: ""
}

.fa-retweet:before {
	content: ""
}

.fa-shopping-cart:before {
	content: ""
}

.fa-folder:before {
	content: ""
}

.fa-folder-open:before {
	content: ""
}

.fa-arrows-v:before {
	content: ""
}

.fa-arrows-h:before {
	content: ""
}

.fa-bar-chart-o:before, .fa-bar-chart:before {
	content: ""
}

.fa-twitter-square:before {
	content: ""
}

.fa-facebook-square:before {
	content: ""
}

.fa-camera-retro:before {
	content: ""
}

.fa-key:before {
	content: ""
}

.fa-cogs:before, .fa-gears:before {
	content: ""
}

.fa-comments:before {
	content: ""
}

.fa-thumbs-o-up:before {
	content: ""
}

.fa-thumbs-o-down:before {
	content: ""
}

.fa-star-half:before {
	content: ""
}

.fa-heart-o:before {
	content: ""
}

.fa-sign-out:before {
	content: ""
}

.fa-linkedin-square:before {
	content: ""
}

.fa-thumb-tack:before {
	content: ""
}

.fa-external-link:before {
	content: ""
}

.fa-sign-in:before {
	content: ""
}

.fa-trophy:before {
	content: ""
}

.fa-github-square:before {
	content: ""
}

.fa-upload:before {
	content: ""
}

.fa-lemon-o:before {
	content: ""
}

.fa-phone:before {
	content: ""
}

.fa-square-o:before {
	content: ""
}

.fa-bookmark-o:before {
	content: ""
}

.fa-phone-square:before {
	content: ""
}

.fa-twitter:before {
	content: ""
}

.fa-facebook-f:before, .fa-facebook:before {
	content: ""
}

.fa-github:before {
	content: ""
}

.fa-unlock:before {
	content: ""
}

.fa-credit-card:before {
	content: ""
}

.fa-feed:before, .fa-rss:before {
	content: ""
}

.fa-hdd-o:before {
	content: ""
}

.fa-bullhorn:before {
	content: ""
}

.fa-bell:before {
	content: ""
}

.fa-certificate:before {
	content: ""
}

.fa-hand-o-right:before {
	content: ""
}

.fa-hand-o-left:before {
	content: ""
}

.fa-hand-o-up:before {
	content: ""
}

.fa-hand-o-down:before {
	content: ""
}

.fa-arrow-circle-left:before {
	content: ""
}

.fa-arrow-circle-right:before {
	content: ""
}

.fa-arrow-circle-up:before {
	content: ""
}

.fa-arrow-circle-down:before {
	content: ""
}

.fa-globe:before {
	content: ""
}

.fa-wrench:before {
	content: ""
}

.fa-tasks:before {
	content: ""
}

.fa-filter:before {
	content: ""
}

.fa-briefcase:before {
	content: ""
}

.fa-arrows-alt:before {
	content: ""
}

.fa-group:before, .fa-users:before {
	content: ""
}

.fa-chain:before, .fa-link:before {
	content: ""
}

.fa-cloud:before {
	content: ""
}

.fa-flask:before {
	content: ""
}

.fa-cut:before, .fa-scissors:before {
	content: ""
}

.fa-copy:before, .fa-files-o:before {
	content: ""
}

.fa-paperclip:before {
	content: ""
}

.fa-floppy-o:before, .fa-save:before {
	content: ""
}

.fa-square:before {
	content: ""
}

.fa-bars:before, .fa-navicon:before, .fa-reorder:before {
	content: ""
}

.fa-list-ul:before {
	content: ""
}

.fa-list-ol:before {
	content: ""
}

.fa-strikethrough:before {
	content: ""
}

.fa-underline:before {
	content: ""
}

.fa-table:before {
	content: ""
}

.fa-magic:before {
	content: ""
}

.fa-truck:before {
	content: ""
}

.fa-pinterest:before {
	content: ""
}

.fa-pinterest-square:before {
	content: ""
}

.fa-google-plus-square:before {
	content: ""
}

.fa-google-plus:before {
	content: ""
}

.fa-money:before {
	content: ""
}

.fa-caret-down:before {
	content: ""
}

.fa-caret-up:before {
	content: ""
}

.fa-caret-left:before {
	content: ""
}

.fa-caret-right:before {
	content: ""
}

.fa-columns:before {
	content: ""
}

.fa-sort:before, .fa-unsorted:before {
	content: ""
}

.fa-sort-desc:before, .fa-sort-down:before {
	content: ""
}

.fa-sort-asc:before, .fa-sort-up:before {
	content: ""
}

.fa-envelope:before {
	content: ""
}

.fa-linkedin:before {
	content: ""
}

.fa-rotate-left:before, .fa-undo:before {
	content: ""
}

.fa-gavel:before, .fa-legal:before {
	content: ""
}

.fa-dashboard:before, .fa-tachometer:before {
	content: ""
}

.fa-comment-o:before {
	content: ""
}

.fa-comments-o:before {
	content: ""
}

.fa-bolt:before, .fa-flash:before {
	content: ""
}

.fa-sitemap:before {
	content: ""
}

.fa-umbrella:before {
	content: ""
}

.fa-clipboard:before, .fa-paste:before {
	content: ""
}

.fa-lightbulb-o:before {
	content: ""
}

.fa-exchange:before {
	content: ""
}

.fa-cloud-download:before {
	content: ""
}

.fa-cloud-upload:before {
	content: ""
}

.fa-user-md:before {
	content: ""
}

.fa-stethoscope:before {
	content: ""
}

.fa-suitcase:before {
	content: ""
}

.fa-bell-o:before {
	content: ""
}

.fa-coffee:before {
	content: ""
}

.fa-cutlery:before {
	content: ""
}

.fa-file-text-o:before {
	content: ""
}

.fa-building-o:before {
	content: ""
}

.fa-hospital-o:before {
	content: ""
}

.fa-ambulance:before {
	content: ""
}

.fa-medkit:before {
	content: ""
}

.fa-fighter-jet:before {
	content: ""
}

.fa-beer:before {
	content: ""
}

.fa-h-square:before {
	content: ""
}

.fa-plus-square:before {
	content: ""
}

.fa-angle-double-left:before {
	content: ""
}

.fa-angle-double-right:before {
	content: ""
}

.fa-angle-double-up:before {
	content: ""
}

.fa-angle-double-down:before {
	content: ""
}

.fa-angle-left:before {
	content: ""
}

.fa-angle-right:before {
	content: ""
}

.fa-angle-up:before {
	content: ""
}

.fa-angle-down:before {
	content: ""
}

.fa-desktop:before {
	content: ""
}

.fa-laptop:before {
	content: ""
}

.fa-tablet:before {
	content: ""
}

.fa-mobile-phone:before, .fa-mobile:before {
	content: ""
}

.fa-circle-o:before {
	content: ""
}

.fa-quote-left:before {
	content: ""
}

.fa-quote-right:before {
	content: ""
}

.fa-spinner:before {
	content: ""
}

.fa-circle:before {
	content: ""
}

.fa-mail-reply:before, .fa-reply:before {
	content: ""
}

.fa-github-alt:before {
	content: ""
}

.fa-folder-o:before {
	content: ""
}

.fa-folder-open-o:before {
	content: ""
}

.fa-smile-o:before {
	content: ""
}

.fa-frown-o:before {
	content: ""
}

.fa-meh-o:before {
	content: ""
}

.fa-gamepad:before {
	content: ""
}

.fa-keyboard-o:before {
	content: ""
}

.fa-flag-o:before {
	content: ""
}

.fa-flag-checkered:before {
	content: ""
}

.fa-terminal:before {
	content: ""
}

.fa-code:before {
	content: ""
}

.fa-mail-reply-all:before, .fa-reply-all:before {
	content: ""
}

.fa-star-half-empty:before, .fa-star-half-full:before, .fa-star-half-o:before
	{
	content: ""
}

.fa-location-arrow:before {
	content: ""
}

.fa-crop:before {
	content: ""
}

.fa-code-fork:before {
	content: ""
}

.fa-chain-broken:before, .fa-unlink:before {
	content: ""
}

.fa-question:before {
	content: ""
}

.fa-info:before {
	content: ""
}

.fa-exclamation:before {
	content: ""
}

.fa-superscript:before {
	content: ""
}

.fa-subscript:before {
	content: ""
}

.fa-eraser:before {
	content: ""
}

.fa-puzzle-piece:before {
	content: ""
}

.fa-microphone:before {
	content: ""
}

.fa-microphone-slash:before {
	content: ""
}

.fa-shield:before {
	content: ""
}

.fa-calendar-o:before {
	content: ""
}

.fa-fire-extinguisher:before {
	content: ""
}

.fa-rocket:before {
	content: ""
}

.fa-maxcdn:before {
	content: ""
}

.fa-chevron-circle-left:before {
	content: ""
}

.fa-chevron-circle-right:before {
	content: ""
}

.fa-chevron-circle-up:before {
	content: ""
}

.fa-chevron-circle-down:before {
	content: ""
}

.fa-html5:before {
	content: ""
}

.fa-css3:before {
	content: ""
}

.fa-anchor:before {
	content: ""
}

.fa-unlock-alt:before {
	content: ""
}

.fa-bullseye:before {
	content: ""
}

.fa-ellipsis-h:before {
	content: ""
}

.fa-ellipsis-v:before {
	content: ""
}

.fa-rss-square:before {
	content: ""
}

.fa-play-circle:before {
	content: ""
}

.fa-ticket:before {
	content: ""
}

.fa-minus-square:before {
	content: ""
}

.fa-minus-square-o:before {
	content: ""
}

.fa-level-up:before {
	content: ""
}

.fa-level-down:before {
	content: ""
}

.fa-check-square:before {
	content: ""
}

.fa-pencil-square:before {
	content: ""
}

.fa-external-link-square:before {
	content: ""
}

.fa-share-square:before {
	content: ""
}

.fa-compass:before {
	content: ""
}

.fa-caret-square-o-down:before, .fa-toggle-down:before {
	content: ""
}

.fa-caret-square-o-up:before, .fa-toggle-up:before {
	content: ""
}

.fa-caret-square-o-right:before, .fa-toggle-right:before {
	content: ""
}

.fa-eur:before, .fa-euro:before {
	content: ""
}

.fa-gbp:before {
	content: ""
}

.fa-dollar:before, .fa-usd:before {
	content: ""
}

.fa-inr:before, .fa-rupee:before {
	content: ""
}

.fa-cny:before, .fa-jpy:before, .fa-rmb:before, .fa-yen:before {
	content: ""
}

.fa-rouble:before, .fa-rub:before, .fa-ruble:before {
	content: ""
}

.fa-krw:before, .fa-won:before {
	content: ""
}

.fa-bitcoin:before, .fa-btc:before {
	content: ""
}

.fa-file:before {
	content: ""
}

.fa-file-text:before {
	content: ""
}

.fa-sort-alpha-asc:before {
	content: ""
}

.fa-sort-alpha-desc:before {
	content: ""
}

.fa-sort-amount-asc:before {
	content: ""
}

.fa-sort-amount-desc:before {
	content: ""
}

.fa-sort-numeric-asc:before {
	content: ""
}

.fa-sort-numeric-desc:before {
	content: ""
}

.fa-thumbs-up:before {
	content: ""
}

.fa-thumbs-down:before {
	content: ""
}

.fa-youtube-square:before {
	content: ""
}

.fa-youtube:before {
	content: ""
}

.fa-xing:before {
	content: ""
}

.fa-xing-square:before {
	content: ""
}

.fa-youtube-play:before {
	content: ""
}

.fa-dropbox:before {
	content: ""
}

.fa-stack-overflow:before {
	content: ""
}

.fa-instagram:before {
	content: ""
}

.fa-flickr:before {
	content: ""
}

.fa-adn:before {
	content: ""
}

.fa-bitbucket:before {
	content: ""
}

.fa-bitbucket-square:before {
	content: ""
}

.fa-tumblr:before {
	content: ""
}

.fa-tumblr-square:before {
	content: ""
}

.fa-long-arrow-down:before {
	content: ""
}

.fa-long-arrow-up:before {
	content: ""
}

.fa-long-arrow-left:before {
	content: ""
}

.fa-long-arrow-right:before {
	content: ""
}

.fa-apple:before {
	content: ""
}

.fa-windows:before {
	content: ""
}

.fa-android:before {
	content: ""
}

.fa-linux:before {
	content: ""
}

.fa-dribbble:before {
	content: ""
}

.fa-skype:before {
	content: ""
}

.fa-foursquare:before {
	content: ""
}

.fa-trello:before {
	content: ""
}

.fa-female:before {
	content: ""
}

.fa-male:before {
	content: ""
}

.fa-gittip:before, .fa-gratipay:before {
	content: ""
}

.fa-sun-o:before {
	content: ""
}

.fa-moon-o:before {
	content: ""
}

.fa-archive:before {
	content: ""
}

.fa-bug:before {
	content: ""
}

.fa-vk:before {
	content: ""
}

.fa-weibo:before {
	content: ""
}

.fa-renren:before {
	content: ""
}

.fa-pagelines:before {
	content: ""
}

.fa-stack-exchange:before {
	content: ""
}

.fa-arrow-circle-o-right:before {
	content: ""
}

.fa-arrow-circle-o-left:before {
	content: ""
}

.fa-caret-square-o-left:before, .fa-toggle-left:before {
	content: ""
}

.fa-dot-circle-o:before {
	content: ""
}

.fa-wheelchair:before {
	content: ""
}

.fa-vimeo-square:before {
	content: ""
}

.fa-try:before, .fa-turkish-lira:before {
	content: ""
}

.fa-plus-square-o:before {
	content: ""
}

.fa-space-shuttle:before {
	content: ""
}

.fa-slack:before {
	content: ""
}

.fa-envelope-square:before {
	content: ""
}

.fa-wordpress:before {
	content: ""
}

.fa-openid:before {
	content: ""
}

.fa-bank:before, .fa-institution:before, .fa-university:before {
	content: ""
}

.fa-graduation-cap:before, .fa-mortar-board:before {
	content: ""
}

.fa-yahoo:before {
	content: ""
}

.fa-google:before {
	content: ""
}

.fa-reddit:before {
	content: ""
}

.fa-reddit-square:before {
	content: ""
}

.fa-stumbleupon-circle:before {
	content: ""
}

.fa-stumbleupon:before {
	content: ""
}

.fa-delicious:before {
	content: ""
}

.fa-digg:before {
	content: ""
}

.fa-pied-piper-pp:before {
	content: ""
}

.fa-pied-piper-alt:before {
	content: ""
}

.fa-drupal:before {
	content: ""
}

.fa-joomla:before {
	content: ""
}

.fa-language:before {
	content: ""
}

.fa-fax:before {
	content: ""
}

.fa-building:before {
	content: ""
}

.fa-child:before {
	content: ""
}

.fa-paw:before {
	content: ""
}

.fa-spoon:before {
	content: ""
}

.fa-cube:before {
	content: ""
}

.fa-cubes:before {
	content: ""
}

.fa-behance:before {
	content: ""
}

.fa-behance-square:before {
	content: ""
}

.fa-steam:before {
	content: ""
}

.fa-steam-square:before {
	content: ""
}

.fa-recycle:before {
	content: ""
}

.fa-automobile:before, .fa-car:before {
	content: ""
}

.fa-cab:before, .fa-taxi:before {
	content: ""
}

.fa-tree:before {
	content: ""
}

.fa-spotify:before {
	content: ""
}

.fa-deviantart:before {
	content: ""
}

.fa-soundcloud:before {
	content: ""
}

.fa-database:before {
	content: ""
}

.fa-file-pdf-o:before {
	content: ""
}

.fa-file-word-o:before {
	content: ""
}

.fa-file-excel-o:before {
	content: ""
}

.fa-file-powerpoint-o:before {
	content: ""
}

.fa-file-image-o:before, .fa-file-photo-o:before, .fa-file-picture-o:before
	{
	content: ""
}

.fa-file-archive-o:before, .fa-file-zip-o:before {
	content: ""
}

.fa-file-audio-o:before, .fa-file-sound-o:before {
	content: ""
}

.fa-file-movie-o:before, .fa-file-video-o:before {
	content: ""
}

.fa-file-code-o:before {
	content: ""
}

.fa-vine:before {
	content: ""
}

.fa-codepen:before {
	content: ""
}

.fa-jsfiddle:before {
	content: ""
}

.fa-life-bouy:before, .fa-life-buoy:before, .fa-life-ring:before,
	.fa-life-saver:before, .fa-support:before {
	content: ""
}

.fa-circle-o-notch:before {
	content: ""
}

.fa-ra:before, .fa-rebel:before, .fa-resistance:before {
	content: ""
}

.fa-empire:before, .fa-ge:before {
	content: ""
}

.fa-git-square:before {
	content: ""
}

.fa-git:before {
	content: ""
}

.fa-hacker-news:before, .fa-y-combinator-square:before, .fa-yc-square:before
	{
	content: ""
}

.fa-tencent-weibo:before {
	content: ""
}

.fa-qq:before {
	content: ""
}

.fa-wechat:before, .fa-weixin:before {
	content: ""
}

.fa-paper-plane:before, .fa-send:before {
	content: ""
}

.fa-paper-plane-o:before, .fa-send-o:before {
	content: ""
}

.fa-history:before {
	content: ""
}

.fa-circle-thin:before {
	content: ""
}

.fa-header:before {
	content: ""
}

.fa-paragraph:before {
	content: ""
}

.fa-sliders:before {
	content: ""
}

.fa-share-alt:before {
	content: ""
}

.fa-share-alt-square:before {
	content: ""
}

.fa-bomb:before {
	content: ""
}

.fa-futbol-o:before, .fa-soccer-ball-o:before {
	content: ""
}

.fa-tty:before {
	content: ""
}

.fa-binoculars:before {
	content: ""
}

.fa-plug:before {
	content: ""
}

.fa-slideshare:before {
	content: ""
}

.fa-twitch:before {
	content: ""
}

.fa-yelp:before {
	content: ""
}

.fa-newspaper-o:before {
	content: ""
}

.fa-wifi:before {
	content: ""
}

.fa-calculator:before {
	content: ""
}

.fa-paypal:before {
	content: ""
}

.fa-google-wallet:before {
	content: ""
}

.fa-cc-visa:before {
	content: ""
}

.fa-cc-mastercard:before {
	content: ""
}

.fa-cc-discover:before {
	content: ""
}

.fa-cc-amex:before {
	content: ""
}

.fa-cc-paypal:before {
	content: ""
}

.fa-cc-stripe:before {
	content: ""
}

.fa-bell-slash:before {
	content: ""
}

.fa-bell-slash-o:before {
	content: ""
}

.fa-trash:before {
	content: ""
}

.fa-copyright:before {
	content: ""
}

.fa-at:before {
	content: ""
}

.fa-eyedropper:before {
	content: ""
}

.fa-paint-brush:before {
	content: ""
}

.fa-birthday-cake:before {
	content: ""
}

.fa-area-chart:before {
	content: ""
}

.fa-pie-chart:before {
	content: ""
}

.fa-line-chart:before {
	content: ""
}

.fa-lastfm:before {
	content: ""
}

.fa-lastfm-square:before {
	content: ""
}

.fa-toggle-off:before {
	content: ""
}

.fa-toggle-on:before {
	content: ""
}

.fa-bicycle:before {
	content: ""
}

.fa-bus:before {
	content: ""
}

.fa-ioxhost:before {
	content: ""
}

.fa-angellist:before {
	content: ""
}

.fa-cc:before {
	content: ""
}

.fa-ils:before, .fa-shekel:before, .fa-sheqel:before {
	content: ""
}

.fa-meanpath:before {
	content: ""
}

.fa-buysellads:before {
	content: ""
}

.fa-connectdevelop:before {
	content: ""
}

.fa-dashcube:before {
	content: ""
}

.fa-forumbee:before {
	content: ""
}

.fa-leanpub:before {
	content: ""
}

.fa-sellsy:before {
	content: ""
}

.fa-shirtsinbulk:before {
	content: ""
}

.fa-simplybuilt:before {
	content: ""
}

.fa-skyatlas:before {
	content: ""
}

.fa-cart-plus:before {
	content: ""
}

.fa-cart-arrow-down:before {
	content: ""
}

.fa-diamond:before {
	content: ""
}

.fa-ship:before {
	content: ""
}

.fa-user-secret:before {
	content: ""
}

.fa-motorcycle:before {
	content: ""
}

.fa-street-view:before {
	content: ""
}

.fa-heartbeat:before {
	content: ""
}

.fa-venus:before {
	content: ""
}

.fa-mars:before {
	content: ""
}

.fa-mercury:before {
	content: ""
}

.fa-intersex:before, .fa-transgender:before {
	content: ""
}

.fa-transgender-alt:before {
	content: ""
}

.fa-venus-double:before {
	content: ""
}

.fa-mars-double:before {
	content: ""
}

.fa-venus-mars:before {
	content: ""
}

.fa-mars-stroke:before {
	content: ""
}

.fa-mars-stroke-v:before {
	content: ""
}

.fa-mars-stroke-h:before {
	content: ""
}

.fa-neuter:before {
	content: ""
}

.fa-genderless:before {
	content: ""
}

.fa-facebook-official:before {
	content: ""
}

.fa-pinterest-p:before {
	content: ""
}

.fa-whatsapp:before {
	content: ""
}

.fa-server:before {
	content: ""
}

.fa-user-plus:before {
	content: ""
}

.fa-user-times:before {
	content: ""
}

.fa-bed:before, .fa-hotel:before {
	content: ""
}

.fa-viacoin:before {
	content: ""
}

.fa-train:before {
	content: ""
}

.fa-subway:before {
	content: ""
}

.fa-medium:before {
	content: ""
}

.fa-y-combinator:before, .fa-yc:before {
	content: ""
}

.fa-optin-monster:before {
	content: ""
}

.fa-opencart:before {
	content: ""
}

.fa-expeditedssl:before {
	content: ""
}

.fa-battery-4:before, .fa-battery-full:before, .fa-battery:before {
	content: ""
}

.fa-battery-3:before, .fa-battery-three-quarters:before {
	content: ""
}

.fa-battery-2:before, .fa-battery-half:before {
	content: ""
}

.fa-battery-1:before, .fa-battery-quarter:before {
	content: ""
}

.fa-battery-0:before, .fa-battery-empty:before {
	content: ""
}

.fa-mouse-pointer:before {
	content: ""
}

.fa-i-cursor:before {
	content: ""
}

.fa-object-group:before {
	content: ""
}

.fa-object-ungroup:before {
	content: ""
}

.fa-sticky-note:before {
	content: ""
}

.fa-sticky-note-o:before {
	content: ""
}

.fa-cc-jcb:before {
	content: ""
}

.fa-cc-diners-club:before {
	content: ""
}

.fa-clone:before {
	content: ""
}

.fa-balance-scale:before {
	content: ""
}

.fa-hourglass-o:before {
	content: ""
}

.fa-hourglass-1:before, .fa-hourglass-start:before {
	content: ""
}

.fa-hourglass-2:before, .fa-hourglass-half:before {
	content: ""
}

.fa-hourglass-3:before, .fa-hourglass-end:before {
	content: ""
}

.fa-hourglass:before {
	content: ""
}

.fa-hand-grab-o:before, .fa-hand-rock-o:before {
	content: ""
}

.fa-hand-paper-o:before, .fa-hand-stop-o:before {
	content: ""
}

.fa-hand-scissors-o:before {
	content: ""
}

.fa-hand-lizard-o:before {
	content: ""
}

.fa-hand-spock-o:before {
	content: ""
}

.fa-hand-pointer-o:before {
	content: ""
}

.fa-hand-peace-o:before {
	content: ""
}

.fa-trademark:before {
	content: ""
}

.fa-registered:before {
	content: ""
}

.fa-creative-commons:before {
	content: ""
}

.fa-gg:before {
	content: ""
}

.fa-gg-circle:before {
	content: ""
}

.fa-tripadvisor:before {
	content: ""
}

.fa-odnoklassniki:before {
	content: ""
}

.fa-odnoklassniki-square:before {
	content: ""
}

.fa-get-pocket:before {
	content: ""
}

.fa-wikipedia-w:before {
	content: ""
}

.fa-safari:before {
	content: ""
}

.fa-chrome:before {
	content: ""
}

.fa-firefox:before {
	content: ""
}

.fa-opera:before {
	content: ""
}

.fa-internet-explorer:before {
	content: ""
}

.fa-television:before, .fa-tv:before {
	content: ""
}

.fa-contao:before {
	content: ""
}

.fa-500px:before {
	content: ""
}

.fa-amazon:before {
	content: ""
}

.fa-calendar-plus-o:before {
	content: ""
}

.fa-calendar-minus-o:before {
	content: ""
}

.fa-calendar-times-o:before {
	content: ""
}

.fa-calendar-check-o:before {
	content: ""
}

.fa-industry:before {
	content: ""
}

.fa-map-pin:before {
	content: ""
}

.fa-map-signs:before {
	content: ""
}

.fa-map-o:before {
	content: ""
}

.fa-map:before {
	content: ""
}

.fa-commenting:before {
	content: ""
}

.fa-commenting-o:before {
	content: ""
}

.fa-houzz:before {
	content: ""
}

.fa-vimeo:before {
	content: ""
}

.fa-black-tie:before {
	content: ""
}

.fa-fonticons:before {
	content: ""
}

.fa-reddit-alien:before {
	content: ""
}

.fa-edge:before {
	content: ""
}

.fa-credit-card-alt:before {
	content: ""
}

.fa-codiepie:before {
	content: ""
}

.fa-modx:before {
	content: ""
}

.fa-fort-awesome:before {
	content: ""
}

.fa-usb:before {
	content: ""
}

.fa-product-hunt:before {
	content: ""
}

.fa-mixcloud:before {
	content: ""
}

.fa-scribd:before {
	content: ""
}

.fa-pause-circle:before {
	content: ""
}

.fa-pause-circle-o:before {
	content: ""
}

.fa-stop-circle:before {
	content: ""
}

.fa-stop-circle-o:before {
	content: ""
}

.fa-shopping-bag:before {
	content: ""
}

.fa-shopping-basket:before {
	content: ""
}

.fa-hashtag:before {
	content: ""
}

.fa-bluetooth:before {
	content: ""
}

.fa-bluetooth-b:before {
	content: ""
}

.fa-percent:before {
	content: ""
}

.fa-gitlab:before {
	content: ""
}

.fa-wpbeginner:before {
	content: ""
}

.fa-wpforms:before {
	content: ""
}

.fa-envira:before {
	content: ""
}

.fa-universal-access:before {
	content: ""
}

.fa-wheelchair-alt:before {
	content: ""
}

.fa-question-circle-o:before {
	content: ""
}

.fa-blind:before {
	content: ""
}

.fa-audio-description:before {
	content: ""
}

.fa-volume-control-phone:before {
	content: ""
}

.fa-braille:before {
	content: ""
}

.fa-assistive-listening-systems:before {
	content: ""
}

.fa-american-sign-language-interpreting:before, .fa-asl-interpreting:before
	{
	content: ""
}

.fa-deaf:before, .fa-deafness:before, .fa-hard-of-hearing:before {
	content: ""
}

.fa-glide:before {
	content: ""
}

.fa-glide-g:before {
	content: ""
}

.fa-sign-language:before, .fa-signing:before {
	content: ""
}

.fa-low-vision:before {
	content: ""
}

.fa-viadeo:before {
	content: ""
}

.fa-viadeo-square:before {
	content: ""
}

.fa-snapchat:before {
	content: ""
}

.fa-snapchat-ghost:before {
	content: ""
}

.fa-snapchat-square:before {
	content: ""
}

.fa-pied-piper:before {
	content: ""
}

.fa-first-order:before {
	content: ""
}

.fa-yoast:before {
	content: ""
}

.fa-themeisle:before {
	content: ""
}

.fa-google-plus-circle:before, .fa-google-plus-official:before {
	content: ""
}

.fa-fa:before, .fa-font-awesome:before {
	content: ""
}

.fa-handshake-o:before {
	content: ""
}

.fa-envelope-open:before {
	content: ""
}

.fa-envelope-open-o:before {
	content: ""
}

.fa-linode:before {
	content: ""
}

.fa-address-book:before {
	content: ""
}

.fa-address-book-o:before {
	content: ""
}

.fa-address-card:before, .fa-vcard:before {
	content: ""
}

.fa-address-card-o:before, .fa-vcard-o:before {
	content: ""
}

.fa-user-circle:before {
	content: ""
}

.fa-user-circle-o:before {
	content: ""
}

.fa-user-o:before {
	content: ""
}

.fa-id-badge:before {
	content: ""
}

.fa-drivers-license:before, .fa-id-card:before {
	content: ""
}

.fa-drivers-license-o:before, .fa-id-card-o:before {
	content: ""
}

.fa-quora:before {
	content: ""
}

.fa-free-code-camp:before {
	content: ""
}

.fa-telegram:before {
	content: ""
}

.fa-thermometer-4:before, .fa-thermometer-full:before, .fa-thermometer:before
	{
	content: ""
}

.fa-thermometer-3:before, .fa-thermometer-three-quarters:before {
	content: ""
}

.fa-thermometer-2:before, .fa-thermometer-half:before {
	content: ""
}

.fa-thermometer-1:before, .fa-thermometer-quarter:before {
	content: ""
}

.fa-thermometer-0:before, .fa-thermometer-empty:before {
	content: ""
}

.fa-shower:before {
	content: ""
}

.fa-bath:before, .fa-bathtub:before, .fa-s15:before {
	content: ""
}

.fa-podcast:before {
	content: ""
}

.fa-window-maximize:before {
	content: ""
}

.fa-window-minimize:before {
	content: ""
}

.fa-window-restore:before {
	content: ""
}

.fa-times-rectangle:before, .fa-window-close:before {
	content: ""
}

.fa-times-rectangle-o:before, .fa-window-close-o:before {
	content: ""
}

.fa-bandcamp:before {
	content: ""
}

.fa-grav:before {
	content: ""
}

.fa-etsy:before {
	content: ""
}

.fa-imdb:before {
	content: ""
}

.fa-ravelry:before {
	content: ""
}

.fa-eercast:before {
	content: ""
}

.fa-microchip:before {
	content: ""
}

.fa-snowflake-o:before {
	content: ""
}

.fa-superpowers:before {
	content: ""
}

.fa-wpexplorer:before {
	content: ""
}

.fa-meetup:before {
	content: ""
}

html {
	font-size: 12px;
	font-smallooth: always;
	-webkit-font-smalloothing: antialiased;
	-moz-osx-font-smalloothing: grayscale
}

body, html {
	text-rendering: optimizeLegibility
}

body {
	color: #424242;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.3;
	-webkit-font-feature-settings: "calt" 1;
	-moz-font-feature-settings: "calt" 1;
	font-feature-settings: "calt" 1;
	letter-spacing: .02rem
}

p {
	margin: 0 0 1.25rem
}

a {
	color: #29b6f6;
	text-decoration: none
}

a:focus, a:hover {
	color: #0288d1;
	text-decoration: underline
}

b, strong {
	font-weight: 700
}

h1, h2, h3, h4, h5, h6 {
	font-family: Montserrat, Roboto, Helvetica, Arial, sans-serif;
	font-weight: 700;
	margin: 1.25rem 0
}

h1 {
	font-size: 2rem
}

h2 {
	font-size: 1.66667rem
}

h3 {
	font-size: 1.41667rem
}

h4 {
	font-size: 1.25rem
}

h5 {
	font-size: 1.16667rem
}

h6 {
	font-size: 1rem
}

em {
	font-style: italic
}

small {
	font-size: 80%;
	color: #999
}

img {
	border: 0
}

big {
	font-size: 120%
}

abbr {
	border-bottom: 1px dashed #29b6f6;
	background-color: #f2f2f2;
	cursor: help
}

code, pre {
	font-family: Fira Code, Menlo, Monaco, Courier New, Courier, monospace
}

code {
	border-radius: 2px;
	color: #757575;
	padding: .41667rem .83333rem
}

code, pre {
	background-color: #f2f2f2
}

pre {
	margin-top: 0;
	margin-bottom: 1rem;
	font-size: .8571rem;
	padding: 1.25rem;
	overflow: auto
}

pre code {
	color: inherit;
	font-size: inherit;
	background: none;
	border-radius: 0;
	padding: 0
}

blockquote {
	padding: 1.25rem;
	text-align: center;
	font-size: 1.41667rem;
	background-color: hsla(0, 0%, 95%, .8);
	margin: 0 0 1.66667rem;
	-webkit-transition: background-color .15s linear;
	transition: background-color .15s linear
}

blockquote:hover {
	background-color: hsla(0, 0%, 95%, .4)
}

blockquote :last-child {
	margin-bottom: 0
}

.ta-left {
	text-align: left !important
}

.ta-right {
	text-align: right !important
}

.ta-center {
	text-align: center !important
}

.ff-base {
	font-family: Lato, Arial, Helvetica, sans-serif !important
}

.ff-serif {
	font-family: Georgia, Times New Roman, Times, serif !important
}

.ff-regular, .fw-normal, .fw-regular {
	font-weight: 400 !important
}

.fw-light {
	font-weight: 300 !important
}

.ff-bold, .fw-bold {
	font-weight: 700 !important
}

.fz-small {
	font-size: .8571rem
}

.fz-xsmall {
	font-size: .7143rem
}

.fz-base {
	font-size: 1rem
}

.fz-large {
	font-size: 1.143rem
}

.td-none {
	text-decoration: none
}

.td-underline {
	text-decoration: underline
}

.td-through {
	text-decoration: line-through
}

.c-default {
	color: #424242 !important
}

.c-lkd {
	color: #ffc107 !important
}

.c-primary {
	color: #0288d1 !important
}

.c-success {
	color: #4caf50 !important
}

.c-danger {
	color: #e53935 !important
}

.c-warning {
	color: #f57c00 !important
}

.c-info {
	color: #29b6f6 !important
}

.f-left {
	float: left !important
}

.f-right {
	float: right !important
}

.dspNone, .hidden, .hide {
	display: none
}

.show {
	display: block
}

.d-none {
	display: none !important
}

.d-block {
	display: block !important
}

.d-inline-block {
	display: inline-block !important
}

.bd-circle {
	border-radius: 50%
}

.bd-round-small {
	border-radius: 2px
}

.bd-round-base {
	border-radius: 4px
}

.bd-round-large {
	border-radius: 6px
}

.bd {
	border: 1px solid #ccc
}

.bd-top, .border-top {
	border-top: 1px solid #ccc
}

.bd-right {
	border-right: 1px solid #ccc
}

.bd-bottom {
	border-bottom: 1px solid #ccc
}

.bd-left {
	border-left: 1px solid #ccc
}

.bd-none {
	border: none !important
}

.bd-top-none {
	border-top: none !important
}

.bd-right-none {
	border-right: none !important
}

.bd-bottom-none {
	border-bottom: none !important
}

.bd-left-none {
	border-left: none !important
}

.m-none {
	margin: 0 !important
}

.m-top-none {
	margin-top: 0 !important
}

.m-right-none {
	margin-right: 0 !important
}

.m-bottom-none {
	margin-bottom: 0 !important
}

.m-left-none {
	margin-left: 0 !important
}

.p-none {
	padding: 0 !important
}

.p-top-none {
	padding-top: 0 !important
}

.p-right-none {
	padding-right: 0 !important
}

.p-bottom-none {
	padding-bottom: 0 !important
}

.p-left-none {
	padding-left: 0 !important
}

.m-xsmall {
	margin: 10px !important
}

.m-small {
	margin: 15px !important
}

.m-base {
	margin: 20px !important
}

.m-large {
	margin: 40px !important
}

.m-xlarge {
	margin: 60px !important
}

.m-top-xsmall {
	margin-top: 10px !important
}

.m-top-small {
	margin-top: 15px !important
}

.m-top-base {
	margin-top: 20px !important
}

.m-top-large {
	margin-top: 40px !important
}

.m-top-xlarge {
	margin-top: 60px !important
}

.m-right-xsmall {
	margin-right: 10px !important
}

.m-right-small {
	margin-right: 15px !important
}

.m-right-base {
	margin-right: 20px !important
}

.m-right-large {
	margin-right: 40px !important
}

.m-right-xlarge {
	margin-right: 60px !important
}

.m-bottom-xsmall {
	margin-bottom: 10px !important
}

.m-bottom-small {
	margin-bottom: 15px !important
}

.m-bottom-base {
	margin-bottom: 20px !important
}

.m-bottom-large {
	margin-bottom: 40px !important
}

.m-bottom-xlarge {
	margin-bottom: 60px !important
}

.m-left-xsmall {
	margin-left: 10px !important
}

.m-left-small {
	margin-left: 15px !important
}

.m-left-base {
	margin-left: 20px !important
}

.m-left-large {
	margin-left: 40px !important
}

.m-left-xlarge {
	margin-left: 60px !important
}

.p-xsmall {
	padding: 10px !important
}

.p-small {
	padding: 15px !important
}

.p-base {
	padding: 20px !important
}

.p-large {
	padding: 40px !important
}

.p-xlarge {
	padding: 60px !important
}

.p-top-xsmall {
	padding-top: 10px !important
}

.p-top-small {
	padding-top: 15px !important
}

.p-top-base {
	padding-top: 20px !important
}

.p-top-large {
	padding-top: 40px !important
}

.p-top-xlarge {
	padding-top: 60px !important
}

.p-right-xsmall {
	padding-right: 10px !important
}

.p-right-small {
	padding-right: 15px !important
}

.p-right-base {
	padding-right: 20px !important
}

.p-right-large {
	padding-right: 40px !important
}

.p-right-xlarge {
	padding-right: 60px !important
}

.p-bottom-xsmall {
	padding-bottom: 10px !important
}

.p-bottom-small {
	padding-bottom: 15px !important
}

.p-bottom-base {
	padding-bottom: 20px !important
}

.p-bottom-large {
	padding-bottom: 40px !important
}

.p-bottom-xlarge {
	padding-bottom: 60px !important
}

.p-left-xsmall {
	padding-left: 10px !important
}

.p-left-small {
	padding-left: 15px !important
}

.p-left-base {
	padding-left: 20px !important
}

.p-left-large {
	padding-left: 40px !important
}

.p-left-xlarge {
	padding-left: 60px !important
}

.m-header-fixed {
	margin-top: 150px !important
}

.m-header-fixed--small {
	margin-top: 120px !important
}

.p-header-fixed {
	padding-top: 150px !important
}

.p-header-fixed--small {
	padding-top: 120px !important
}

.bg-none {
	background-color: none !important
}

.bg-white {
	background-color: #fff !important
}

.bg-silver {
	background-color: #f2f2f2 !important
}

.bg-lkd {
	background-color: #ffc107 !important
}

.bg-primary {
	background-color: #0288d1 !important
}

body {
	overflow-x: hidden
}

.no-scroll {
	overflow: hidden !important
}

.bx-border-box {
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.inner-spacing {
	padding: 15px
}

.modal-backdrop {
	position: fixed !important;
	bottom: 0
}

.bold, .font-bold, .lkd-bold {
	font-weight: 700
}

.hidden {
	display: none
}

.hidden-seals, .is-hidden {
	display: none !important
}

.list-inline, .list-unstyled {
	list-style: none;
	padding: 0;
	margin: 0
}

.list-inline>li {
	display: inline-block;
	padding-right: 5px;
	padding-left: 5px
}

.block, .show {
	display: block
}

.is-show {
	display: block !important
}

.inline-block {
	display: inline-block
}

.pointer {
	cursor: pointer
}

.font9 {
	font-size: 9px !important;
	margin: 0
}

.font10 {
	font-size: 10px !important;
	margin: 0
}

.font11 {
	font-size: 11px !important;
	margin: 0
}

.font12 {
	font-size: 12px !important;
	margin: 0
}

.font14 {
	font-size: 14px !important;
	margin: 0
}

.font16 {
	font-size: 16px !important;
	margin: 0
}

.font18 {
	font-size: 18px !important;
	font-weight: 700;
	font-weight: 400 !important;
	margin: 0
}

.font20 {
	font-size: 20px !important;
	margin: 0
}

.font21 {
	font-size: 21px !important;
	margin: 0
}

.font22 {
	font-size: 22px !important;
	margin: 0
}

.font24 {
	font-size: 24px !important;
	margin: 0
}

.font42 {
	font-size: 42px !important;
	margin: 0
}

.fonteNormal {
	font-family: Lato, Arial, Helvetica, sans-serif;
	margin: 0
}

.fonteNormal, .fonteNormal:hover {
	text-transform: none;
	text-decoration: none !important;
	font-weight: 400
}

.hidden-text {
	text-indent: -999px !important;
	overflow: hidden !important
}

.left, .pull-left {
	float: left !important
}

.center, .text-center {
	text-align: center !important
}

.pull-right, .right {
	float: right !important
}

.clear, .clearfloater {
	clear: both
}

.clearLeft {
	clear: left
}

.clearNone {
	clear: both;
	height: 1px;
	margin: -1px 0 0;
	overflow: hidden
}

.no-margin {
	margin: 0
}

.marginRight5 {
	margin-right: 5px !important
}

.marginRight15 {
	margin-right: 15px !important
}

.marginLeft5 {
	margin-left: 5px !important
}

.marginLeft10 {
	margin-left: 10px !important
}

.marginLeft15 {
	margin-left: 15px !important
}

.marginLeft20 {
	margin-left: 20px !important
}

.marginLeft25 {
	margin-left: 25px !important
}

.marginBottom30 {
	margin-bottom: 30px !important
}

.marginBottom40 {
	margin-bottom: 40px !important
}

.marginTop5 {
	margin-top: 5px !important
}

.marginTop10 {
	margin-top: 10px !important
}

.marginTop15 {
	margin-top: 15px !important
}

.marginTop20 {
	margin-top: 20px !important
}

.marginTop25 {
	margin-top: 25px !important
}

.marginTop30 {
	margin-top: 30px !important
}

.marginTop35 {
	margin-top: 35px !important
}

.marginTop40 {
	margin-top: 40px !important
}

.text-upper, .uppercase {
	text-transform: uppercase !important
}

.lowercase, .text-lower {
	text-transform: lowercase !important
}

.capitalize, .text-capit {
	text-transform: capitalize !important
}

.text_black {
	color: #000 !important
}

.erroMensagens, .text_red {
	color: red !important
}

.text_dark_red {
	color: #bf0000 !important
}

.text_pastel_red {
	color: #d9121e !important
}

.text_green {
	color: #1a8662 !important
}

.text_blue {
	color: #2370b8 !important
}

.text_blue_dark {
	color: #4d70b8 !important
}

.text_yellow {
	color: #ffe01a !important
}

.text_yellow_dark {
	color: #ffc61a !important
}

.text_gold {
	color: #ffbd00 !important
}

.text_gray, .text_gray_dark {
	color: #424242 !important
}

.text_ligth_gray {
	color: gray !important
}

.text_white {
	color: #fff !important
}

.lk_gray_blue, .lk_gray_blue * {
	color: #424242
}

.bg_white {
	background-color: #fff !important
}

.bg_gray {
	background-color: #f2f2f2 !important
}

.bg-red {
	background: #ee303c !important
}

.bg-red-ligth {
	background: #ffd4d3 !important
}

.bg-cinza {
	background: #f2f2f2 !important
}

.bg-cinza-escuro {
	background: #e0e0e0 !important
}

.bg-blue {
	background: #2370b8 !important
}

.bg-white-smoke {
	background: #f5f5f5 !important
}

.bg-review {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/campanhas/mobile/sprite_mobile.png)
		0 0 no-repeat
}

.u-hidden {
	display: none !important
}

.u-show {
	display: block !important
}

.u-pull-left {
	float: left !important
}

.u-pull-right {
	float: right !important
}

.u-fw-light {
	font-weight: 300 !important
}

.u-fw-normal {
	font-weight: 400 !important
}

.u-fw-bold {
	font-weight: 700 !important
}

.u-highlight {
	color: #424242;
	padding: 0 .83333rem;
	border-radius: 2px;
	background-color: #fff9e6
}

.u-ta-left {
	text-align: left !important
}

.u-ta-right {
	text-align: right !important
}

.u-ta-center {
	text-align: center !important
}

hr {
	border: none;
	border-bottom: 1px solid #f2f2f2;
	margin: 1.66667rem 0
}

body, html {
	font-size: 13px
}

body {
	background-color: #fff;
	font-family: Lato, Arial, Helvetica, sans-serif
}

body.login.fechamento {
	min-width: 1024px
}

h1, h2, h3, h4, h5, h6 {
	margin-top: 0
}

.vitrine {
	padding-top: 15px
}

a:active, a:focus, a:hover {
	text-decoration: none
}

.container, .lkd-container {
	width: 1030px;
	margin-left: auto;
	margin-right: auto;
	padding-right: 15px;
	padding-left: 15px
}

.container {
	width: 1000px
}

.lkd-logo {
	float: left;
	display: inline-block
}

.lkd-logo img {
	width: 180px;
	height: auto
}

.lkd-logo--small img {
	width: 130px
}

img {
	max-width: none
}

.topomaster {
	width: 50px;
	height: 70px;
	cursor: pointer;
	display: block;
	background-position: -1572px -1625px !important;
	position: absolute;
	right: -80px;
	bottom: 0
}

.lkd-seo-expander p strong {
	font-size: 16px
}

.lkd-seo-expander__center {
	display: block;
	float: none;
	text-align: center;
	padding-left: 140px;
	padding-right: 140px
}

#boxLight, #dark {
	position: fixed !important
}

#dark {
	z-index: 40000 !important
}

#boxLight {
	z-index: 50000 !important
}

.lkd-noty {
	z-index: 10000;
	position: fixed;
	right: 20px;
	bottom: 70px
}

.lkd-noty li {
	min-height: 39px !important;
	background-color: transparent !important
}

.lkd-noty .noty_type_error, .lkd-noty .noty_type_information, .lkd-noty .noty_type_notification,
	.lkd-noty .noty_type_success, .lkd-noty .noty_type_warning {
	color: #fff
}

.lkd-noty .noty_type_success {
	background-color: #4caf50
}

.lkd-noty .noty_type_error {
	background-color: #d32f2f
}

.lkd-noty .noty_type_warning {
	background-color: #f57c00
}

.lkd-noty .noty_type_information, .lkd-noty .noty_type_notification {
	background-color: #039be5
}

ol.kr-list, ul.kr-list {
	padding-left: 1.66667rem;
	margin-bottom: 1.25rem
}

ol li ol, ol li ul, ul li ol, ul li ul {
	padding-left: 1.25rem;
	margin-bottom: 0
}

ul.kr-list {
	list-style: disc
}

ol.kr-list {
	list-style: decimal
}

.lkd-navbar {
	padding: 0;
	position: relative
}

.lkd-navbar--primary {
	background-color: #fff;
	-webkit-box-shadow: 0 4px 7px 0 hsla(0, 0%, 46%, .15);
	box-shadow: 0 4px 7px 0 hsla(0, 0%, 46%, .15);
	text-align: center
}

.lkd-navbar--primary .lkd-nav__link {
	line-height: 45px;
	display: block
}

.lkd-navbar--primary .lkd-nav__link span {
	line-height: 1.2;
	vertical-align: middle;
	display: inline-block
}

.lkd-navbar--primary .lkd-nav__icon--position {
	position: absolute;
	top: 50%;
	right: 0;
	margin-top: -5px
}

.lkd-navbar--primary .lkd-nav__item--fixed-width>a {
	width: 88px
}

.lkd-navbar--primary .lkd-nav__item--highlights>.lkd-nav__link {
	background-color: #0288d1;
	border-left: 1px solid #ccc;
	border-right: 1px solid #ccc;
	color: #fff;
	font-weight: 700;
	text-transform: uppercase;
	letter-spacing: -.01em;
	padding: 0 12px
}

.lkd-navbar--primary .lkd-nav__item:first-child>a {
	width: 60px
}

.lkd-navbar--primary .lkd-nav__item:nth-child(2)>a {
	width: 80px;
	padding-left: 15px;
	padding-right: 15px
}

.lkd-navbar--primary .lkd-nav__item:nth-child(5)>a {
	width: 65px
}

.lkd-navbar--primary .lkd-nav__item:nth-child(3)>a, .lkd-navbar--primary .lkd-nav__item:nth-child(4)>a,
	.lkd-navbar--primary .lkd-nav__item:nth-child(6)>a {
	width: 78px
}

.lkd-navbar--top {
	background-color: #ffd600;
	position: relative;
	z-index: 12;
	line-height: 25px;
	padding: 0
}

.lkd-navbar--top .lkd-nav {
	line-height: 25px
}

.lkd-navbar--top .lkd-nav__item {
	font-size: 12px;
	padding: 0
}

.lkd-navbar--top .lkd-nav__link {
	color: #111;
	line-height: 25px;
	padding: 0 12px
}

.lkd-navbar--top .lkd-nav--right .lkd-nav__item>a:before {
	content: "";
	height: 3px;
	width: 100%;
	background-color: transparent;
	position: absolute;
	top: 0;
	right: 0;
	left: 0
}

.lkd-navbar--top .lkd-nav--right .lkd-nav__item:hover a:before {
	background-color: #2370b8
}

.lkd-navbar--top .lkd-nav__item--dropdown {
	position: relative
}

.lkd-navbar--top .lkd-nav__item--dropdown .lkd-dropdown {
	right: 0;
	left: auto;
	background-color: #fff;
	border-left: 1px solid #ccc;
	border-right: 1px solid #ccc;
	padding: 15px
}

.lkd-navbar--top .lkd-nav__item--dropdown .lkd-dropdown .lkd-dropdown__title
	{
	font-weight: 700;
	margin: 0
}

.lkd-navbar--top .lkd-nav__item--dropdown .lkd-dropdown .attendance-phone
	{
	font-weight: 700;
	font-size: 16px
}

.lkd-navbar--top .lkd-nav__item--dropdown .lkd-dropdown p {
	font-size: 10px
}

.lkd-nav {
	line-height: 45px;
	margin: 0;
	padding: 0
}

.lkd-nav, .lkd-nav li {
	list-style: none
}

.lkd-nav__item {
	display: inline-block;
	padding: 0
}

.lkd-nav__item--dropdown .lkd-dropdown {
	position: absolute;
	top: 99%;
	left: 0;
	right: 0;
	opacity: 0;
	-webkit-box-shadow: 0 4px 7px 0 hsla(0, 0%, 46%, .15);
	box-shadow: 0 4px 7px 0 hsla(0, 0%, 46%, .15);
	visibility: hidden;
	-webkit-transition: all .35s cubic-bezier(.76, .03, 0, .65);
	transition: all .35s cubic-bezier(.76, .03, 0, .65);
	-webkit-transition-delay: .15s;
	transition-delay: .15s
}

.lkd-nav__item--dropdown:hover .lkd-dropdown, .lkd-nav__item--dropdown:hover .lkd-dropdown--banners,
	.lkd-nav__item--dropdown:hover .lkd-nav__link:after,
	.lkd-nav__item--dropdown:hover .lkd-nav__link:before {
	visibility: visible;
	opacity: 1
}

.lkd-nav__item--dropdown:hover span>i {
	-webkit-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
	transform: rotate(-180deg);
	display: inline-block;
	-webkit-transition: all .35s cubic-bezier(.76, .03, 0, .65);
	transition: all .35s cubic-bezier(.76, .03, 0, .65);
	-webkit-transition-delay: .15s;
	transition-delay: .15s
}

.lkd-nav__link {
	display: inline-block;
	line-height: 1.3;
	text-align: center;
	position: relative;
	color: #434343;
	padding: 0
}

.lkd-nav__link:active, .lkd-nav__link:hover {
	text-decoration: none !important;
	color: #2370b8
}

.lkd-nav--left {
	float: left
}

.lkd-nav--left .lkd-nav__item:first-child {
	padding-left: 0
}

.lkd-nav--right {
	float: right
}

.lkd-nav--right .lkd-nav__item:last-child {
	padding-right: 0
}

.lkd-nav--flex {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center
}

.lkd-customer-navbar {
	position: relative;
	z-index: 4
}

.lkd-customer-navbar span {
	line-height: 1.3
}

.lkd-customer-navbar__button {
	line-height: 1.3;
	font-size: 12px;
	border: 1px solid transparent;
	border-top: 5px solid transparent;
	padding: 5px 15px;
	display: block;
	position: relative
}

.lkd-customer-navbar .lkd-dropdown, .lkd-customer-navbar__button {
	-webkit-transition: all .35s cubic-bezier(.76, .03, 0, .65);
	transition: all .35s cubic-bezier(.76, .03, 0, .65);
	-webkit-transition-delay: .15s;
	transition-delay: .15s
}

.lkd-customer-navbar .lkd-dropdown {
	border: 1px solid #ccc;
	position: absolute;
	top: 100%;
	right: 0;
	opacity: 0;
	visibility: hidden;
	-webkit-transform: translate3d(0, -10px, 0);
	transform: translate3d(0, -10px, 0)
}

.lkd-customer-navbar__username {
	width: 72px;
	display: inline-block;
	vertical-align: middle
}

.lkd-customer-navbar--dropdown:after {
	content: "";
	background-color: #fff;
	height: 6px;
	margin-bottom: -2px;
	border-left: 1px solid #ccc;
	border-right: 1px solid #ccc;
	z-index: 10;
	opacity: 0;
	visibility: hidden;
	-webkit-transition: all .35s cubic-bezier(.76, .03, 0, .65);
	transition: all .35s cubic-bezier(.76, .03, 0, .65);
	-webkit-transition-delay: .15s;
	transition-delay: .15s;
	position: absolute;
	right: 0;
	bottom: 0;
	left: 0
}

.lkd-customer-navbar--dropdown:active .lkd-customer-navbar__button,
	.lkd-customer-navbar--dropdown:hover .lkd-customer-navbar__button {
	border-color: #e1e1e1;
	border-top-color: #2370b8
}

.lkd-customer-navbar--dropdown:active .lkd-dropdown,
	.lkd-customer-navbar--dropdown:active:after,
	.lkd-customer-navbar--dropdown:hover .lkd-dropdown,
	.lkd-customer-navbar--dropdown:hover:after {
	visibility: visible;
	opacity: 1
}

.lkd-customer-navbar--dropdown:active .lkd-dropdown,
	.lkd-customer-navbar--dropdown:hover .lkd-dropdown {
	-webkit-transform: translateZ(0);
	transform: translateZ(0)
}

.lkd-customer-navbar .lkd-dropdown__item, .lkd-customer-navbar .lkd-dropdown__link
	{
	display: block
}

.lkd-customer-navbar .lkd-dropdown__link {
	padding: 6px 15px;
	-webkit-transition: background-color .15s cubic-bezier(.76, .03, 0, .65);
	transition: background-color .15s cubic-bezier(.76, .03, 0, .65)
}

.lkd-customer-navbar .lkd-dropdown__link:hover {
	background-color: #f1f1f1;
	text-decoration: none !important
}

.lkd-header {
	background-color: #fff;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	position: relative;
	z-index: 999;
	padding: 0;
	margin: 0
}

.lkd-header .lkd-badge {
	display: inline-block
}

.lkd-header .lkd-badge i {
	opacity: .6
}

.lkd-header .lkd-badge--inline, .lkd-header .lkd-badge:after {
	top: -9px;
	left: 65%
}

.lkd-header--bd-top {
	border-top: 4px solid #ffc107
}

.lkd-header__inner {
	padding-top: 15px;
	padding-bottom: 15px;
	border-bottom: 1px solid #ebebeb;
	position: relative;
	z-index: 11
}

.lkd-header, .lkd-header__flex .lkd-header__inner>div {
	min-height: 70px
}

.lkd-header__flex .lkd-header__inner>div {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-flex-wrap: nowrap;
	-ms-flex-wrap: nowrap;
	flex-wrap: nowrap;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between
}

.lkd-header__logo {
	margin: 5px 0 0;
	line-height: 1;
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1
}

.lkd-header__logo img {
	width: auto !important;
	max-height: 45px
}

.lkd-header__logo .lkd-logo--small img {
	max-height: 40px
}

.lkd-header .lkd-customer-navbar {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	width: 120px
}

.lkd-header__search {
	-webkit-box-flex: 5;
	-webkit-flex-grow: 5;
	-ms-flex-positive: 5;
	flex-grow: 5;
	margin-right: 15px;
	margin-left: 15px;
	width: 490px
}

.lkd-header__icons {
	-webkit-box-flex: 2;
	-webkit-flex-grow: 2;
	-ms-flex-positive: 2;
	flex-grow: 2;
	text-align: center;
	width: 90px
}

.lkd-header__icons a {
	color: #222;
	display: inline-block;
	margin: 0 10px
}

.lkd-header__icons a, .lkd-header__icons a:active, .lkd-header__icons a:focus,
	.lkd-header__icons a:hover {
	text-decoration: none !important
}

.lkd-header__icon {
	font-size: 2rem
}

.lkd-header--pinned, .lkd-header--pinned.lkd-header--to-down {
	min-height: 147px
}

.lkd-header--pinned.lkd-header--to-down .lkd-header__inner,
	.lkd-header--pinned.lkd-header--to-down .lkd-navbar,
	.lkd-header--pinned .lkd-header__inner, .lkd-header--pinned .lkd-navbar
	{
	-webkit-transition: -webkit-transform .12s ease;
	transition: -webkit-transform .12s ease;
	transition: transform .12s ease;
	transition: transform .12s ease, -webkit-transform .12s ease;
	position: fixed;
	top: 0;
	right: 0;
	left: 0
}

.lkd-header--pinned.lkd-header--to-down .lkd-navbar, .lkd-header--pinned .lkd-navbar
	{
	z-index: 999
}

.lkd-header--pinned.lkd-header--to-down .lkd-header__inner,
	.lkd-header--pinned .lkd-header__inner {
	width: 100%;
	z-index: 1000;
	padding-top: 0;
	padding-bottom: 0;
	background-color: #fff;
	-webkit-box-shadow: 0 4px 7px 0 hsla(0, 0%, 46%, .15);
	box-shadow: 0 4px 7px 0 hsla(0, 0%, 46%, .15)
}

.lkd-header--pinned .lkd-header__inner {
	-webkit-box-shadow: none !important;
	box-shadow: none !important
}

.lkd-header--pinned .lkd-navbar {
	-webkit-transform: translate3d(0, 70px, 0);
	transform: translate3d(0, 70px, 0)
}

.lkd-header--pinned.lkd-header--to-down .lkd-navbar {
	-webkit-transform: translateZ(0);
	transform: translateZ(0)
}

.lkd-header--fixed {
	padding: 15px 0 10px;
	border-bottom: 1px solid #ccc;
	margin-bottom: 0;
	z-index: 2000;
	position: fixed;
	top: 0;
	right: 0;
	left: 0
}

.lkd-header .lkd-header__logo {
	display: inline-block;
	line-height: 1
}

.lkd-header .lkd-header__logo img, .lkd-header .lkd-header__logo svg {
	display: block;
	width: 180px
}

.lkd-topbar {
	min-height: 35px;
	padding: 10px 0;
	background-color: #fcbd00
}

.lkd-topbar p {
	font-size: .8571rem;
	margin: 0
}

.lkd-header__faq {
	vertical-align: middle
}

.lkd-header__faq a {
	color: #424242
}

.lkd-header__faq a:focus, .lkd-header__faq a:hover {
	text-decoration: none
}

.lkd-header__faq h2 {
	font-size: 3rem;
	margin: 0 10px 0 0;
	font-weight: 400
}

.lkd-header__faq h2, .lkd-header__faq h2+p {
	display: inline-block
}

.lkd-header__faq-btn-icon {
	margin-left: 5px;
	width: 20px;
	line-height: 20px;
	height: auto
}

.lkd-header__faq-btn-icon>i {
	top: -1px
}

.lkd-header__faq-icon {
	left: 1px
}

.lkd-header--pinned+.cs_background_custom .lkd-description {
	padding-top: 56px
}

.lkd-header--pinned+.cs_background_custom .lkd-description .cs_topslider_row
	{
	position: fixed;
	top: 66px;
	left: 0;
	height: 46px;
	width: 100%;
	z-index: 998;
	background: #fff;
	-webkit-box-shadow: 0 2px 10px rgba(0, 0, 0, .3);
	box-shadow: 0 2px 10px rgba(0, 0, 0, .3)
}

.lkd-header--pinned+.cs_background_custom .lkd-description .cs_topslider_row:before
	{
	height: 100%;
	width: 50%;
	position: absolute;
	top: 0;
	left: 0;
	content: "";
	display: block;
	background: #fff
}

.lkd-header--pinned+.cs_background_custom .lkd-description .cs_topslider_row:after
	{
	height: 100%;
	width: 50%;
	position: absolute;
	top: 0;
	right: 0;
	content: "";
	display: block;
	background: #fff
}

.lkd-header--pinned+.cs_background_custom .lkd-description .cs_topslider_row>div
	{
	position: relative;
	z-index: 1
}

.lkd-helpcenter {
	padding-top: 25px;
	padding-bottom: 25px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.lkd-helpcenter__title {
	font-size: 32px;
	color: #424242;
	text-align: center;
	padding: 15px 0 0;
	margin: 0
}

.lkd-helpcenter__text {
	font-size: 16px;
	color: #424242;
	text-align: center;
	padding: 0 0 10px
}

.lkd-helpcenter__heading {
	padding: 0 0 10px;
	margin-bottom: 15px
}

.lkd-helpcenter__heading h3 {
	font-weight: 400;
	float: left;
	margin: 0
}

.lkd-helpcenter__search {
	float: right;
	width: 755px
}

.lkd-helpcenter__search-total {
	width: 100%;
	display: block;
	font-size: 12px;
	font-style: italic;
	padding: 5px 0
}

.lkd-helpcenter__category {
	margin-bottom: 25px
}

.lkd-helpcenter__category-title {
	font-size: 16px;
	padding-bottom: 10px;
	margin: 10px 0;
	border-bottom: 1px solid #ededed
}

.lkd-helpcenter__vertical-tabs {
	background-color: #fff;
	display: inline;
	float: left;
	width: 22%
}

.lkd-helpcenter__vertical-tabs ul {
	margin-bottom: 25px
}

.lkd-helpcenter__vertical-tabs-title {
	padding: .4em .8em;
	font-size: 14px;
	border-bottom: 1px solid #efefef;
	margin-bottom: 5px
}

.lkd-helpcenter__vertical-tabs-container {
	width: 78%;
	display: inline-block;
	padding-left: 25px
}

.lkd-helpcenter__section-item {
	margin-bottom: 5px
}

.lkd-helpcenter__section-item.is-active a, .lkd-helpcenter__section-item:hover a,
	.lkd-helpcenter__section-item a:hover {
	background-color: #f9f9f9;
	border-color: #efefef;
	text-decoration: none
}

.lkd-helpcenter__section-item.is-active a i,
	.lkd-helpcenter__section-item:hover a i, .lkd-helpcenter__section-item a:hover i
	{
	margin-right: 0
}

.lkd-helpcenter__section-link {
	display: block;
	margin-right: -1px;
	padding: .8em;
	border: 1px solid transparent;
	-webkit-transition: background-color .15s cubic-bezier(.76, .03, 0, .65),
		border-color .15s cubic-bezier(.76, .03, 0, .65);
	transition: background-color .15s cubic-bezier(.76, .03, 0, .65),
		border-color .15s cubic-bezier(.76, .03, 0, .65)
}

.lkd-helpcenter__section-link .lkd-helpcenter__section-icon {
	-webkit-transition: margin .15s cubic-bezier(.76, .03, 0, .65);
	transition: margin .15s cubic-bezier(.76, .03, 0, .65);
	margin-right: 5px;
	float: right;
	color: #0288d1
}

.lkd-helpcenter .col {
	width: 33%;
	float: left;
	padding: 45px 0 0;
	text-align: center
}

.lkd-helpcenter .col p {
	font-size: 24px;
	margin: 0 0 15px
}

.lkd-helpcenter .col li {
	font-size: 14px;
	margin: 0 0 5px
}

.lkd-helpcenter .col li:hover {
	font-weight: 700;
	text-decoration: underline;
	color: #4d70b8;
	cursor: pointer
}

.lkd-helpcenter .col .buttons {
	margin: 15px auto;
	display: block;
	border: 0;
	color: transparent;
	font: 0/0 a;
	text-shadow: none
}

.lkd-helpcenter__article-heading {
	margin-bottom: 10px
}

.lkd-helpcenter__article-heading h2 {
	font-size: 14px
}

.lkd-helpcenter__article-item {
	background-color: #f9f9f9;
	border: 1px solid #efefef;
	padding: 1.5em 1.618em;
	margin-bottom: 15px
}

.lkd-helpcenter__article-item .highlight {
	background-color: #ff0
}

.lkd-helpcenter__article-body iframe {
	border: 0;
	width: 100%;
	height: 390px
}

.lkd-helpcenter__article-body, .lkd-helpcenter__article-body p {
	line-height: 1.6
}

.lkd-helpcenter .lkd-helpcenter__vertical-tabs-container.is-loading,
	.lkd-helpcenter .lkd-helpcenter__vertical-tabs.is-loading {
	position: relative;
	min-height: 500px
}

.lkd-helpcenter .lkd-helpcenter__vertical-tabs-container.is-loading:after,
	.lkd-helpcenter .lkd-helpcenter__vertical-tabs.is-loading:after {
	content: "";
	display: block;
	background-color: hsla(0, 0%, 100%, .8);
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0
}

.lkd-helpcenter .lkd-helpcenter__vertical-tabs-container.is-loading:before,
	.lkd-helpcenter .lkd-helpcenter__vertical-tabs.is-loading:before {
	top: 150px
}

#onesignal-bell-container.onesignal-reset {
	z-index: 9 !important
}

#back-to-top .linhatop .topomaster, #details-kit .ui-state-default .ui-icon,
	.actions-bg, .bg-select, .bg-transparente, .bg_prd, .botao, .boxProduto .produtoSeloDesconto,
	.btn_floater_especial, .buttons, .desconto-preco, .flt_bandeiras,
	.flt_close, .flt_h2_ico:after, .flt_menu i, .footer .atendimento-sub-title:before,
	.imagem-bg, .lkd-newsletter__icon, .midias-imagem-bg, .pagtos li:first-child,
	.sua-selecao-pin, .topomaster {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/sprites/sprite-geral.png)
		0 0 no-repeat
}

.icone-breadcrumb {
	color: #999;
	font-weight: 700
}

.icon_plu_gray {
	background-position: -1228px -1591px
}

.icon_minus_yellow {
	background-position: -1192px -1591px
}

.icon_done {
	background-position: -1260px -1590px;
	padding: 0 7px;
	line-height: 0;
	height: 13px;
	margin: 0 5px;
	width: 0;
	font-size: 11px
}

.icon_arrow_yellow_r {
	height: 13px;
	width: 15px;
	background-position: -1109px -1584px;
	padding: 0 5px;
	font-size: 14px;
	margin: 0 5px
}

.icon_rnd_arrow_yellow_r, .icon_rnd_arrow_yellow_r_small {
	height: 13px;
	width: 18px;
	background-position: -1313px -1839px;
	padding: 0 9px;
	font-size: 16px;
	margin: 0 5px
}

.icon_arrow_down_gray {
	background-position: -1258px -1619px;
	height: 20px;
	width: 15px
}

.icon_arrow_down_gray, .icon_help {
	background-repeat: no-repeat;
	margin-right: 5px;
	float: left
}

.icon_help {
	background-position: -13px -1299px;
	height: 30px;
	width: 30px
}

.icon_rnd_reload_gray {
	height: 13px;
	width: 18px;
	background-position: -1039px -2013px;
	padding: 0 0 0 20px;
	font-size: 16px;
	margin: 0 5px
}

.buttons.acompanhar-pedidos {
	width: 147px;
	height: 29px;
	background-position: -1022px -646px;
	border: none !important
}

.buttons.acompanhar-pedidos:hover {
	cursor: pointer;
	background-position: -1022px -677px
}

.buttons.gerenciar-conta {
	width: 122px;
	height: 29px;
	background-position: -1033px -712px;
	border: none !important
}

.buttons.gerenciar-conta:hover {
	cursor: pointer;
	background-position: -1033px -743px
}

.buttons.salvar {
	width: 64px;
	height: 29px;
	background-position: -1233px -334px
}

.buttons.salvar:hover {
	background-position: -1233px -367px
}

.buttons.enviar {
	width: 64px;
	height: 29px;
	background-position: -670px -689px;
	border: none !important
}

.buttons.enviar:hover {
	background-position: -670px -722px
}

.buttons.ver-todos-pedidos {
	width: 160px;
	height: 29px;
	background-position: -1233px -170px
}

.buttons.ver-todos-pedidos:hover {
	background-position: -1233px -204px
}

.buttons.criar-minha-lista {
	width: 84px;
	height: 29px;
	background-position: -1233px -416px
}

.buttons.criar-minha-lista:hover {
	background-position: -1233px -449px
}

.buttons.imprimir-boleto {
	width: 118px;
	height: 29px;
	background-position: -1233px -4px
}

.buttons.imprimir-boleto:hover {
	background-position: -1233px -38px
}

.buttons.criar-lista {
	width: 84px;
	height: 29px;
	background-position: -1233px -416px
}

.buttons.criar-lista:hover {
	background-position: -1233px -449px
}

.buttons.finalizar-compra-medium {
	width: 229px;
	height: 56px;
	background-position: -666px -1091px
}

.buttons.finalizar-compra-medium:hover {
	background-position: -666px -1151px
}

.buttons.finalizar-compra-large {
	width: 257px;
	height: 65px;
	background-position: -666px -85px
}

.buttons.finalizar-compra-large:hover {
	background-position: -666px -155px
}

.buttons.voltar-a-comprar {
	width: 147px;
	height: 29px;
	background-position: -666px -240px
}

.buttons.voltar-a-comprar:hover {
	background-position: -666px -272px
}

.buttons.limpar-carrinho {
	width: 120px;
	height: 29px;
	background-position: -666px -320px
}

.buttons.limpar-carrinho:hover {
	background-position: -666px -353px
}

.buttons.calcular-frete {
	width: 76px;
	height: 29px;
	background-position: -666px -401px;
	cursor: pointer
}

.buttons.calcular-frete:hover {
	background-position: -666px -435px
}

.buttons.add-prd-cart {
	width: 173px;
	height: 29px;
	background-position: -666px -3px;
	cursor: pointer
}

.buttons.add-prd-cart:hover {
	background-position: -666px -37px
}

.buttons.trocar-endereco {
	width: 173px;
	height: 29px;
	background-position: -666px -771px
}

.buttons.trocar-endereco:hover {
	background-position: -666px -804px
}

.buttons.fechar-compra {
	width: 258px;
	height: 65px;
	background-position: -666px -85px;
	cursor: pointer
}

.buttons.fechar-compra:hover {
	background-position: -666px -155px
}

.buttons.comprar-medium {
	width: 158px;
	height: 47px;
	background-position: -362px -174px;
	border: none;
	cursor: pointer
}

.buttons.comprar-medium:hover {
	background-position: -362px -226px
}

.buttons.comprar-medium-grd {
	width: 180px;
	height: 67px;
	background-position: -945px -112px;
	border: none;
	cursor: pointer;
	margin: 7px 0 0
}

.buttons.comprar-medium-grd:hover {
	background-position: -945px -183px
}

.buttons.comprar-large {
	width: 200px;
	height: 70px;
	background-position: -362px -4px;
	border: none;
	cursor: pointer
}

.buttons.comprar-large:hover {
	background-position: -362px -81px
}

.buttons.confira-descricao {
	width: 134px;
	height: 29px;
	background-position: -362px -416px;
	cursor: pointer
}

.buttons.confira-descricao:hover {
	background-position: -362px -450px
}

.buttons.add-to-my-list {
	width: 194px;
	height: 29px;
	background-position: -362px -500px;
	cursor: pointer
}

.buttons.add-to-my-list:hover {
	background-position: -362px -535px
}

.buttons.indique-por-email {
	width: 161px;
	height: 29px;
	background-position: -362px -584px;
	cursor: pointer
}

.buttons.indique-por-email:hover {
	background-position: -362px -619px
}

.buttons.avalie-produto {
	width: 169px;
	height: 32px;
	background-position: -945px -491px;
	cursor: pointer
}

.buttons.avalie-produto:hover {
	background-position: -945px -527px
}

.buttons.faca-sua-pergunta {
	width: 220px;
	height: 32px;
	background-position: -945px -568px;
	cursor: pointer
}

.buttons.faca-sua-pergunta:hover {
	background-position: -945px -604px
}

.buttons.resolva-aqui {
	width: 201px;
	height: 32px;
	background-position: -945px -260px;
	cursor: pointer
}

.buttons.resolva-aqui:hover {
	background-position: -945px -295px
}

.buttons.tire-suas-duvidas {
	width: 159px;
	height: 29px;
	background-position: -362px -1254px;
	cursor: pointer
}

.buttons.tire-suas-duvidas:hover {
	background-position: -362px -1288px
}

.box-ambiente-coluna.produto .buttons.btn-mais-detalhes,
	.box-produto-coluna.produto .buttons.btn-mais-detalhes {
	width: 260px;
	height: 33px;
	background-position: -945px -411px;
	cursor: pointer;
	margin: 20px 0 15px
}

.box-ambiente-coluna.produto .buttons.btn-mais-detalhes:hover,
	.box-produto-coluna.produto .buttons.btn-mais-detalhes:hover {
	background-position: -945px -448px
}

.box-ambiente-coluna.ambiente .buttons.btn-mais-detalhes,
	.box-ambiente-coluna.produto .buttons.btn-mais-detalhes {
	width: 390px;
	height: 33px;
	background-position: -792px -1222px;
	cursor: pointer;
	margin: 20px 0 15px
}

.box-ambiente-coluna.ambiente .buttons.btn-mais-detalhes:hover,
	.box-ambiente-coluna.produto .buttons.btn-mais-detalhes:hover {
	background-position: -792px -1259px
}

.limit {
	width: 1000px;
	margin: 0 auto;
	position: relative;
	background-color: #fff
}

.limit>.lkd-horizontal-form {
	margin-bottom: 25px
}

.column-1-2 {
	position: relative
}

.column-1-2, .column-1-3, .column-1-4, .column-1-5, .column-1-6,
	.column-1-7, .column-1-8, .column-1-9, .column-1-10, .column-1-11,
	.column-1-12 {
	float: left;
	padding: 0 5px;
	min-height: 10px
}

.column-1-2:first-of-type, .column-1-3:first-of-type, .column-1-4:first-of-type,
	.column-1-5:first-of-type, .column-1-6:first-of-type, .column-1-7:first-of-type,
	.column-1-8:first-of-type, .column-1-9:first-of-type, .column-1-10:first-of-type,
	.column-1-11:first-of-type, .column-1-12:first-of-type {
	padding-left: 0
}

.column-1-2:last-of-type, .column-1-3:last-of-type, .column-1-4:last-of-type,
	.column-1-5:last-of-type, .column-1-6:last-of-type, .column-1-7:last-of-type,
	.column-1-8:last-of-type, .column-1-9:last-of-type, .column-1-10:last-of-type,
	.column-1-11:last-of-type, .column-1-12:last-of-type {
	padding-right: 0
}

.column-1-2 {
	width: 50%
}

.column-1-3 {
	width: 33.33%
}

.column-1-4 {
	width: 25%
}

.column-1-5 {
	width: 20%
}

.column-1-6 {
	width: 16.6%
}

.column-1-7 {
	width: 14.2%
}

.column-1-8 {
	width: 12.5%
}

.column-1-9 {
	width: 11.1%
}

.column-1-10 {
	width: 10%
}

.column-1-11 {
	width: 9.09%
}

.column-1-12 {
	width: 8.33%
}

.row {
	width: 100%;
	margin: 10px 0
}

.row:after, .row:before {
	display: table;
	line-height: 0;
	content: "";
	clear: both
}

.conteudo {
	width: 815px;
	float: right;
	padding-left: 10px
}

.container .content {
	padding-left: 10px;
	float: left;
	width: 800px
}

.lkd-search-form {
	position: relative
}

.lkd-search-form.is-loading:before {
	left: 25px
}

.lkd-search-form>.lkd-search-form__input {
	line-height: 40px;
	padding: 0 40px 0 15px;
	font-size: 16px;
	-webkit-box-shadow: 1px 2px 3px 0 hsla(0, 0%, 46%, .15);
	box-shadow: 1px 2px 3px 0 hsla(0, 0%, 46%, .15)
}

.lkd-search-form__icon-button {
	border: none;
	background-color: transparent;
	background: none;
	cursor: pointer;
	z-index: 1;
	padding: 6px;
	margin: 0;
	font-size: 1.6rem;
	color: #999;
	position: absolute;
	top: 3px;
	right: 10px
}

.lkd-search-form__icon-button i {
	display: block;
	-webkit-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
	transform: rotate(-90deg)
}

.owl-carousel-slide {
	display: none;
	position: relative;
	width: 100%;
	-ms-touch-action: pan-y
}

.owl-carousel-slide .owl-wrapper {
	display: none;
	position: relative;
	-webkit-transform: translateZ(0)
}

.owl-carousel-slide .owl-wrapper:after {
	content: ".";
	display: block;
	clear: both;
	visibility: hidden;
	line-height: 0;
	height: 0
}

.owl-carousel-slide .owl-wrapper-outer {
	overflow: hidden;
	position: relative;
	width: 100%
}

.owl-carousel-slide .owl-wrapper-outer.autoHeight {
	-webkit-transition: height .5s cubic-bezier(.76, .03, 0, .65);
	transition: height .5s cubic-bezier(.76, .03, 0, .65)
}

.owl-carousel-slide .owl-item {
	float: left
}

.owl-controls {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-tap-highlight-color: transparent
}

.owl-controls .owl-buttons div, .owl-controls .owl-page {
	cursor: pointer
}

#owl_carosel_home {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/loader.gif)
		#fafafa no-repeat 50%;
	overflow: hidden;
	display: block;
	width: 1000px;
	margin: auto
}

#owl_carosel_home .owl-item {
	display: block;
	width: 100%;
	height: 473px
}

#owl_carosel_home #bar {
	width: 0;
	max-width: 100%;
	height: 5px;
	background: #ffe01a
}

#owl_carosel_home #progressBar {
	width: 100%;
	background: #f2f2f2
}

.container-carosel-home {
	display: block;
	width: 1000px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	overflow: hidden;
	margin: auto;
	position: relative
}

.container-carosel-home .owl-carousel {
	overflow: hidden;
	max-height: 473px
}

.container-carosel-home .banner_full {
	display: inline-block;
	width: 1000px
}

.container-carosel-home a, .container-carosel-home img {
	display: block
}

.container-carosel-home .btn-next, .container-carosel-home .btn-prev {
	background-color: transparent;
	border: none;
	width: 36px;
	height: 73px;
	display: none;
	cursor: pointer;
	position: absolute;
	top: 205px
}

.container-carosel-home .btn-next.is-show, .container-carosel-home .btn-prev.is-show
	{
	display: block
}

.container-carosel-home .btn-prev {
	background-position: -941px -681px;
	left: 0
}

.container-carosel-home .btn-next {
	background-position: -904px -681px;
	right: 0
}

.sub_item_full, .sub_item_full .banner_full {
	display: block;
	width: 1000px;
	height: 473px
}

.banner_full {
	background: none
}

.column-1-2 .banner_full {
	display: block;
	width: 495px;
	height: 130px
}

.owl_carosel_home .owl-controls .owl-buttons div {
	background-color: #0c83e7 !important
}

.owl_home .owl-controls {
	text-align: center;
	position: relative;
	bottom: 43px
}

.owl_home .owl-controls .owl-buttons div {
	height: 30px;
	width: 30px;
	color: #fff;
	display: inline-block;
	zoom: 1;
	margin: 5px;
	padding: 0;
	font-size: 12px;
	border-radius: 3px;
	filter: Alpha(Opacity = 50);
	opacity: .5
}

.owl_home .owl-controls .owl-buttons .owl-next {
	background-position: -866px -711px
}

.owl_home .owl-controls .owl-buttons .owl-prev {
	background-position: -866px -773px
}

.owl_home .owl-controls .owl-buttons .owl-next:hover {
	background-position: -866px -742px
}

.owl_home .owl-controls .owl-buttons .owl-prev:hover {
	background-position: -866px -804px
}

.owl_home .owl-controls.clickable .owl-buttons div:hover {
	filter: Alpha(Opacity = 100);
	opacity: 1;
	text-decoration: none
}

.owl_home .owl-controls .owl-page {
	display: inline-block;
	zoom: 1
}

.owl_home .owl-controls .owl-page span {
	background-position: -1294px -1839px;
	display: block;
	width: 16px;
	height: 16px;
	margin: 5px 7px;
	filter: Alpha(Opacity = 50);
	opacity: .5;
	border-radius: 30px
}

.owl_home .owl-controls.clickable .owl-page:hover span, .owl_home .owl-controls .owl-page.active span
	{
	background-position: -1274px -1839px;
	width: 16px;
	height: 16px;
	filter: Alpha(Opacity = 100);
	opacity: 1
}

.owl_home .owl-controls .owl-page span.owl-numbers {
	height: auto;
	width: auto;
	color: #fff;
	padding: 2px 10px;
	font-size: 12px;
	border-radius: 30px
}

.owl-item.loading {
	min-height: 150px;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/geral/AjaxLoader.gif)
		no-repeat 50%
}

.owl-centered {
	margin: auto
}

.owl-pagination {
	padding: 0;
	margin: 0 auto;
	overflow: hidden;
	display: block;
	max-width: 1000px
}

.owl-pagination--block .owl-wrapper {
	width: 100% !important;
	min-width: 400px
}

.owl-pagination__item {
	height: 70px
}

.owl-pagination .owl-item, .owl-pagination__item {
	width: 151px !important;
	position: relative;
	float: left;
	display: inline-block
}

.owl-pagination .owl-item {
	background-color: transparent;
	margin: 8px 10px 23px 0;
	cursor: pointer
}

.owl-pagination .owl-item:last-child {
	margin-right: 0
}

.owl-pagination .owl-item:before {
	content: "";
	display: block;
	border: 2px solid transparent;
	z-index: 100;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	height: 71px
}

.owl-pagination .owl-item img {
	width: 100%;
	height: auto;
	opacity: .5
}

.owl-pagination .owl-item.is-active:before, .owl-pagination .owl-item:focus:before,
	.owl-pagination .owl-item:hover:before {
	border-color: #ffd600
}

.owl-pagination .owl-item.is-active img, .owl-pagination .owl-item:focus img,
	.owl-pagination .owl-item:hover img {
	opacity: 1
}

.banner-admanager-topo {
	margin: 0 auto;
	display: table;
	padding: 5px 0 10px
}

.banner-admanager-conteudo {
	margin-bottom: 10px
}

.banner-admanager-vitrine {
	width: 1000px;
	height: 300px;
	margin: 10px 0;
	float: left
}

.banner-conteudo-vitrine {
	width: 1000px;
	height: 41px;
	margin: 0;
	float: left
}

.cs_slider_container {
	margin: 0;
	position: relative
}

.cs_alltop_left_image {
	left: -410px
}

.cs_alltop_left_image, .cs_alltop_right_image {
	display: none;
	width: 400px;
	height: 544px;
	position: absolute;
	z-index: 9;
	top: -71px
}

.cs_alltop_right_image {
	right: -410px
}

.cs_slider_left_image {
	left: -410px
}

.cs_slider_left_image, .cs_slider_right_image {
	display: none;
	width: 400px;
	height: 473px;
	position: absolute;
	z-index: 9;
	top: 0
}

.cs_slider_right_image {
	right: -410px
}

.cs_sliderdown_left_image {
	left: -410px
}

.cs_sliderdown_left_image, .cs_sliderdown_right_image {
	display: none;
	width: 400px;
	height: 130px;
	position: absolute;
	z-index: 9;
	top: 0
}

.cs_sliderdown_right_image {
	right: -410px
}

.cs_sliderdown_container {
	margin: 0 auto;
	display: table;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.cs_topslider_row {
	margin: 0
}

.topo_bg_vitrine_container {
	width: 1000px;
	margin: 0 auto;
	position: relative;
	background-color: #fff
}

.cs_limit_left_image {
	background: red;
	left: -410px
}

.cs_limit_left_image, .cs_limit_right_image {
	display: none;
	width: 400px;
	height: 100%;
	position: absolute;
	z-index: 9;
	top: 0
}

.cs_limit_right_image {
	background: blue;
	right: -410px
}

.menu-lateral {
	background-color: #fff;
	width: 185px;
	float: left
}

.menu-lateral a {
	color: #424242
}

.menu-lateral a:hover {
	text-decoration: underline;
	color: #0288d1
}

.menu-lateral .bloco-menu-lateral {
	padding-bottom: 15px;
	margin-bottom: 15px;
	display: block;
	clear: both
}

.menu-lateral .bloco-menu-lateral-last {
	border: none
}

.menu-lateral .description-menu {
	margin-bottom: 15px;
	font-style: normal;
	line-height: 20px;
	letter-spacing: 0;
	text-align: left;
	cursor: pointer;
	font-size: 16px;
	color: grey;
	float: left;
	font-weight: 400
}

.menu-lateral .description-menu:after {
	margin-bottom: 15px;
	clear: both;
	content: ""
}

.menu-lateral .description-menu .actions-bg {
	background-position: -1212px -1590px;
	background-repeat: no-repeat;
	margin-right: 5px;
	height: 20px;
	width: 15px;
	float: left
}

.menu-lateral .description-menu .open {
	background-position: -1258px -1619px;
	background-repeat: no-repeat;
	margin-right: 5px;
	height: 20px;
	width: 15px;
	float: left
}

.menu-lateral .more-options {
	font-weight: 700;
	padding-bottom: 0 !important
}

.menu-lateral .more-options a:hover {
	cursor: default
}

.menu-lateral .form-oculto {
	padding: 0 4px;
	width: 158px
}

.menu-lateral .toggle {
	width: 100%;
	clear: both
}

.menu-lateral .lista-itens-checkbox {
	border-bottom: 1px solid #e6e6e6;
	padding-bottom: 15px;
	clear: both
}

.menu-lateral .lista-itens-checkbox li {
	margin-bottom: 10px;
	display: block
}

.menu-lateral .lista-itens-checkbox li:last-child {
	margin-bottom: 0
}

.menu-lateral .lista-itens-checkbox li h3 a {
	font-weight: 400;
	font-size: 12px
}

.menu-lateral .lista-itens-checkbox li a, .menu-lateral .lista-itens-checkbox li h3 a
	{
	width: 100%
}

.menu-lateral .lista-itens-checkbox .lista-item--has-children>a {
	font-weight: 700
}

.menu-lateral .lista-itens-checkbox .lista-item--has-children>a>.actions-bg.check
	{
	-webkit-transform: rotate(90deg);
	-ms-transform: rotate(90deg);
	transform: rotate(90deg);
	position: relative;
	top: -2px
}

.menu-lateral .lista-itens-checkbox ul {
	padding-left: 10px;
	margin-top: 10px
}

.menu-lateral .lista-itens-checkbox .close {
	background-position: -1278px -1339px;
	text-indent: -999px;
	overflow: hidden;
	display: block;
	float: left;
	width: 15px;
	height: 15px;
	padding: 0;
	margin-right: 6px
}

.menu-lateral .lista-itens-checkbox .check {
	background-position: -1105px -1588px;
	display: inline-block;
	margin-right: 4px;
	height: 10px;
	width: 10px
}

.menu-lateral .lista-itens-checkbox .checked {
	background-position: -1260px -1590px;
	display: inline-block;
	height: 13px;
	width: 13px
}

.menu-lateral .list-scroll {
	height: auto;
	max-height: 200px;
	overflow-y: scroll;
	overflow-x: hidden
}

.menu-lateral .field-search {
	margin-right: 3px;
	width: 60px;
	float: left
}

.menu-lateral .field-search label {
	color: #acaab7
}

.menu-lateral .field-search input[type=text] {
	border: 1px solid #c1c1b6;
	border-radius: 2px;
	line-height: 17px;
	width: 43px;
	padding: 1px 6px
}

.menu-lateral .field-search.button-submit {
	margin-right: 0;
	padding-top: 15px;
	width: 30px;
	float: left
}

.menu-lateral .field-search .button-ok {
	background-position: -210px -5px;
	text-indent: -999px;
	overflow: hidden;
	border: none;
	height: 20px;
	width: 19px;
	margin-top: 2px
}

.menu-lateral .field-search-large {
	padding-left: 30px;
	background-color: #fff;
	background-position: -1272px -1264px;
	width: 125px;
	margin: 0 auto;
	border: 1px solid #ccc;
	border-radius: 3px
}

.menu-lateral .field-search-large input[type=text] {
	width: 100%;
	line-height: 23px;
	border: none
}

.menu-lateral .field-search-large input[type=text], .menu-lateral .field-search-large input[type=text]:active,
	.menu-lateral .field-search-large input[type=text]:focus {
	outline: none
}

.menu-lateral .sua-selecao {
	background-color: #ffe01a;
	padding: 20px;
	margin: 0
}

.menu-lateral .sua-selecao-pin {
	background-position: -1269px -1663px;
	background-repeat: no-repeat;
	margin: 0 auto;
	height: 21px;
	width: 22px
}

.menu-lateral .sua-selecao a {
	color: #424242
}

.menu-lateral .sua-selecao .lista-itens-checkbox {
	display: block;
	border: none
}

.menu-lateral .sua-selecao .description-menu {
	cursor: default;
	color: #0288d1
}

.menu-lateral .sua-selecao .description-menu i {
	display: none
}

.menu-lateral .cor {
	display: inline-block;
	height: 15px;
	width: 15px
}

.menu-lateral .cor-amadeirado {
	background-position: -1198px -1502px
}

.menu-lateral .cor-amarelo {
	background-position: -1215px -1400px
}

.menu-lateral .cor-azul {
	background-position: -1198px -1485px
}

.menu-lateral .cor-bege {
	background-position: -1215px -1451px
}

.menu-lateral .cor-branco {
	background-position: -1215px -1468px
}

.menu-lateral .cor-cinza {
	background-position: -1215px -1485px
}

.menu-lateral .cor-colorido {
	background-position: -1198px -1400px
}

.menu-lateral .cor-estampado {
	background-position: -1198px -1383px
}

.menu-lateral .cor-lilás, .menu-lateral .cor-roxo {
	background-position: -1198px -1451px
}

.menu-lateral .cor-laranja {
	background-position: -1198px -1468px
}

.menu-lateral .cor-rosa {
	background-position: -1198px -1417px
}

.menu-lateral .cor-marrom {
	background-position: -1215px -1434px
}

.menu-lateral .cor-preto {
	background-position: -1215px -1502px
}

.menu-lateral .cor-verde {
	background-position: -1215px -1417px
}

.menu-lateral .cor-vermelho {
	background-position: -1198px -1434px
}

.menu-lateral .cor-cromado {
	background-position: -1215px -1366px
}

.menu-lateral .cor-transparente {
	background-position: -1215px -1384px
}

.menu-lateral .bannersLateralFretinho {
	width: 185px;
	cursor: pointer
}

.menu-lateral .bannersLateralFretinho img {
	display: block;
	margin: 5px 0
}

.menu-lateral .banner_left_side {
	width: 185px;
	height: 520px
}

.menu-lateral .more-options a, .menu-lateral .more-options a:hover {
	color: #4d4d4d;
	text-decoration: none !important;
	padding-left: 0 !important
}

#lateral {
	width: 180px;
	float: left
}

#lateral .newsPromocoes a[title=Descadastrar] {
	float: left;
	margin-top: 16px;
	color: #fff;
	text-decoration: underline
}

#lateral .newsPromocoes:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden
}

#lateral .cadastroGerarDesconto {
	width: 173px;
	padding: 16px 6px 6px;
	margin: 0 0 5px;
	font-size: 11px;
	color: #52443c;
	background-color: #c1c1b6;
	border-radius: 3px
}

#lateral .cadastroGerarDesconto p {
	color: #fff
}

#lateral .cadastroGerarDesconto p.secundario {
	font-size: 9px;
	color: #fff
}

#lateral .cadastroGerarDesconto .secundario a {
	text-decoration: underline
}

#lateral .cadastroGerarDesconto a {
	color: #fff
}

#lateral .cadastroGerarDesconto form {
	width: 100%;
	float: left;
	padding: 10px 0 0
}

#lateral .cadastroGerarDesconto input[type=text] {
	width: 162px;
	height: 15px;
	padding: 3px 4px;
	margin-bottom: 5px;
	display: block;
	float: left;
	background-color: #fff;
	border-radius: 3px;
	-webkit-box-shadow: inset 0 -1px 3px 0 #eee;
	box-shadow: inset 0 -1px 3px 0 #eee
}

#lateral .cadastroGerarDesconto input[type=submit] {
	width: 110px;
	height: 20px;
	float: right;
	margin: 14px 0 5px;
	cursor: pointer;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/botoes/btn-gerar-desconto.png)
		no-repeat
}

#lateral .cadastroGerarDesconto a[title=Descadastrar] {
	float: left;
	margin-top: 16px;
	color: #fff;
	text-decoration: underline
}

#lateral .cadastroGerarDesconto:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden
}

#lateral .newsHotsite {
	width: 173px;
	padding: 16px 6px 6px;
	margin: 0 0 5px;
	font-size: 11px;
	color: #52443c;
	background-color: #c1c1b6;
	border-radius: 3px
}

#lateral .newsHotsite p {
	color: #fff
}

#lateral .newsHotsite p.secundario {
	font-size: 9px
}

#lateral .newsHotsite .secundario a {
	text-decoration: underline
}

#lateral .newsHotsite a {
	color: #fff
}

#lateral .newsHotsite .infos {
	display: none
}

#lateral .newsHotsite form {
	width: 100%;
	float: left;
	padding: 10px 0 0
}

#lateral .newsHotsite input[type=text] {
	width: 162px;
	height: 15px;
	padding: 3px 4px;
	margin-bottom: 5px;
	display: block;
	float: left;
	background-color: #fff;
	border-radius: 3px;
	-webkit-box-shadow: inset 0 -1px 3px 0 #eee;
	box-shadow: inset 0 -1px 3px 0 #eee
}

#lateral .newsHotsite input[type=submit] {
	width: 70px;
	height: 20px;
	float: right;
	margin-top: 14px;
	cursor: pointer;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/botoes/cadastrar-novo.gif)
		no-repeat
}

#lateral .newsHotsite a[title=Descadastrar] {
	float: left;
	margin-top: 16px;
	color: #fff;
	text-decoration: underline
}

#lateral .newsHotsite:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden
}

#lateral .depoimentosLateral {
	width: 185px;
	height: 210px
}

#lateral .boxMenuLateral p.like-h4 {
	display: none
}

#lateral .boxMenuLateral {
	margin-bottom: 5px;
	padding: 0
}

#lateral .boxMenuLateral p.like-h4 {
	color: #fe6b1b
}

#lateral .boxMenuLateral p.like-h4.padrao {
	clear: both;
	font-weight: 400;
	font-size: 12px;
	padding: 20px 6px 0
}

#lateral .boxMenuLateral .alert-txt {
	margin: 10px 0;
	line-height: 12px
}

#lateral .menuLateral {
	width: 100%;
	font-size: 12px;
	padding: 0;
	margin: 0
}

#lateral .menuLateral li {
	padding: 0
}

#lateral .menuLateral li.titulo {
	font-weight: 700;
	margin-top: 10px
}

#lateral .menuLateral li h2, #lateral .menuLateral li h3 {
	font-size: 12px
}

#lateral .menuLateral li h2 i {
	background-position: -1258px -1620px;
	background-repeat: no-repeat;
	margin-right: 5px;
	height: 20px;
	width: 15px;
	float: left
}

#lateral .menuLateral li:hover, #lateral .menuLateral li h2:hover {
	background: none !important
}

#lateral .menuLateral li h2 {
	margin-top: 4px;
	padding: 0 !important
}

#lateral .menuLateral li h2 a {
	color: gray !important;
	text-decoration: none !important;
	font-size: 18px !important
}

#lateral .menuLateral li h2 a:hover {
	text-decoration: underline !important;
	background: none !important;
	color: #00a8ec
}

#lateral .menuLateral li h3 {
	margin-top: 4px;
	padding: 0 !important
}

#lateral .menuLateral li.semLink, #lateral .menuLateral li h2.semLink,
	#lateral .menuLateral li h3.semLink {
	padding-left: 6px;
	color: #00a8ec
}

#lateral .menuLateral li {
	padding: 5px 0;
	font-weight: 400
}

#lateral .menuLateral li h3, #lateral .menuLateral li h4 {
	margin-top: 0;
	padding: 0 !important;
	font-weight: 400
}

#lateral .menuLateral li.selected {
	background-color: #e1e1e1
}

#lateral .menuLateral li a, #lateral .menuLateral li h3 a, #lateral .menuLateral li h4 a
	{
	padding: 3px 6px;
	display: inline-block;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/geral/action_arrow_03.png)
		no-repeat 3px 2px;
	padding: 0 0 0 12px;
	color: #424242
}

#lateral .menuLateral li h3 span, #lateral .menuLateral li h4 span,
	#lateral .menuLateral li span {
	color: #9a9a9a;
	display: inline-block;
	font-size: 7px;
	vertical-align: top;
	-webkit-transform: scaleY(2) translateY(3px);
	-ms-transform: scaleY(2) translateY(3px);
	transform: scaleY(2) translateY(3px)
}

#lateral .menuLateral li:hover {
	text-decoration: underline
}

#lateral .menuLateral li.selected, #lateral .menuLateral li.selected a,
	#lateral .menuLateral li.selected span, #lateral .menuLateral li:hover a,
	#lateral .menuLateral li:hover span {
	color: #0288d1;
	text-decoration: underline
}

#lateral .menuLateral li:hover, #lateral .menuLateral li:hover a {
	color: #0288d1;
	text-decoration: none
}

#lateral .home li:hover, #lateral .home li h2:hover, #lateral .home li h3:hover
	{
	background-color: transparent
}

#lateral hr {
	width: 94%;
	color: #52443c;
	margin-left: 3%;
	border: 0 none;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #eee
}

#lateral hr:first-child {
	display: none
}

#lateral .menuLateral li.nivel3 a, #lateral .menuLateral li h3.nivel3 a
	{
	padding: 3px 6px 3px 34px
}

#lateral .menuLateral li.semSub a, #lateral .menuLateral li h3.semSub a,
	#lateral .menuLateral li h4.semSub a {
	padding: 3px 6px
}

#lateral .menuLateral .div {
	margin-top: 15px
}

#lateral .menuLateral .btInsp {
	margin-top: 0;
	height: 32px
}

#lateral a.menuSelecionado {
	background: #94b3bf
		url(//assets.lojaskd.com.br/releases/production/dist/images/seta-menu-selecionado.png)
		no-repeat 100%;
	color: #fff
}

#lateral .home li {
	margin-top: 4px;
	font-weight: 700;
	color: #52443c;
	padding: 3px 6px
}

#lateral .home li h2, #lateral .home li h3 {
	margin-top: 4px;
	font-weight: 700;
	color: #52443c;
	padding: 0 !important;
	margin: 10px 0
}

#lateral hr {
	margin: 10px 0
}

#lateral .filtroBusca {
	width: 173px;
	font-size: 12px
}

#lateral .filtroBusca .itens {
	width: 173px;
	float: left;
	margin-top: 20px
}

#lateral .filtroBusca label {
	width: 18px;
	height: 15px;
	padding-top: 3px;
	margin-top: 3px;
	float: left;
	display: block;
	line-height: 15px
}

#lateral .filtroBusca div.input {
	width: 57px;
	height: 15px;
	padding: 3px 4px;
	margin-right: 3px;
	margin-top: 3px;
	display: block;
	float: left;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/input/input-preco-busca.gif)
		no-repeat
}

#lateral .filtroBusca select {
	margin-top: 3px
}

#lateral .filtroBusca input[type=submit] {
	width: 89px;
	height: 20px;
	float: left;
	margin-top: 6px;
	cursor: pointer;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/botoes/refinar-preco.gif)
		no-repeat
}

#lateral .filtroBusca input[title=refinar-cor] {
	width: 74px;
	height: 20px;
	float: left;
	margin-top: 6px;
	cursor: pointer;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/botoes/refinar-cor.gif)
		no-repeat
}

#lateral .bannersLateral {
	width: 185px;
	padding: 10px 0;
	font-size: 11px
}

#lateral .bannersLateral ul {
	list-style: none;
	width: 173px;
	margin: 0
}

#lateral .bannersLateral li {
	font-weight: 700
}

#lateral .bannersLateral a img {
	display: block;
	margin: 15px 0 4px
}

#lateral .bannersLateralDecoracao {
	width: 185px
}

#lateral .bannersLateralDecoracao img {
	display: block;
	margin: 5px 0
}

#lateral .bannersLateralFretinho {
	width: 185px;
	cursor: pointer
}

#lateral .bannersLateralFretinho img {
	display: block;
	margin: 5px 0
}

.boxMenuLateral p {
	padding: 10px 6px 0;
	color: #fe6b1b;
	font-weight: 700;
	font-size: 14px
}

.boxMenuLateral p.notop {
	padding-top: 0
}

.bread-crumb {
	margin: 5px 0 15px !important;
	width: 100%
}

.bread-crumb li {
	display: inline-block;
	font-size: 11px;
	padding: 0 !important;
	margin: 0 !important;
	vertical-align: bottom
}

.bread-crumb li span {
	padding: 0 5px
}

.bread-crumb li a {
	padding: 0;
	margin: 0;
	vertical-align: middle
}

.bread-crumb li.item-bread-crumb--last {
	font-size: 13px;
	color: #818181
}

.ad.parcela {
	padding: 0 10px 0 0
}

.container .bread-crumb {
	height: 20px;
	float: left;
	width: 100%
}

h1.tituloPrincipal {
	font-size: 28px;
	margin-bottom: 0
}

.titulos .tituloPrincipal {
	float: left;
	font-size: 2.4em
}

.container h1 {
	font-size: 2.4em;
	margin: 0 0 15px
}

.container .content label {
	font-size: 30px;
	display: inline
}

.container .content label h1 {
	font-weight: 700;
	font-size: 24px
}

.container .content label span.linktopage {
	margin: 15px 0 25px;
	width: 100%
}

.container .content label label {
	margin: 10px 0;
	float: left;
	width: 100%
}

.container .content-title, .container .content-title label, .container .content-title label h1
	{
	font-size: 30px;
	font-style: normal;
	font-variant: normal;
	font-weight: 700;
	width: 100%
}

.container .content-title span {
	margin-right: 10px
}

.container .content-title label h1 {
	width: auto
}

.categoriaVitrine {
	width: 810px;
	margin: 35px 0
}

.categoriaVitrine ul {
	padding-left: 0
}

.categoriaVitrine>li {
	width: 192px;
	float: left;
	margin: 5px
}

.categoriaVitrine>li h2 {
	margin: 10px 0
}

.categoriaVitrine>li ul li {
	margin: 10px 0 0
}

.categoriaVitrine img {
	width: 192px;
	height: 235px
}

.ambienteVitrine {
	width: 810px;
	margin: 35px 0
}

.ambienteVitrine ul {
	padding-left: 0
}

.ambienteVitrine h3 {
	margin-bottom: 0
}

.ambienteVitrine>li {
	width: 260px;
	float: left;
	margin: 5px
}

.ambienteVitrine>li h2 {
	margin: 10px 0
}

.ambienteVitrine>li ul li {
	margin: 0
}

.ambienteVitrine img {
	width: 260px;
	height: 188px
}

.ambienteVitrine .descricao {
	margin: 0 0 35px
}

.ambienteVitrine a, .categoriaVitrine a {
	color: #424242
}

.ambienteVitrine a:hover, .categoriaVitrine a:hover {
	color: #2370b8
}

.ambienteVitrine .texto, .categoriaVitrine .texto {
	padding: 0 20px;
	margin: 0
}

.ambienteVitrine .texto p, .categoriaVitrine .texto p {
	padding: 20px 0 0;
	margin: 0
}

.filter-bar {
	height: 125px;
	width: 100%;
	margin-top: 12px;
	margin-bottom: 35px;
	vertical-align: middle;
	float: left;
	padding: 0
}

.filter-bar .filter-tabs {
	float: left;
	border-bottom: 1px solid #e6e6e6;
	width: 100%
}

.filter-bar .filter-tabs.tab-yellow {
	border-bottom: 10px solid #ffe01a
}

.filter-bar .filter-tabs.tab-blue {
	border-bottom: 10px solid #0288d1
}

.filter-bar .filter-tabs a:hover {
	text-decoration: none !important
}

.filter-bar .filter-tabs a.tabs {
	cursor: pointer;
	float: left;
	background-color: #f2f2f2;
	color: #424242;
	margin-left: 10px;
	margin-bottom: 0;
	padding: 15px 25px;
	border: 1px solid #c2c2c2;
	border-bottom: 0 solid !important;
	border-radius: 3px
}

.filter-bar .filter-tabs .tab-products {
	background-image: none
}

.filter-bar .filter-tabs a.tabs.tab-products.selected, .filter-bar .filter-tabs a.tabs.tab-products:hover
	{
	background: #ffe01a;
	border-bottom: 1px solid #ffe01a
}

.filter-bar .filter-tabs a.tabs.tab-products.noselected {
	border-bottom: none;
	background-color: #ffe01a
}

.filter-bar .filter-tabs a.tabs.tab-design, .filter-bar .filter-tabs a.tabs.tab-design.selected
	{
	width: 65px;
	background-color: #0288d1;
	border-bottom: 1px solid #0288d1;
	background-position: -1067px -2045px;
	text-indent: -999px
}

.filter-bar .filter-tabs a.tabs.tab-design:hover {
	background-color: #197fd3;
	border-bottom: 1px solid #197fd3;
	background-position: -1067px -2045px
}

.filter-bar .filter-tabs a.tabs.selected.tab-design:hover {
	background-color: #0288d1;
	border-bottom: 1px solid #0288d1;
	background-position: -1067px -2045px
}

.filter-bar .filter-tabs a.tabs.tab-design.noselected {
	border-bottom: none
}

.filter-bar .change-view, .filter-bar .filter-order, .filter-bar .filter-select
	{
	margin-right: 30px;
	margin-top: 20px
}

.filter-bar .filter-order select, .filter-bar .filter-select select {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	padding-right: 25px !important;
	width: auto;
	margin: 0
}

.filter-bar .filter-order p, .filter-bar .filter-select p {
	padding: 10px 5px 0 0
}

.filter-bar .filter-order {
	margin-right: 0 !important
}

.filter-bar .change-view {
	margin-right: 0
}

.filter-bar .change-view div {
	padding-top: 3px
}

.filter-bar .change-view p {
	padding: 2px 12px 0 0
}

.filter-bar .change-view .coluna {
	display: block;
	float: left;
	margin-right: 15px;
	width: 60px;
	height: 15px;
	text-indent: -999px;
	overflow: hidden
}

.filter-bar .change-view .coluna.enabled {
	background-position: -1236px -1171px
}

.filter-bar .change-view .coluna.disabled, .filter-bar .change-view .coluna.enabled:hover
	{
	background-position: -1237px -1196px
}

.filter-bar .change-view .lista {
	display: block;
	float: left;
	width: 43px;
	height: 15px;
	text-indent: -999px;
	overflow: hidden
}

.filter-bar .change-view .lista.enabled {
	background-position: -1250px -1222px
}

.filter-bar .change-view .lista.disabled, .filter-bar .change-view .lista.enabled:hover
	{
	background-position: -1250px -1247px
}

.content .navigation {
	margin-top: 5px;
	float: right;
	width: auto;
	margin-bottom: 0
}

.content .pagination-footer {
	display: block;
	margin-bottom: 35px
}

.content .pagination-footer .btn-pages {
	margin-bottom: 20px;
	text-align: center
}

.content .pagination-footer .btn-pages .page-buttons {
	text-align: center
}

.content .pagination-footer .btn-pages .page-buttons div {
	display: inline-block;
	width: 157px
}

.content .pagination-footer .btn-pages .btn-next, .content .pagination-footer .btn-pages .btn-prev
	{
	width: 157px;
	height: 50px;
	display: inline-block
}

.content .pagination-footer .btn-pages .btn-prev.select {
	background-position: -362px -1415px
}

.content .pagination-footer .btn-pages .btn-prev.select:hover {
	background-position: -362px -1468px
}

.content .pagination-footer .btn-pages .btn-prev.deselect {
	background-position: -174px -518px
}

.content .pagination-footer .btn-pages .btn-next.select {
	background-position: -362px -1529px
}

.content .pagination-footer .btn-pages .btn-next.select:hover {
	background-position: -362px -1582px
}

.content .pagination-footer .btn-pages .btn-next.deselect {
	background-position: -174px -573px
}

.content .navigationfooter {
	height: 20px !important;
	width: 770px !important;
	margin-top: 12px !important;
	background-color: #f5f5f5 !important;
	vertical-align: middle !important;
	float: left !important;
	padding: 2px 15px 15px !important;
	position: relative !important
}

.content .viewed-pagesfooter {
	width: auto;
	text-align: center;
	margin-top: 10px
}

.content .navigation .viewed-pages {
	float: left
}

.content .navigation .number-pages {
	float: right
}

.content .navigation .number-pages .nav li {
	line-height: 30px;
	padding-left: 2px
}

.content .navigation .number-pages .nav li, .content .navigation .number-pages .nav li a,
	.content .navigation .number-pages .nav li input, .content .navigation .number-pages .nav li label
	{
	font-size: 12px;
	color: #424242;
	vertical-align: middle;
	display: inline-block;
	float: none
}

.content .navigation .number-pages .nav li label {
	margin: 0;
	padding: 0
}

.content .navigation .number-pages .nav li a {
	min-width: 15px;
	text-decoration: none;
	border-radius: 3px;
	padding: 5px
}

.content .navigation .number-pages .nav li strong.selected {
	background-color: #52443a;
	color: #fff;
	padding: 1px 5px;
	border-radius: 3px
}

.content .navigation .number-pages a, .content .navigation .number-pages strong
	{
	color: #53453c
}

.content .navigation .number-pages .fetch {
	width: 15px;
	height: 15px
}

.content .navigation .number-pages .fetch a:hover {
	text-decoration: underline
}

.content .navigation .number-pages label {
	width: auto
}

.content .navigation .number-pages input {
	width: auto;
	padding: 0 5px;
	line-height: 30px;
	display: inline-block;
	text-align: center;
	border: 1px solid #eee;
	max-width: 20px
}

.content .navigation .number-pages .nav li a.firstPage {
	background-position: -1350px -594px
}

.content .navigation .number-pages .nav li a.firstPage:hover {
	background-position: -1350px -619px
}

.content .navigation .number-pages .nav li a.prevPage {
	background-position: -1379px -594px
}

.content .navigation .number-pages .nav li a.prevPage:hover {
	background-position: -1379px -619px
}

.content .navigation .number-pages .nav li a.nextPage {
	background-position: -1294px -594px
}

.content .navigation .number-pages .nav li a.nextPage:hover {
	background-position: -1294px -619px
}

.content .navigation .number-pages .nav li a.lastPage {
	background-position: -1324px -594px
}

.content .navigation .number-pages .nav li a.lastPage:hover {
	background-position: -1324px -619px
}

#conteudo {
	width: 810px;
	float: right;
	margin: 0 0 0 5px
}

#conteudo.full {
	width: 100%;
	margin: 35px 0 0
}

#conteudo #d_conteudo_video, #conteudo #d_imagem_ampliada {
	display: none
}

.carrinho #conteudo.full {
	margin-top: 0 !important
}

.caixa {
	background-color: #fff;
	border-radius: 0
}

.caixa2 {
	background: #f2f2ee;
	border-radius: 3px
}

.chamadaSobre {
	height: 229px;
	font-size: 14px
}

.chamadaSobreLista p, .chamadaSobre p {
	margin-top: 25px
}

.imagemSobre {
	height: 245px
}

p.pbottom {
	padding-bottom: 20px
}

.chamadaSobre {
	height: 275px;
	font-size: 13px;
	margin-top: 15px
}

.chamadaSobre, .chamadaSobreLista {
	width: 380px;
	padding: 10px;
	float: left
}

.chamadaSobreLista {
	height: 262px;
	font-size: 14px
}

.chamadaSobreLista p, .chamadaSobre p {
	margin-top: 15px;
	line-height: 1.4;
	font-size: 14px
}

.chamadaSobre p:first-child {
	margin-top: 0
}

.imagemSobre {
	width: 390px;
	height: 275px;
	float: right;
	margin-top: 15px;
	position: relative;
	overflow: hidden
}

.imagemSobre img {
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate3d(-50%, -50%, 0);
	transform: translate3d(-50%, -50%, 0);
	height: 100%;
	width: auto;
	display: inline-block
}

.imagemMontadores a {
	float: right;
	margin-right: 3px
}

.imagemMontadores img {
	float: left;
	margin-top: 10px
}

.colunaPortal {
	width: 390px;
	float: left;
	font-size: 14px;
	padding: 5px;
	clear: right
}

.colunaPortal img {
	margin-top: 5px;
	display: block;
	width: 100%;
	height: auto
}

.colunaPortal p {
	margin: 10px 0 0
}

.coluna p {
	margin: 10px 0 0 8px
}

.detalhesCupomDesconto {
	background: #fff;
	height: 700px
}

.detalhesCupomDesconto h3 {
	padding: 25px 0 30px
}

.detalhesCupomDesconto img {
	position: absolute;
	margin: -42px 0 0 5px
}

.detalhesCupomDesconto ul {
	float: left;
	width: 188px;
	height: 300px;
	margin-left: 12px;
	margin-bottom: 50px;
	background-color: #f2f2ee
}

.detalhesCupomDesconto ul li p {
	padding: 170px 0 0;
	font-size: 14px;
	text-align: center
}

.detalhesCupomDesconto ul li p.observacao {
	margin: 0;
	padding: 5px 0 0;
	font-size: 9px
}

.detalhesCupomDesconto ul li.itemCupom {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/img-01-cupom.png)
		no-repeat;
	height: 160px;
	width: 160px;
	margin: 30px 0 0 12px
}

.detalhesCupomDesconto ul li.itemCarrinho {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/img-02-carrinho.png)
		no-repeat;
	height: 160px;
	width: 160px;
	margin: 30px 0 0 12px
}

.detalhesCupomDesconto ul li.itemCodigo {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/img-03-codigo.png)
		no-repeat;
	height: 160px;
	width: 160px;
	margin: 30px 0 0 12px
}

.detalhesCupomDesconto ul li.itemCalculo {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/img-04-calculo.png)
		no-repeat;
	height: 160px;
	width: 160px;
	margin: 30px 0 0 12px
}

.detalhesCupomDesconto ul li.itemCalculo img.imgBotao {
	height: 20px;
	width: 38px;
	margin: -2px 0 0
}

.detalhesCupomDesconto ul li.itemCalculo span {
	margin-left: 41px
}

.detalhesCupomDescontoFinal {
	width: 100% !important;
	background-color: #fff !important
}

.detalhesCupomDescontoFinal p {
	margin: 10px 0 0;
	font-size: 14px
}

.detalhesCupomDescontoFinal p.observacao {
	margin: 10px 0 0;
	font-size: 9px
}

.colunaPortalEntrega {
	float: left;
	font-size: 14px
}

.colunaPortalEntrega h3 {
	font-size: 22px
}

.coluna p {
	margin: 10px 0 0
}

.colunaPortalEntrega p.detalhePagamento {
	font-size: 10px
}

.colunaPortalEntrega p.subItem {
	text-indent: 10px
}

.colunaPortalEntrega p.menuLink {
	font-size: 12px
}

.colunaPortalEntrega a.linkPadrao {
	color: #52443c;
	text-decoration: underline
}

.paginaDepoimentos p.comentariosLoja {
	font-size: 14px;
	font-style: italic;
	padding: 0 0 10px;
	margin: 50px 0 0
}

.paginaDepoimentos span.nomeComentario {
	font-size: 14px;
	font-style: normal
}

.servicosSobre {
	width: 100%;
	float: left;
	margin-top: 20px;
	font-size: 14px
}

.servicosSobre li {
	width: 42%;
	margin-bottom: 25px;
	float: left;
	padding-right: 8%
}

.servicosSobre li.clear {
	width: 100%;
	clear: both;
	height: 1px;
	margin: -1px 0 0;
	padding: 0;
	float: none;
	display: block
}

.contatoChat a {
	float: left;
	margin-right: 5px;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/chat_on.gif)
		no-repeat;
	width: 77px;
	height: 68px;
	display: block;
	text-indent: -9999px;
	margin-top: 5px
}

.contatoChat span {
	width: 300px;
	float: left
}

.contatoChat span.offline {
	float: left;
	margin-right: 5px;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/chat_busy.gif)
		no-repeat;
	width: 77px;
	height: 68px;
	display: block;
	text-indent: -9999px;
	margin-top: 5px
}

.contatoChat a img {
	margin: 0
}

.chamadaResAmbiental {
	width: 380px;
	height: 260px;
	padding: 10px;
	float: left;
	font-size: 14px
}

.chamadaResAmbiental p {
	margin-top: 25px
}

.imagemResAmbiental {
	width: 390px;
	height: 280px;
	float: right
}

.chamadaResSocial {
	width: 380px;
	height: 260px;
	padding: 10px;
	float: left;
	font-size: 14px
}

.chamadaResSocial p {
	margin-top: 25px
}

.imagemResSocial {
	width: 390px;
	height: 280px;
	float: right
}

.chamadaComentarios {
	width: 380px;
	height: 260px;
	padding: 10px;
	float: left;
	font-size: 14px
}

.chamadaComentarios p {
	margin-top: 25px
}

.imagemComentarios {
	width: 390px;
	height: 280px;
	float: right
}

ul.inspire-se li {
	width: 300px;
	padding: 10px 52px;
	float: left
}

ul.inspire-se li.clear {
	clear: both;
	height: 1px;
	width: 754px
}

ul.inspire-se li img {
	margin-bottom: 10px
}

.chamadaUsuarioCadastrado {
	width: 375px;
	height: 560px;
	padding: 20px 10px;
	float: left;
	font-size: 14px
}

.imagemUsuarioCadastrado {
	width: 405px;
	height: 600px;
	float: right
}

.chamadaUsuarioCadastrado a {
	color: #52443c;
	text-decoration: underline
}

.chamadaUsuarioCadastrado p {
	margin-top: 15px
}

.chamadaUsuarioCadastrado img {
	display: block;
	border: 0;
	margin: 15px 0 10px 45px
}

.textoRodapeUsuarioCadastrado {
	padding: 10px 5px;
	font-size: 10px
}

.contato {
	float: left;
	margin: 30px 0
}

.contato .camposContato {
	display: none
}

.contato .tipo {
	text-align: center;
	margin: 5px 0 10px
}

.contato #cmpCNPJ {
	display: none
}

.contato p {
	margin: 10px 0
}

.contato select {
	margin: 5px 0 10px
}

.contato div.input {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/input/input-contato.gif)
		no-repeat;
	height: 16px
}

.contato div.input, .contato div.textarea {
	padding: 3px 4px;
	width: 222px;
	margin: 5px 0 10px
}

.contato div.textarea {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/input/textarea-contato.gif)
		no-repeat;
	height: 94px
}

.contato div.textarea textarea {
	width: 222px;
	height: 94px
}

.contato input[type=image] {
	width: auto;
	margin-top: 5px
}

.contato input[type=radio] {
	width: auto;
	margin: 0 30px 0 0;
	border: 1px solid red
}

#conteudo.trabalheConosco img {
	margin: 0;
	padding: 0
}

#conteudo.trabalheConosco h1 {
	font-size: 24px
}

#conteudo.trabalheConosco h2 {
	font-size: 24px;
	margin: 20px 0 15px 8px;
	font-weight: 700
}

#conteudo.trabalheConosco p, #conteudo.trabalheConosco ul li {
	line-height: 19px;
	margin: 20px 0 0
}

#conteudo.trabalheConosco form {
	margin-left: 8px
}

#conteudo.trabalheConosco .trabalhe-conosco div.input {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/input/input-trabalhe-conosco.gif)
		no-repeat;
	padding: 3px 4px;
	width: 322px;
	height: 16px;
	margin: 5px 0 10px
}

#conteudo.trabalheConosco .trabalhe-conosco div.input2 {
	width: 137px;
	height: 16px;
	padding: 3px 4px;
	margin: 5px 0 10px;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/input/input2-trabalhe-conosco.gif)
		no-repeat
}

#conteudo.trabalheConosco .trabalhe-conosco div.area {
	width: 330px;
	margin: 5px 0 10px
}

#conteudo.trabalheConosco .trabalhe-conosco div.curriculo {
	margin: 5px 0 10px
}

#conteudo.trabalheConosco .trabalhe-conosco div.curriculo input {
	width: 275px
}

#conteudo.trabalheConosco .trabalhe-conosco div.textarea {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/input/textarea-trabalhe-conosco.gif)
		no-repeat;
	padding: 3px 4px;
	width: 322px;
	height: 94px;
	margin: 5px 0 10px
}

#conteudo.trabalheConosco .trabalhe-conosco div.textarea textarea {
	width: 322px;
	height: 94px
}

#conteudo.trabalheConosco .trabalhe-conosco input.bt {
	width: 50px;
	height: 22px;
	margin-top: 5px;
	cursor: pointer;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/botoes/enviar.gif)
		no-repeat
}

#conteudo.trabalheConosco .wCem {
	width: 100%;
	float: left
}

#conteudo.trabalheConosco .agrupaVagas {
	float: left;
	width: 100%;
	margin: 20px 0 0;
	padding: 10px
}

#conteudo.trabalheConosco .agrupaVagas .listaVagas {
	background: #ecece6;
	float: left;
	width: 100%;
	padding: 10px
}

#conteudo.trabalheConosco .agrupaVagas h2 {
	width: 100%;
	float: left;
	margin: 0 0 10px
}

#conteudo.trabalheConosco .agrupaVagas span {
	margin: 10px 0 0 5px;
	font-size: 12px
}

#conteudo.trabalheConosco .agrupaVagas h3 {
	font-size: 12px
}

#conteudo.trabalheConosco .agrupaVagas ul {
	float: left
}

#conteudo.trabalheConosco .agrupaVagas ul.p {
	margin: 0 0 20px
}

#conteudo.trabalheConosco .agrupaVagas ul li {
	width: 250px;
	margin: 0
}

.produtos-lista-coluna .item-ambiente, .produtos-lista-coluna .item-produto,
	.produtos-lista-coluna .lkd-box-produto {
	border: 1px solid #fff;
	margin: 0 4px 10px 0;
	float: left;
	overflow: hidden;
	position: relative
}

.produtos-lista-coluna .item-ambiente:hover .lkd-product-box__wishlist,
	.produtos-lista-coluna .item-produto:hover .lkd-product-box__wishlist,
	.produtos-lista-coluna .lkd-box-produto:hover .lkd-product-box__wishlist
	{
	display: block
}

.produtos-lista-coluna .item-produto, .produtos-lista-coluna .lkd-box-produto
	{
	width: 260px;
	height: 460px
}

.produtos-lista-coluna .item-produto:hover, .produtos-lista-coluna .lkd-box-produto:hover
	{
	border: 1px solid #eee
}

.produtos-lista-coluna .item-produto:hover .lkd-product-box__wishlist,
	.produtos-lista-coluna .lkd-box-produto:hover .lkd-product-box__wishlist
	{
	width: auto !important
}

.produtos-lista-coluna .item-produto:hover .lkd-product-box__wishlist:after,
	.produtos-lista-coluna .lkd-box-produto:hover .lkd-product-box__wishlist:after
	{
	display: inline-block
}

.produtos-lista-coluna .item-ambiente {
	width: 394px;
	height: 445px
}

.produtos-lista-coluna .item-ambiente:hover {
	border: 1px solid #eee
}

.produtos-lista-coluna .item-ambiente img {
	height: 237px
}

.item-produto:hover .product-info, .lkd-box-produto:hover .product-info
	{
	background: #eee
}

.item-ambiente:hover .product-info {
	background: #eee;
	width: 364px
}

.item-ambiente .extra-info, .item-produto .extra-info, .lkd-box-produto .extra-info
	{
	margin: 15px 0 0
}

.item-ambiente:hover .extra-info, .item-produto:hover .extra-info,
	.lkd-box-produto:hover .extra-info {
	display: block
}

.item-produto .imagem-produto, .lkd-box-produto .imagem-produto {
	width: 260px
}

.item-ambiente .imagem-produto, .item-produto .imagem-produto,
	.lkd-box-produto .imagem-produto {
	text-align: left;
	min-height: 260px;
	position: relative;
	float: right;
	display: inline-block;
	overflow: hidden
}

.item-ambiente .imagem-produto {
	width: 260px;
	min-height: 236px;
	width: 394px
}

.item-produto .box_selos, .lkd-box-produto .box_selos {
	position: absolute;
	width: 70px;
	height: 260px;
	right: 0;
	opacity: 1
}

.item-ambiente .box_selos {
	position: absolute;
	width: 70px;
	height: 260px;
	right: 0;
	opacity: 1;
	height: 237px
}

.esgotado p {
	color: #fff
}

.black-friday {
	background-color: #000
}

.item-produto .desconto-preco, .item-produto .promocao, .lkd-box-produto .desconto-preco,
	.lkd-box-produto .promocao {
	background-color: #ffe01a
}

.item-produto .esgotado, .lkd-box-produto .esgotado, .saindo-de-linha,
	.selos-situacao .selo-esgotado {
	background-color: #666
}

.desconto-da-hora {
	background-color: #ff6f00
}

.item-produto:hover .desconto-preco, .item-produto:hover .esgotado,
	.lkd-box-produto:hover .desconto-preco, .lkd-box-produto:hover .esgotado
	{
	opacity: 1
}

.ambiente.lkd-box-produto .btn-mais-detalhes, .item-ambiente.ambiente .btn-mais-detalhes,
	.item-ambiente.produto .btn-mais-detalhes, .item-produto.ambiente .btn-mais-detalhes,
	.item-produto.produto .btn-mais-detalhes, .produto.lkd-box-produto .btn-mais-detalhes
	{
	background-color: #ffe01a;
	font-size: 12px;
	line-height: 30px;
	text-align: center;
	color: #424242;
	width: 175px;
	position: absolute;
	right: 0;
	bottom: 0;
	cursor: pointer;
	display: none
}

.item-ambiente:hover .related, .item-ambiente:hover .show-me-more,
	.item-produto:hover .related, .item-produto:hover .show-me-more,
	.lkd-box-produto:hover .related, .lkd-box-produto:hover .show-me-more {
	display: block
}

.item-ambiente .info-produto-coluna, .item-produto .info-produto-coluna,
	.lkd-box-produto .info-produto-coluna {
	background-image: -webkit-gradient(linear, right top, left top, color-stop(50%, #eee),
		color-stop(50%, #fff));
	background-image: -webkit-linear-gradient(right, #eee 50%, #fff 0);
	background-image: -webkit-gradient(linear, right top, left top, color-stop(50%, #eee),
		color-stop(0, #fff));
	background-image: linear-gradient(270deg, #eee 50%, #fff 0);
	background-size: 200% 100%;
	background-position: 0 0;
	padding: 15px;
	width: 230px;
	min-height: 156px;
	float: right;
	position: relative
}

.item-ambiente .info-produto-coluna p.product-name, .item-produto .info-produto-coluna p.product-name,
	.lkd-box-produto .info-produto-coluna p.product-name {
	height: 70px;
	line-height: 18px
}

.item-produto .info-produto-coluna p, .lkd-box-produto .info-produto-coluna p
	{
	line-height: 22px
}

.item-ambiente .info-produto-coluna {
	width: 364px
}

.item-ambiente .info-produto-coluna p {
	line-height: 22px
}

.item-ambiente:hover .info-produto-coluna, .item-produto:hover .info-produto-coluna,
	.lkd-box-produto:hover .info-produto-coluna {
	background-position: 100% 0
}

.item-ambiente .info-produto-coluna .rating, .item-produto .info-produto-coluna .rating,
	.lkd-box-produto .info-produto-coluna .rating {
	text-indent: -999px;
	overflow: hidden;
	width: 64px;
	display: block;
	height: 13px;
	margin-right: 10px;
	margin-top: 5px;
	float: left
}

.item-ambiente .info-produto-coluna .largura, .item-produto .info-produto-coluna .largura,
	.lkd-box-produto .info-produto-coluna .largura {
	margin-top: 5px;
	float: right;
	font-weight: 700;
	text-transform: uppercase;
	text-align: right;
	font-size: 8px;
	display: block !important
}

.product img {
	display: table;
	margin: 0 auto
}

.show-me-more {
	background-color: #ffe01a;
	text-align: center;
	width: 175px;
	position: absolute;
	right: 0;
	bottom: 0;
	display: none;
	padding: 5px 0 0
}

.show-me-more span {
	font-size: 12px;
	line-height: 31px;
	text-align: center;
	color: #424242;
	width: 175px;
	cursor: pointer
}

.arrow {
	width: 14px;
	height: 14px;
	background-position: -153px -2370px;
	position: absolute;
	right: 39px;
	bottom: 9px
}

.product-info {
	padding: 15px 15px 0;
	min-width: 230px;
	min-height: 193px;
	color: #424242
}

.product-info p.product-name {
	height: 70px;
	line-height: 18px;
	width: 230px
}

.item-ambiente .product-info p.product-name {
	width: 364px
}

.related .opcao-pagamento {
	width: 150px;
	margin: 5px 0 0;
	line-height: 17px
}

.box-prices {
	height: 80px;
	margin: 15px 0 0
}

.box-prices p {
	margin: 0
}

.box-prices p span {
	margin-bottom: 4px !important
}

.box-prices p strong.preco-a-vista {
	font-size: 16px !important
}

.box-prices p span.preco-por {
	color: #424242;
	font-size: 14px !important
}

.box-prices p span.preco-por label {
	display: none
}

.box-prices p.opcao-pagamento {
	color: #ffc61a
}

.extra-info .spread {
	font-weight: 700;
	text-transform: uppercase;
	font-size: 8px;
	margin: 4px 0 0
}

.extra-info .evaluation {
	text-indent: -999px;
	overflow: hidden;
	width: 64px
}

.related {
	display: none;
	float: left;
	width: 174px;
	height: 460px;
	background: #eee;
	position: relative
}

.related a {
	text-decoration: none !important;
	color: #424242
}

.related img {
	display: table;
	margin: 15px auto 0;
	width: 118px;
	height: 118px !important
}

.related .info {
	display: table;
	padding: 10px 0 0 15px;
	width: 144px;
	height: 62px
}

.related .title {
	font-size: 8pt;
	line-height: 12px;
	height: 22px;
	margin-bottom: 5px
}

.unavailable:hover {
	border: 1px solid #eee;
	width: 434px;
	margin-left: -174px
}

.unavailable.lkd-box-produto:hover, .unavailable:hover.item-produto,
	.unavailable:hover .lkd-box-produto, .unavailable:hover .produto {
	padding-left: 174px
}

.unavailable.lkd-box-produto:hover .lkd-product-box__wishlist,
	.unavailable:hover.item-produto .lkd-product-box__wishlist,
	.unavailable:hover .lkd-box-produto .lkd-product-box__wishlist,
	.unavailable:hover .produto .lkd-product-box__wishlist {
	left: 184px
}

.unavailable:hover .related {
	margin-left: -174px
}

.item-ambiente.unavailable:hover {
	border: 1px solid #eee;
	width: 394px;
	padding-left: 174px
}

.item-ambiente.unavailable:hover .product {
	width: 394px
}

.item-ambiente.unavailable:hover .lkd-product-box__wishlist {
	left: 184px
}

.unavailable:hover .product {
	width: 260px
}

.unavailable .show-me-more {
	background: #424242;
	left: 0;
	width: 220px
}

.unavailable .show-me-more div {
	right: 188px;
	background-position: -173px -2370px
}

.unavailable .show-me-more span {
	margin-left: -45px
}

.unavailable .show-me-more span:after {
	content: "Conheça móveis similares";
	color: #fff
}

.item-ambiente .produto img {
	display: none;
	height: 237px
}

.nowrap-listagem {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	line-height: 18px;
	max-height: 54px;
	-webkit-line-clamp: 3;
	-webkit-box-orient: vertical
}

a.historico-precos-produto {
	color: #2370b8
}

a.historico-precos-produto img {
	width: 36px;
	height: auto;
	float: left
}

a.historico-precos-produto .text {
	width: 85px;
	margin-top: 3px;
	text-align: justify;
	margin-left: 6px;
	font-size: 11px
}

a.historico-precos-produto .text:hover {
	text-decoration: underline
}

.lkd-product-box {
	-webkit-box-shadow: 0 0 2px rgba(0, 0, 0, .2);
	box-shadow: 0 0 2px rgba(0, 0, 0, .2);
	border-radius: 4px;
	margin: 0 15px 15px;
	-webkit-transition: -webkit-box-shadow .2s
		cubic-bezier(.76, .03, 0, .65);
	transition: -webkit-box-shadow .2s cubic-bezier(.76, .03, 0, .65);
	transition: box-shadow .2s cubic-bezier(.76, .03, 0, .65);
	transition: box-shadow .2s cubic-bezier(.76, .03, 0, .65),
		-webkit-box-shadow .2s cubic-bezier(.76, .03, 0, .65);
	background-image: none !important;
	background: #f2f2f2 !important;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	max-width: 238px;
	float: left;
	width: 100% !important;
	height: 480px !important;
	position: relative
}

.lkd-product-box__wishlist {
	z-index: 100;
	color: #262626;
	padding: 5px 8px 4px;
	background-color: #fff;
	-webkit-box-shadow: 0 0 10px rgba(0, 0, 0, .1);
	box-shadow: 0 0 10px rgba(0, 0, 0, .1);
	border-radius: 50px;
	-webkit-transition: background-color .2s cubic-bezier(.76, .03, 0, .65),
		color .2s cubic-bezier(.76, .03, 0, .65);
	transition: background-color .2s cubic-bezier(.76, .03, 0, .65), color
		.2s cubic-bezier(.76, .03, 0, .65);
	width: 20px;
	line-height: 27px
}

.lkd-product-box__wishlist-icon {
	font-size: 1.4rem
}

.lkd-product-box__wishlist-icon, .lkd-product-box__wishlist:after {
	display: inline-block;
	vertical-align: middle
}

.lkd-product-box__wishlist:after {
	content: "Adicionar à lista";
	display: none
}

.lkd-product-box__wishlist.on-list {
	background-color: #2370b8;
	color: #fff
}

.lkd-product-box__wishlist.on-list:after {
	content: "Adicionado"
}

.lkd-product-box:hover {
	-webkit-box-shadow: 0 0 6px rgba(0, 0, 0, .2);
	box-shadow: 0 0 6px rgba(0, 0, 0, .2)
}

.lkd-product-box:hover .lkd-product-box__wishlist {
	width: auto !important
}

.lkd-product-box:hover .lkd-product-box__wishlist:after {
	display: inline-block
}

.lkd-product-box__meta {
	min-height: 95px
}

.lkd-product-box__seals {
	border-radius: 4px;
	display: block;
	z-index: 2;
	position: absolute;
	top: 5px;
	right: 5px
}

.lkd-product-box__seals .selo-produto {
	width: 60px;
	height: 60px !important;
	margin-right: 5px
}

.lkd-product-box__seals .selo-produto.linhas-2 {
	padding-top: 20px
}

.lkd-product-box__seals .selo-produto.linhas-3 {
	padding-top: 13px
}

.lkd-product-box__seals .selo-produto.linhas-1 {
	padding-top: 25px
}

.lkd-product-box__thumb {
	display: block;
	position: relative;
	border-bottom: 5px solid #2370b8;
	margin-bottom: 15px;
	overflow: hidden;
	height: 230px;
	width: 100%
}

.lkd-product-box__img {
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transition: opacity .2s cubic-bezier(.76, .03, 0, .65);
	transition: opacity .2s cubic-bezier(.76, .03, 0, .65);
	border-radius: 4px;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
	width: auto;
	height: 250px;
	display: block;
	-webkit-transform: translate3d(-50%, -50%, 0);
	transform: translate3d(-50%, -50%, 0)
}

.lkd-product-box__footer, .lkd-product-box__header {
	padding: 0 15px 15px
}

.lkd-product-box__footer a, .lkd-product-box__header a {
	color: #424242
}

.lkd-product-box__footer-remove {
	padding-top: 10px;
	text-align: center;
	display: block
}

.lkd-product-box__footer-remove:active, .lkd-product-box__footer-remove:focus,
	.lkd-product-box__footer-remove:hover {
	color: #e53935;
	text-decoration: none !important
}

.lkd-product-box__footer .lkd-btn {
	padding: 0 15px;
	display: block
}

.lkd-product-box__title {
	font-size: 14px !important;
	margin-bottom: 15px !important;
	background-color: transparent !important;
	text-align: left !important;
	font-weight: 400;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	line-height: 1;
	max-height: 35px;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical
}

.lkd-product-box__title, .lkd-product-box__title a {
	color: #262626
}

.lkd-product-box p {
	font-size: 16px;
	line-height: 1.5
}

.lkd-product-box .preco-de {
	font-size: 12px
}

.lkd-product-box .opcao-pagamento-a-vista {
	font-size: 14px
}

.lkd-product-box .c-lkd {
	color: #ffc61a
}

.lkd-product-box__meta p {
	margin-bottom: 0
}

.lkd-product-box__button {
	color: #424242;
	background-color: #ffc107;
	display: block;
	width: 100%
}

.lkd-product-box__button:focus, .lkd-product-box__button:hover {
	color: #3a3a3a;
	background-color: #edb100
}

.lkd-product-box__button:active {
	background-color: #d39e00
}

.products-showcase-visited {
	width: 67%;
	float: right !important
}

.products-showcase-visited__carosel {
	width: 510px
}

.lkd-showcase__title {
	font-weight: 400;
	padding: 15px;
	font-size: 1.5em;
	margin-bottom: 0
}

.lkd-showcase__featured {
	width: 30%
}

.lkd-showcase__featured .lkd-product-box {
	max-width: 212px !important
}

.lkd-showcase__title_featured {
	font-weight: 400;
	padding: 15px;
	display: block;
	font-size: 1.5em;
	margin: 0
}

.lkd-showcase .lkd-product-box__wishlist {
	width: 37px
}

.lkd-showcase .lkd-product-box__wishlist:hover {
	width: auto
}

.lkd-showcase__img_reload_products {
	width: 19px;
	margin-top: 2px
}

button.botao, button.botao:active, button.botao:focus {
	border: none;
	-webkit-box-shadow: none;
	box-shadow: none
}

.products-showcase, .products-showcase-similar {
	position: relative
}

.products-showcase-similar .carouselNext, .products-showcase-similar .carouselPrev,
	.products-showcase .carouselNext, .products-showcase .carouselPrev {
	z-index: 1;
	position: absolute;
	top: 50%
}

.products-showcase-similar .carouselPrev, .products-showcase .carouselPrev
	{
	left: 0
}

.products-showcase-similar .carouselNext, .products-showcase .carouselNext
	{
	right: 0
}

.products-showcase-similar {
	padding-right: 15px
}

.products-showcase-similar__carosel {
	width: 1000px
}

.products-showcase__carosel {
	width: 100%
}

#fourth-line .lkd-product-box__wishlist, .pricebox .lkd-product-box__wishlist
	{
	padding: 0;
	line-height: 29px;
	max-width: 150px;
	margin: 10px auto;
	display: block;
	width: 100% !important;
	text-align: center
}

#fourth-line .lkd-product-box__wishlist:after, .pricebox .lkd-product-box__wishlist:after
	{
	display: inline-block;
	font-size: .9em
}

.product-board>div#fourth-line {
	padding: 0
}

.product-board>div#fourth-line .view-description {
	float: left
}

.product-board>div#fourth-line .lkd-product-box__wishlist {
	min-width: 150px;
	margin: 0;
	display: inline-block;
	width: auto !important;
	float: right
}

.item-ambiente.ambiente .lkd-product-box__wishlist, .item-ambiente.produto .lkd-product-box__wishlist,
	.item-produto.produto .lkd-product-box__wishlist, .lkd-product-box .lkd-product-box__wishlist,
	.produto.lkd-box-produto .lkd-product-box__wishlist {
	position: absolute;
	top: 10px;
	left: 10px
}

.item-ambiente.ambiente:hover .lkd-product-box__wishlist, .item-ambiente.produto:hover .lkd-product-box__wishlist,
	.item-produto.produto:hover .lkd-product-box__wishlist,
	.lkd-product-box:hover .lkd-product-box__wishlist, .produto.lkd-box-produto:hover .lkd-product-box__wishlist
	{
	width: auto !important;
	text-decoration: none !important
}

.item-ambiente.ambiente:hover .lkd-product-box__wishlist:after,
	.item-ambiente.produto:hover .lkd-product-box__wishlist:after,
	.item-produto.produto:hover .lkd-product-box__wishlist:after,
	.lkd-product-box:hover .lkd-product-box__wishlist:after, .produto.lkd-box-produto:hover .lkd-product-box__wishlist:after
	{
	display: inline-block !important
}

.lkd-box-produto {
	width: 260px !important;
	height: 460px !important
}

.lkd-box-produto .product.left {
	float: none !important
}

.lkd-box-produto .imagem-produto {
	min-height: 260px !important;
	width: 260px !important
}

.lkd-box-produto.item-ambiente .imagem-produto img {
	position: absolute;
	top: 0;
	left: 0;
	-webkit-transform: translate3d(-20%, 0, 0);
	transform: translate3d(-20%, 0, 0);
	height: 260px
}

.jquery-modal.blocker, .padiFade {
	background-color: #212121 !important;
	background: #212121 !important;
	opacity: .8 !important;
	z-index: 19000 !important
}

.similaritems {
	float: left;
	margin-top: 20px
}

#content .nomeProduto h1 {
	display: inline;
	font-size: 24px;
	line-height: 24px !important
}

h2.other_products {
	float: left;
	font-size: 11px;
	font-weight: 400;
	margin-bottom: 15px
}

h2.other_products a {
	color: #2370b8;
	font-weight: 400
}

.product-descricao {
	float: left;
	padding-bottom: 15px;
	border-bottom: 1px solid #e6e6e6;
	width: 1000px
}

.product-descricao span.color {
	color: #ffc61a;
	font-weight: 700
}

.product-descricao .imagem-produto {
	width: 400px;
	float: left
}

.imagem-dimensa {
	float: left
}

.imagem-dimensa i {
	background-position: -1111px -1711px;
	width: 150px;
	height: 167px
}

.product-descricao .product-info {
	float: right;
	width: 580px
}

.sub-titulo-produto {
	float: left;
	width: 100%;
	margin: 10px 0 15px
}

.box-produtos-derivados .boxCores {
	width: 9999px;
	position: relative
}

.box-produtos-derivados p {
	margin-bottom: 15px
}

.botaoComprar.dspNone {
	display: none
}

.botaoComprar .comprar-medium, .botaoComprar .frmComprar {
	margin: 0 auto
}

.box-disponibilidade .entrega-imediata {
	float: none;
	margin: 0 5px -2px;
	margin-bottom: -2px;
	display: inline-block
}

#carosel_owl_produto a {
	clear: both
}

#carosel_owl_produto .item {
	width: 64px !important;
	padding: 0;
	color: #fff;
	margin: 2px;
	border-radius: 3px;
	text-align: center
}

#carosel_owl_produto .item:hover {
	opacity: 1;
	border: 1px solid #ffe01a;
	margin: 1px
}

#carosel_owl_produto .item.selected {
	border: 2px solid #ffe01a;
	opacity: 1;
	margin: 0
}

#carosel_owl_produto .item.selected:hover {
	border: 2px solid #ffe01a
}

.customNavigation {
	text-align: center
}

.customNavigation a {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-tap-highlight-color: #000
}

.carousel_owl_play {
	height: 20px;
	width: 25px;
	background-color: rgba(0, 0, 0, .7);
	border-radius: 5px;
	position: relative
}

.carousel_owl_play:hover {
	background-color: #2370b8
}

.carousel_owl_play:after {
	content: "";
	display: block;
	position: absolute;
	top: 4px;
	left: 8px;
	margin: 0 auto;
	border-style: solid;
	border-width: 5px 0 5px 10px;
	border-color: transparent transparent transparent #fff
}

.product-descricao .boxCores li {
	float: left;
	margin-left: 5px;
	opacity: .3
}

.product-descricao .boxCores li.selected, .product-descricao .boxCores li:hover
	{
	width: 55px !important;
	height: 55px !important
}

.product-descricao .boxCores li.selected {
	border: 2px solid #ffe01a !important;
	opacity: 1
}

.product-descricao .boxCores li div {
	cursor: pointer;
	float: left;
	overflow: hidden;
	border: 1px solid #ccc
}

.product-descricao .boxCores li div img {
	width: 55px;
	height: 55px;
	display: block;
	float: left;
	overflow: hidden;
	margin: -1px
}

.product-descricao .boxCores li div:hover {
	border: 1px solid #ffe01a !important
}

.carouselNext, .carouselPrev {
	width: 17px;
	height: 57px;
	text-indent: -999px;
	overflow: hidden;
	display: inline-block;
	cursor: pointer;
	position: absolute;
	bottom: 4px
}

.carouselPrev {
	background-position: -179px -1769px;
	left: 0
}

.carouselNext {
	background-position: -194px -1769px;
	right: 0
}

.box-produtos-derivados .carouselPrev.inactive {
	background-position: -212px -1769px !important;
	cursor: auto
}

.box-produtos-derivados .carouselNext.inactive {
	background-position: -228px -1769px !important;
	cursor: auto
}

#carousel {
	width: 510px !important;
	overflow: hidden;
	display: inline-block
}

.list-product-thumbs li {
	margin-right: 2px;
	cursor: pointer;
	border: 1px solid #efefef;
	margin-right: 15px;
	margin-bottom: 15px
}

.list-product-thumbs li, .list-product-thumbs li div img {
	width: 86px !important;
	height: 86px !important;
	float: left;
	overflow: hidden
}

.list-product-thumbs li div img {
	display: block;
	margin: -1px
}

.list-product-thumbs li:hover {
	border: 1px solid #ffe01a !important
}

.list-product-thumbs li:nth-child(4), .list-product-thumbs li:nth-child(8),
	.list-product-thumbs li:nth-child(12) {
	margin-right: 0
}

.list-product-thumbs li.selected {
	border: 1px solid #ffe01a !important;
	overflow: hidden
}

li.selected {
	opacity: 1 !important
}

#thumbs-carousel {
	width: 400px !important;
	overflow: hidden;
	display: inline-block
}

.carousel-product-prev, .gallery-product-prev {
	background-position: -145px -1751px;
	float: left
}

.carousel-product-next, .carousel-product-prev, .gallery-product-next,
	.gallery-product-prev {
	width: 17px;
	height: 86px;
	text-indent: -999px;
	overflow: hidden;
	display: inline-block;
	cursor: pointer;
	background-color: #f6f6f6
}

.carousel-product-next, .gallery-product-next {
	background-position: -161px -1751px;
	float: right
}

.carousel-product-prev.inactive, .gallery-product-prev.disabled,
	.prev-navigation.inactive {
	background-position: -247px -1751px !important;
	cursor: default
}

.carousel-product-next.inactive, .gallery-product-next.disabled,
	.next-navigation.inactive {
	background-position: -263px -1751px !important;
	cursor: default
}

#galeria-kits {
	width: 1000px !important;
	display: inline-block;
	margin: 0
}

#galeria-kits img {
	width: 238px;
	margin: 7px 5px;
	height: 145px
}

.carousel-kits-prev {
	background-position: -945px -682px;
	left: 0;
	border-radius: 0 100px 100px 0
}

.carousel-kits-next, .carousel-kits-prev {
	width: 32px;
	height: 72px;
	text-indent: -999px;
	overflow: hidden;
	display: inline-block;
	float: left;
	cursor: pointer;
	position: absolute;
	background-color: #e6e6e6;
	z-index: 1;
	top: 66px
}

.carousel-kits-next {
	background-position: -904px -681px;
	right: 0;
	border-radius: 100px 0 0 100px
}

.carousel-kits-prev.inactive {
	background-position: -279px -1720px !important;
	cursor: auto
}

.carousel-kits-next {
	opacity: .6
}

.carousel-kits-next.inactive {
	background-position: -297px -1720px !important;
	cursor: auto
}

.carousel-kits-prev {
	opacity: .6
}

.carousel-kits-next:hover, .carousel-kits-prev:hover {
	opacity: 1
}

#galeria-kits li {
	margin-right: 10px;
	width: 250px
}

.extra-info-carousel {
	border-bottom: 1px solid #e6e6e6;
	padding: 20px 0 25px;
	width: 560px;
	height: 50px
}

.box-comprar, .box-compre-junto, .box-disponibilidade,
	.box-opcoes-parcelamento, .box-other-payments {
	padding: 20px 0;
	border-bottom: 1px solid #e6e6e6;
	float: left;
	width: 100%
}

.box-comprar {
	padding: 25px 0
}

.box-caracteristicas-tecnicas, .box-content-product, .box-descricao,
	.box-dimensoes, .box-informacoes-gerais, .info-importante {
	padding: 35px 3px 25px;
	float: left;
	width: 720px !important;
	position: relative
}

.box-infografico .box-caracteristicas-tecnicas, .box-infografico .box-content-product,
	.box-infografico .box-descricao, .box-infografico .box-dimensoes,
	.box-infografico .box-informacoes-gerais, .box-infografico .info-importante
	{
	padding: 15px 5px;
	float: none;
	width: 960px !important;
	position: relative;
	clear: both
}

.box-caracteristicas-tecnicas h2, .box-descricao h2, .box-dimensoes h2,
	.box-infografico h2, .box-informacoes-gerais h2, .box-opiniao h2,
	.info-importante h2 {
	font-weight: 700
}

.box-compre-junto {
	border: none;
	margin: 35px 0
}

.info-importante {
	padding: 35px 0
}

.subtitle {
	font-size: 18px;
	color: gray;
	margin-bottom: 15px
}

.box-descricao {
	font-size: 12px;
	padding-top: 5px
}

.box-descricao a {
	font-weight: 700
}

.box-comprar .box-preco-de {
	color: gray
}

.box-comprar .preco-de {
	text-decoration: line-through
}

.box-comprar .preco-de.normal {
	text-decoration: none;
	color: #52443c;
	font-weight: 700
}

.box-comprar .preco-por {
	font-size: 20px
}

.box-comprar .box-preco-produto {
	width: 340px;
	position: relative
}

.box-comprar .box-preco-produto p.priceA, .box-comprar .box-preco-produto p.priceN,
	.box-comprar .box-preco-produto p.priceP {
	position: relative
}

.box-comprar .box-preco-produto p.priceA {
	top: 30px
}

.box-comprar .box-preco-produto p.priceA span.preco-por {
	font-size: 14px;
	font-weight: 700
}

.box-comprar .box-preco-produto p.priceP {
	top: -25px
}

.box-comprar .preco-ou {
	font-size: 20px
}

.box-comprar .botoes {
	width: 220px;
	float: left
}

.preco-desconto {
	width: 74px;
	background-position: -15px -1765px;
	height: 35px;
	padding: 7px 0 0 19px;
	color: #262626;
	display: none
}

.preco-desconto span {
	font-weight: 700;
	color: #262626
}

.preco-desconto small {
	color: #262626
}

.imagem-produto .fotoPrincipal .preco-desconto {
	background-position: -13px -1832px;
	margin: -10px 0 0;
	position: absolute;
	z-index: 2;
	width: 50px;
	height: 30px;
	padding: 15px 0;
	line-height: 10px;
	letter-spacing: -1px;
	text-align: center;
	font-weight: 700;
	font-size: 16px
}

.box_805_150 {
	height: 150px;
	width: 805px;
	float: left
}

.botao-comprarnw, .btn-comprar-ambi {
	width: 212px;
	height: 72px;
	border-radius: 3px;
	border: 1px solid #0f9d58;
	padding: 12px 24px 20px 63px;
	font-weight: 700;
	font-size: 26px;
	color: #fff;
	cursor: pointer
}

.btn-comprar-ambi a {
	color: #fff;
	text-decoration: none
}

.btn-comprar-ambi a:hover {
	color: #fff
}

span.auxbtn {
	font-size: 11px;
	color: #7bdfa9
}

.botao-comprarnw:hover, .btn-comprar-ambi:hover {
	background-color: #1a8763;
	-webkit-transition: background-color .35s cubic-bezier(.76, .03, 0, .65);
	transition: background-color .35s cubic-bezier(.76, .03, 0, .65)
}

.add-to-my-list, .botao-comprar, .indique-por-email {
	display: block;
	text-indent: -999px;
	overflow: hidden;
	float: left
}

.add-to-my-list, .indique-por-email {
	width: 105px;
	height: 30px;
	margin: 3px 5px 0 0
}

.lista-de-desejo {
	margin-right: 7px;
	background-position: 1px -118px
}

.indique-por-email {
	background-position: 1px -148px
}

.box-preco-produto p {
	margin-bottom: 2px
}

.parcelas-block {
	float: left;
	width: 45%
}

.parcelas-block:not (:last-child ){
	margin-right: 28px
}

.box-opcoes-parcelamento {
	float: left;
	border-bottom: 1px solid #e6e6e6;
	width: 100%
}

#itens-cartao-credito {
	display: none
}

.box-opcoes-parcelamento #itens-cartao-credito ul li {
	margin-bottom: 15px
}

.box-opcoes-parcelamento #itens-cartao-credito ul li:first-child {
	margin-top: 10px
}

.img-dimensao {
	float: left;
	margin-right: 30px
}

.info-dimensao {
	float: left;
	width: 540px
}

.info-dimensao>div h2 {
	color: gray !important;
	font-size: 18px !important;
	text-align: left !important;
	width: auto !important
}

.produto-dimensao {
	margin-top: 20px
}

.produto-dimensao div {
	margin: 0 15px 10px 0
}

.produto-dimensao div p.subtitle {
	font-size: 16px;
	color: #52443c
}

.view-description {
	display: block;
	float: left;
	width: 173px;
	height: 32px;
	background-position: 0 -83px;
	text-indent: -999px;
	overflow: hidden
}

.box-button-view-description {
	float: left;
	margin-top: 13px
}

.box-social {
	width: 560px;
	padding: 12px 0 0
}

.box-social .padding {
	padding-top: 10px
}

.box-social-compartilhe {
	width: 580px;
	float: left;
	padding-top: 10px
}

.box-social-compartilhe p {
	padding: 15px 0;
	border-top: 1px solid #e6e6e6
}

.box-social-compartilhe div {
	display: block !important;
	height: 25px;
	width: 100px;
	float: left
}

.preco-a-vista-parcelado {
	color: #e98f00;
	height: auto
}

.preco-a-vista-parcelado strong, .preco-a-vista-parcelado strong .melhor-forma-valor-parcela,
	strong.melhor-forma-valor-parcela {
	color: #ffc61a;
	font-size: 15px;
	letter-spacing: -1px
}

strong.melhor-forma-valor-parcela {
	height: auto
}

.title-parcelamento {
	padding-right: 30px
}

.parcelas-down {
	text-indent: -999px;
	overflow: hidden;
	width: 15px;
	height: 15px;
	background-position: -111px -673px
}

#lean_overlay {
	position: fixed;
	z-index: 100;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	background: #000;
	display: none
}

#formulario-add-my-list, #formulario-indique-email {
	width: 600px;
	padding: 30px;
	display: none;
	background: #fff;
	border-radius: 3px;
	-webkit-box-shadow: 0 0 4px rgba(0, 0, 0, .7);
	box-shadow: 0 0 4px rgba(0, 0, 0, .7)
}

.titulo-parcelamento {
	width: 236px;
	clear: both;
	cursor: pointer
}

.titulo-parcelamento:hover {
	text-decoration: underline;
	color: #2370b8
}

.titulo-parcelamento span.parcele {
	color: #2370b8;
	text-decoration: none
}

.titulo-parcelamento i.parcele-cartao {
	float: left;
	margin-right: 5px
}

.icon-sanfona.retract {
	background-position: -1229px -1591px
}

.icon-sanfona.expandido {
	background-position: -1193px -1591px
}

.tbl-caracteristicas-tecnicas {
	color: #4d4d4d
}

.tbl-caracteristicas-tecnicas tr.cinza {
	background-color: #f2f2f2
}

.box-middle-informacao {
	float: left;
	padding: 35px 0 0
}

.box-middle-informacao h2 {
	margin: 15px 0 25px
}

.box-middle-informacao h2.subtitle {
	font-size: 18px;
	text-align: left;
	padding-top: 0;
	margin-top: 0
}

.comentar {
	height: 30px;
	background-position: 0 -212px;
	width: 126px;
	height: 36px;
	display: block;
	float: left;
	text-indent: -999px;
	overflow: hidden
}

.tirar-duvida {
	padding-top: 15px
}

.box-other-payments .other-payments-content {
	width: 250px;
	position: relative
}

.box-other-payments .other-payments-content img.seta {
	position: absolute;
	right: 0;
	top: 2px
}

.box-other-payments.ambiente {
	border: 0;
	padding: 0
}

.other-payments-content .icon-fetch-right {
	width: 8px;
	height: 12px;
	background-position: -206px -669px;
	text-indent: -999px;
	overflow: hidden;
	float: right;
	margin-top: 2px
}

.conteudo-flutuante {
	z-index: 1
}

.box-kits-relacionados {
	float: left;
	width: 100%;
	border-bottom: 1px solid #e6e6e6;
	padding: 25px 0 35px;
	position: relative
}

.box-detalhes-produtos, .box-video {
	float: left;
	width: 100%;
	padding: 10px 0 20px;
	border-bottom: 1px solid #e6e6e6
}

.box-video .box-youtube {
	text-align: left;
	margin-top: 15px
}

.box-youtube iframe {
	float: left
}

.box-youtube p {
	width: 405px;
	padding-left: 20px;
	float: left;
	line-height: 20px
}

.background-video {
	background-position: 50%;
	background-repeat: no-repeat;
	display: block;
	width: 88px
}

.foreground-video {
	width: 85px;
	height: 85px;
	border: 0;
	z-index: -1
}

#play-video {
	width: 85px;
	height: 85px;
	display: block
}

.box-detalhes-produtos h2, .box-middle-informacao h2, .box-opiniao h2,
	.box-video h2 {
	position: relative;
	color: gray;
	font-weight: 400;
	background-color: #fff;
	padding-top: 5px;
	font-size: 24px;
	text-align: center
}

.box-detalhes-produtos .title-box, .box-middle-informacao .title-box {
	padding: 0 0 10px
}

.box-detalhes-produtos p.paragrafo-box {
	padding-top: 10px
}

.box-detalhes-produtos .paragrafo-box span {
	text-transform: uppercase;
	vertical-align: inherit !important
}

.box-detalhes-produtos h2 {
	text-align: left;
	padding: 0
}

.linha-detalhes-produtos {
	font-size: 10px;
	font-weight: 700
}

.linha-detalhes-produtos span {
	text-transform: uppercase;
	cursor: pointer;
	color: #2370b8
}

.td-detalhes-produtos {
	border-bottom: 1px solid #ccc !important;
	padding: 0 !important
}

.imagem-selo-promocao {
	float: left;
	margin: 0 10px 0 0
}

.info-incial-topo {
	width: 100%;
	float: left;
	margin-right: 10px
}

.go-to-description {
	display: block;
	float: right;
	text-indent: -999px;
	overflow: hidden;
	width: 174px;
	height: 33px;
	background-position: 0 -829px;
	margin-right: 10px
}

#jOverlayContent .popUp {
	background-color: #fff
}

#cadastrarComentarioBox-mensagem {
	text-align: center;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/check_03.png)
		no-repeat 0;
	padding: 1px 0 0 25px;
	margin: 0 13%
}

small.ate, small.avista {
	margin-left: 3px;
	font-size: 9px;
	display: block;
	text-align: center;
	width: 35px
}

small.ate {
	margin-left: 6px;
	margin-bottom: 0
}

small.avista {
	margin-left: 7px;
	margin-top: 3px
}

.box-opcoes-parcelamento #itens-cartao-credito .parcelas-block.bloco1 ul li:first-child
	{
	font-weight: 700
}

.box-produtos-derivados {
	margin-top: 10px
}

.selos-situacao {
	float: left;
	margin-right: 10px
}

.selos-situacao .novidade {
	display: block;
	margin-top: 0;
	text-indent: -999px;
	overflow: hidden
}

.indicar-por-email {
	width: 360px;
	padding: 10px;
	float: left;
	background: #e7e7de;
	border-radius: 3px
}

.indicar-por-email form label {
	width: 100%;
	float: left
}

.indicar-por-email form div.item {
	width: 100%;
	float: left;
	margin-top: 10px
}

.indicar-por-email form div.textarea {
	width: 327px;
	height: 62px;
	padding: 3px 4px;
	display: block;
	float: left;
	background:
		url(//assets.lojaskd.com.br/releases/production/skin/lojaskd/images/input/textearea-opiniao.gif?)
		no-repeat
}

.indicar-por-email form div.textarea textarea {
	overflow: auto;
	height: 62px
}

.indicar-por-email form div.input {
	width: 182px;
	height: 15px;
	padding: 3px 4px;
	display: block;
	float: left;
	background:
		url(//assets.lojaskd.com.br/releases/production/skin/lojaskd/images/input/input-opiniao.gif?)
		no-repeat
}

#frmMiniLoginDetalhesProduto input[type=submit], .indicar-por-email form input[type=submit]
	{
	float: left;
	cursor: pointer;
	clear: both;
	margin-top: 10px;
	text-indent: -999px;
	overflow: hidden
}

.indicar-por-email form .lblErro {
	color: red
}

.box-expandir {
	float: left;
	width: 400px;
	padding: 15px 0;
	font-size: 10px
}

.thumbs-carousel li a {
	display: block;
	float: left
}

.ui-tooltip {
	padding: 8px !important;
	position: absolute !important;
	z-index: 9999 !important;
	max-width: 300px !important;
	-webkit-box-shadow: 0 0 5px #aaa !important;
	box-shadow: 0 0 5px #aaa !important;
	border-width: 1px !important
}

.ui-tooltip.ui-widget {
	font-size: 1.1em
}

.ui-tooltip.ui-widget .ui-widget, .ui-tooltip.ui-widget button,
	.ui-tooltip.ui-widget input, .ui-tooltip.ui-widget select, .ui-tooltip.ui-widget textarea
	{
	font-size: 1em
}

.ui-tooltip.ui-widget-content {
	border: 1px solid #ddd;
	background-color: #eee;
	color: #333
}

.ui-tooltip.ui-widget-content a {
	color: #333
}

.ui-tooltip.ui-widget-header {
	border: 1px solid #e78f08;
	background-color: #f6a828;
	color: #fff;
	font-weight: 700
}

.ui-tooltip.ui-widget-header a {
	color: #fff
}

.container-comprar-flutuante {
	position: fixed;
	min-height: 250px;
	top: 95px;
	right: 0;
	z-index: 2;
	display: none
}

.container-comprar-flutuante .box-comprar-flutuante p {
	margin: 0;
	padding: 0
}

.container-comprar-flutuante .target-button {
	background-position: -726px -1993px;
	background-color: #ccc;
	cursor: pointer;
	float: right;
	height: 50px;
	width: 50px
}

.container-comprar-flutuante .conteudo-flutuante {
	min-height: 350px
}

.container-comprar-flutuante .target-button.play {
	background-position: -776px -1993px !important
}

.box-comprar-flutuante, .conteudo-flutuante .prdforaRegiao {
	background-color: #fff;
	width: 212px;
	height: auto;
	padding: 15px 10px;
	border-radius: 0;
	-webkit-box-shadow: 0 0 4px 1px rgba(0, 0, 0, .1);
	box-shadow: 0 0 4px 1px rgba(0, 0, 0, .1)
}

.box-comprar-flutuante span.preco-de {
	color: #94867f;
	text-decoration: line-through
}

.box-comprar-flutuante span.preco-de.normal {
	text-decoration: none;
	color: #52443c;
	font-weight: 700
}

.box-comprar-flutuante .preco-por {
	font-size: 14px;
	font-weight: 700
}

.box-comprar-flutuante .preco-ou {
	font-size: 20px
}

.box-comprar-flutuante span.preco-de-por-ou span.preco-ou {
	color: gray
}

.box-comprar-flutuante .preco-qtd-parcela {
	color: #ffc61a
}

.box-comprar-flutuante .economize {
	color: #1a8763;
	font-size: 11px;
	display: block;
	margin-bottom: 15px
}

.box-comprar-flutuante .melhor-forma-valor-parcela {
	color: #ffc61a;
	font-size: 19px
}

.box-comprar-flutuante p {
	padding: 5px 0
}

.box-comprar-flutuante p.title {
	font-size: 14px;
	border-bottom: 1px solid #efefef;
	margin-bottom: 10px;
	padding-bottom: 10px
}

.conteudo-flutuante .prdforaRegiao {
	display: none;
	width: 250px;
	height: 215px;
	font-size: 13px
}

.conteudo-flutuante .prdforaRegiao label {
	display: block;
	background: #7ba8bb;
	padding: 10px;
	color: #fff;
	margin-top: 15px;
	font-weight: 700
}

.conteudo-flutuante .prdforaRegiao span {
	padding: 7px;
	margin: 20px 40px;
	float: left
}

.conteudo-flutuante .prdforaRegiao a {
	display: block;
	margin-top: 15px;
	text-decoration: underline;
	text-align: center
}

.box-comprar-flutuante span.auxbtn {
	font-size: 9px;
	color: #7bdfa9
}

.botao-comprar-flutuantenw:hover {
	background-color: #1a8763;
	-webkit-transition: background-color .35s cubic-bezier(.76, .03, 0, .65);
	transition: background-color .35s cubic-bezier(.76, .03, 0, .65)
}

.botao-comprar {
	width: 216px;
	height: 50px;
	display: block;
	text-indent: -999px;
	overflow: hidden;
	float: left;
	border: none;
	cursor: pointer
}

.box-comprar-flutuante .botao-comprar-flutuante {
	background-position: 0 -179px;
	width: 132px;
	height: 32px;
	text-indent: -999px;
	overflow: hidden;
	border: none;
	cursor: pointer;
	float: right
}

.box-posso-ajudar {
	border: 1px solid #e4e7ec;
	background-color: #f5f5f5;
	border-radius: 3px;
	padding: 10px;
	width: 250px;
	height: 60px;
	margin-top: 15px
}

.box-posso-ajudar .green {
	color: #4e8a06;
	font-size: 14px
}

.box-posso-ajudar p {
	padding: 2px
}

.box-posso-ajudar .posso-ajudar-texto {
	display: inline-block
}

.box-posso-ajudar .posso-ajudar-imagem {
	float: right;
	width: 56px;
	height: 69px;
	background-position: 0 -758px;
	text-indent: -999px;
	overflow: hidden
}

#avgRatingBox {
	bottom: 1em;
	left: 3em;
	float: left;
	padding-top: 5px
}

#avgRatingBox p {
	position: relative;
	left: -9999px
}

.box-tamanhos-derivados {
	padding: 10px 0;
	border-bottom: 1px solid #e6e6e6;
	float: left;
	width: 100%
}

.box-tamanhos-derivados .link-tamanho {
	border: 2px solid #c4c7cc;
	background-color: #e1e5e8;
	padding: 5px 10px;
	text-decoration: none;
	color: #000;
	margin: 0 10px 10px 0;
	display: block;
	float: left
}

.box-tamanhos-derivados .link-tamanho.selected {
	border: 2px solid #8aa1a9 !important;
	cursor: default;
	text-decoration: none !important
}

.box-tamanhos-derivados p {
	margin-bottom: 15px
}

#product-description .valor-frete-descricao {
	font-weight: 700
}

.valor-frete-descricao {
	color: #2370b8;
	border: 0;
	cursor: pointer;
	background-color: transparent;
	background: none;
	font-size: 12px;
	margin: 0;
	padding: 0
}

.valor-frete-descricao:hover {
	text-decoration: underline
}

.vlf {
	padding-top: 20px
}

#expandedImagesContainer {
	background-color: #fff;
	padding-top: 20px
}

div.slideshow-container {
	position: relative;
	height: 525px;
	width: 600px
}

div.loader {
	position: absolute;
	top: 0;
	left: 0;
	background-image:
		url(//assets.lojaskd.com.br/releases/production/skin/lojaskd/images/loader.gif);
	background-repeat: no-repeat;
	background-position: 50%;
	width: 800px;
	height: 800px
}

div.slideshow span.image-wrapper {
	display: block;
	position: absolute;
	top: 0;
	left: 0
}

ul.thumbs {
	clear: both;
	margin: 0;
	padding: 0;
	width: 5000px
}

ul.thumbs li {
	padding: 0;
	margin: 0;
	list-style: none;
	float: left;
	border: 1px solid #ccc;
	margin-right: 6px
}

a.thumb {
	padding: 0;
	display: inline;
	border: none
}

ul.thumbs li.selected a.thumb {
	color: #000;
	font-weight: 700
}

.exapanded-slideshow {
	text-align: center;
	padding-top: 10px
}

.exapanded-slideshow img {
	height: 500px;
	width: 500px
}

.galery-product-navigation {
	width: 555px;
	overflow: hidden;
	display: inline-block;
	margin-left: 6px
}

.product-info .prdforaRegiao {
	display: none;
	width: 565px;
	height: 215px;
	font-size: 13px !important
}

.product-info .prdforaRegiao label {
	display: block;
	font-size: 18px;
	background: #7ba8bb;
	width: 540px;
	padding: 10px;
	color: #fff;
	margin-top: 15px;
	font-weight: 700;
	border-radius: 0 5px 5px 0
}

.product-info .prdforaRegiao span {
	display: block;
	padding: 7px;
	margin: 20px 30px
}

.product-info .prdforaRegiao p span {
	display: block;
	padding: 7px;
	margin: 15px 0;
	float: left
}

.product-info .prdforaRegiao p span strong {
	font-size: 15px
}

.product-info .prdforaRegiao p i {
	display: block;
	background-position: -225px -515px;
	width: 65px;
	height: 65px;
	float: left;
	margin: 10px 15px
}

.product-info .prdforaRegiao a {
	display: block;
	margin-top: 15px;
	text-decoration: underline;
	text-align: center;
	float: right;
	margin-right: 10px
}

.outOfStock {
	display: block;
	width: 569px;
	height: 215px;
	background-position: 109px -2033px;
	float: left
}

.flt-crealizado {
	width: 330px;
	height: 40px;
	padding: 10px 0 10px 10px;
	background-color: #fff;
	border: 1px solid #fff;
	border-radius: 5px
}

.flt-crealizado img {
	position: absolute;
	top: 15px
}

.flt-crealizado p {
	padding-left: 15px;
	text-align: center
}

.flt-crealizado p.master {
	font-size: 18px
}

.flt-crealizado p.descript {
	font-size: 12px
}

.btn-close-master-crealizado {
	position: absolute;
	top: 6px;
	right: 8px
}

.btn-close-master-entenda-prazo {
	position: absolute;
	top: 9px;
	right: 15px
}

li.prazoambi {
	margin-bottom: 15px !important
}

.floater-prazo {
	width: 630px;
	height: 330px;
	padding: 40px;
	background-color: #fff;
	border: 1px solid #fff;
	border-radius: 5px
}

.floater-prazo .truck {
	width: 525px;
	height: 76px;
	background-color: #e7e7de;
	border: 1px solid #e7e7de;
	border-radius: 8px;
	margin-left: 100px
}

.floater-prazo .truck p {
	font-size: 22px;
	color: #52443c;
	text-align: left;
	padding: 25px 0 0;
	text-align: center;
	font-weight: 700;
	width: 443px
}

.floater-prazo .truck img {
	position: absolute;
	top: 29px;
	left: 30px
}

.floater-prazo .expli {
	padding: 25px 10px 0 30px
}

.floater-prazo .desen {
	margin: 25px 0 0 190px
}

.floater-prazo .desen p {
	color: #3e577a;
	font-size: 20px;
	background-color: #f3f3f3;
	padding: 15px;
	text-align: center
}

.floater-prazo .desen p.none {
	background: none;
	font-size: 60px;
	padding: 0
}

.floater-prazo .desen p.transp {
	width: 230px
}

.zoomPad {
	position: relative;
	float: left;
	z-index: 1;
	cursor: crosshair
}

.zoomPreload {
	opacity: .8;
	filter: alpha(opacity = 80);
	color: #333;
	font-size: 12px;
	font-family: Tahoma;
	text-decoration: none;
	padding: 8px;
	text-align: center;
	background-image:
		url(//assets.lojaskd.com.br/releases/production/dist/images/zoomloader.gif);
	background-repeat: no-repeat;
	background-position: 43px 30px;
	z-index: 110;
	width: 90px;
	height: 43px;
	top: 0;
	left: 0;
	*width: 100px;
	*height: 49px
}

.zoomPreload, .zoomPup {
	border: 1px solid #ccc;
	background-color: #fff;
	position: absolute
}

.zoomPup {
	overflow: hidden;
	opacity: .6;
	filter: alpha(opacity = 60);
	z-index: 120;
	z-index: 101;
	cursor: crosshair
}

.zoomOverlay {
	left: 0;
	top: 0;
	z-index: 5000;
	width: 100%;
	height: 100%;
	display: none;
	z-index: 101
}

.zoomOverlay, .zoomWindow {
	position: absolute;
	background: #fff
}

.zoomWindow {
	left: 110%;
	top: 40px;
	z-index: 6000;
	height: auto;
	z-index: 10000;
	z-index: 110
}

.zoomWrapper {
	position: relative;
	border: 1px solid #999;
	z-index: 110
}

.zoomWrapperTitle {
	display: block;
	background: #999;
	color: #fff;
	height: 18px;
	line-height: 18px;
	width: 100%;
	overflow: hidden;
	text-align: center;
	font-size: 10px;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 120;
	opacity: .6;
	filter: alpha(opacity = 60)
}

.zoomWrapperImage {
	display: block;
	position: relative;
	overflow: hidden;
	z-index: 110
}

.zoomWrapperImage img {
	border: 0;
	display: block;
	position: absolute;
	z-index: 101;
	max-width: inherit
}

.zoomIframe {
	z-index: -1;
	filter: alpha(opacity = 0);
	opacity: .8;
	position: absolute;
	display: block
}

.bt_tirar-duvida {
	background: #45c1f2;
	border: 1px solid #2370b8;
	font-size: 14px;
	margin: 10px 0 0 15px;
	color: #fff;
	border-radius: 3px;
	padding: 3px 10px
}

#product-description .produtosOpinioes {
	width: 100%;
	float: left;
	padding: 25px 0;
	font-size: 18px;
	border-bottom: 1px dotted #e6e6e6
}

.produtosOpinioes .nome {
	width: auto;
	float: left;
	color: gray;
	margin-right: 15px
}

.produtosOpinioes .nome span.name {
	text-transform: capitalize
}

.produtosOpinioes .info {
	margin-top: 5px;
	font-style: italic;
	color: #262626
}

.produtosOpinioes .info, .produtosOpinioes time {
	width: 100%;
	float: left;
	font-size: 12px;
	text-transform: none
}

.produtosOpinioes time {
	margin-top: 10px;
	color: gray
}

.estrelasOpinioes {
	width: 107px;
	float: left;
	margin-right: 4px;
	margin-top: 0
}

ul.estrelasOpinioesG {
	margin: 3px 0 0
}

.estrelasOpinioesG li, .estrelasOpinioes li {
	width: 17px;
	height: 17px;
	float: left;
	margin-left: 4px
}

.estrelasOpinioesG li.cheia, .estrelasOpinioes li.cheia {
	background-position: -1142px -1619px
}

.estrelasOpinioesG li.vazia, .estrelasOpinioes li.vazia {
	background-position: -1169px -1619px
}

.estrelasOpinioesBig li {
	width: 27px;
	height: 27px;
	float: left;
	margin-left: 4px
}

.estrelasOpinioesBig li.cheia {
	background-position: -1202px -1650px
}

.estrelasOpinioesBig li.vazia {
	background-position: -1233px -1650px
}

.box-infografico {
	border-bottom: 0
}

.box-infografico .ui-helper-hidden {
	display: none
}

.box-infografico .ui-helper-hidden-accessible {
	border: 0;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	margin: -1px;
	overflow: hidden;
	padding: 0;
	position: absolute;
	width: 1px
}

.box-infografico .ui-helper-reset {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
	line-height: 40px;
	text-decoration: none;
	font-size: 14px;
	list-style: none
}

.box-infografico .ui-helper-clearfix:before, .ui-helper-clearfix:after {
	content: "";
	display: table;
	border-collapse: collapse
}

.box-infografico .ui-helper-clearfix {
	min-height: 0
}

.box-infografico .ui-helper-clearfix:after {
	clear: both
}

.box-infografico .ui-helper-zfix {
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	position: absolute;
	opacity: 0;
	filter: Alpha(Opacity = 0)
}

.box-infografico .ui-front {
	z-index: 100
}

.box-infografico .ui-state-default, .ui-widget-content .ui-state-default,
	.ui-widget-header .ui-state-default {
	border: 1px solid #e6e6e6;
	background: #f2f2f2;
	color: #262626
}

.box-infografico .ui-state-default a, .box-infografico .ui-state-hover a,
	.ui-state-default a:link, .ui-state-default a:visited, .ui-state-hover a:hover,
	.ui-state-hover a:link, .ui-state-hover a:visited {
	color: #262626;
	text-decoration: none
}

.box-infografico .ui-state-active, .ui-widget-content .ui-state-active,
	.ui-widget-header .ui-state-active {
	background: #fff
}

.box-infografico .ui-state-highlight a, .ui-widget-content .ui-state-highlight a,
	.ui-widget-header .ui-state-highlight a {
	color: #363636
}

.box-infografico .ui-state-error-text, .box-infografico .ui-state-error a,
	.ui-widget-content .ui-state-error-text, .ui-widget-content .ui-state-error a,
	.ui-widget-header .ui-state-error-text, .ui-widget-header .ui-state-error a
	{
	color: #fff
}

.box-infografico .ui-priority-secondary, .ui-widget-content .ui-priority-secondary,
	.ui-widget-header .ui-priority-secondary {
	opacity: .7;
	filter: Alpha(Opacity = 70);
	font-weight: 400
}

.box-infografico .ui-state-disabled, .ui-widget-content .ui-state-disabled,
	.ui-widget-header .ui-state-disabled {
	opacity: .35;
	filter: Alpha(Opacity = 35);
	background-image: none
}

.box-infografico .ui-state-disabled .ui-icon {
	filter: Alpha(Opacity = 35)
}

.box-infografico .ui-tabs {
	position: relative
}

.box-infografico .ui-tabs .ui-tabs-nav {
	margin: 0;
	padding: 0;
	border-bottom: 2px solid #e6e6e6;
	height: 47px;
	border-radius: 0
}

.box-infografico .ui-tabs .ui-tabs-nav li {
	list-style: none;
	float: left;
	position: relative;
	top: 0;
	margin: 1px 0 0;
	border-bottom-width: 0;
	padding: 0;
	white-space: nowrap;
	border-top-right-radius: 3px;
	border-top-left-radius: 3px
}

.box-infografico .ui-tabs .ui-tabs-nav li:hover {
	background: #b2b2b2
}

.box-infografico .ui-tabs .ui-tabs-nav li.ui-state-active:hover {
	background: #fff
}

.box-infografico .ui-tabs .ui-tabs-nav li a {
	float: left;
	padding: 4px 16px 2px;
	text-decoration: none
}

.box-infografico .ui-tabs .ui-tabs-nav li a span:hover {
	color: #2370b8
}

.box-infografico .ui-tabs .ui-tabs-nav li a:hover {
	text-decoration: none !important
}

.box-infografico .ui-tabs .ui-tabs-nav li.ui-tabs-active {
	margin-bottom: -1px;
	padding-bottom: 2px
}

.box-infografico .ui-tabs .ui-tabs-nav li.ui-tabs-active a, .ui-tabs .ui-tabs-nav li.ui-state-disabled a,
	.ui-tabs .ui-tabs-nav li.ui-tabs-loading a {
	cursor: default
}

.box-infografico .ui-tabs-collapsible .ui-tabs-nav li.ui-tabs-active a,
	.box-infografico .ui-tabs .ui-tabs-nav li a {
	cursor: pointer
}

.box-infografico .ui-tabs .ui-tabs-panel {
	display: block;
	border: 1px solid #f2f2f2;
	padding: 1em 1.4em;
	background: none
}

.box-infografico .ui-widget-header {
	background: #fff
}

.box-infografico .ui-widget {
	width: 1000px
}

.box-infografico .ui-widget-content {
	color: #262626 !important
}

.box-infografico .ui-tabs-anchor span {
	margin-left: 5px;
	display: inline-block;
	margin-top: 5px;
	color: #262626
}

.box-infografico .ui-tabs-anchor small {
	margin-left: 35px;
	display: block;
	color: #262626;
	font-size: 9px;
	text-decoration: none
}

.box-infografico .ui-tabs-anchor small:hover {
	text-decoration: none
}

.box-infografico .ui-tabs-anchor {
	height: 40px
}

.box-item-infografico {
	display: block
}

.titulo-infografico {
	padding: 10px 0;
	font-size: 24px;
	color: gray !important
}

.preco_especial {
	background-position: -460px -1887px;
	display: block;
	float: left;
	width: 177px;
	height: 101px;
	font-size: 14px;
	color: #1a8763;
	font-weight: 700;
	padding-top: 20px;
	padding-left: 10px;
	display: none
}

.preco_especial p.destaque {
	margin-top: 13px
}

.preco_especial a {
	font-size: 11px;
	color: #1a8763;
	margin-top: 10px
}

.preco_especial_info {
	display: block;
	float: left;
	display: none
}

#viewprodutos .imagens_produto {
	width: 662px !important;
	overflow: hidden
}

.relogioDesconto {
	margin-bottom: 20px;
	height: 60px;
	width: 187px;
	display: none
}

.relogioDesconto.saindo_de_linha {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/campanhas/2014/selos/relogio_troca.jpg)
		no-repeat 50%;
	color: #262626
}

.relogioDesconto.negociacao {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/campanhas/2014/selos/relogio_arrasador.jpg)
		no-repeat 50%;
	color: #fff
}

.relogioDesconto.promocao {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/campanhas/2014/selos/relogio_vigente.jpg)
		no-repeat 50%;
	color: #333
}

.relogioDesconto .stopwatch {
	float: right;
	width: 245px;
	padding: 0;
	position: absolute
}

.relogioDesconto a {
	text-decoration: none;
	display: block;
	height: 60px;
	width: 187px
}

.relogioDesconto .dia_desconto {
	float: left;
	padding: 40px 0 0 3px;
	position: absolute
}

.relogioDesconto .dia_desconto label {
	font-size: 12px
}

.relogioDesconto span {
	font-weight: 700;
	font-size: 14px;
	margin: 0
}

.relogioDesconto .days {
	margin-right: 3px;
	font-size: 14px
}

.relogioDesconto .horario_desconto {
	margin: 40px 0 0 55px;
	float: left;
	font-size: 16px
}

.relogioDesconto .marginleft {
	margin-left: 5px !important
}

.marginTop10 {
	margin-top: 10px
}

#product-description #box-comentarios {
	display: none;
	float: left;
	border-top: 1px dotted #e6e6e6;
	margin-top: 25px;
	padding-top: 25px
}

#product-description .rodape {
	float: left
}

.box-comprar .economize {
	color: #1a8763;
	font-size: 11px;
	display: block;
	padding-top: 10px
}

.box-comprar .preco-economia {
	vertical-align: baseline
}

.box-opiniao a {
	margin-right: 10px
}

.box-opiniao h2 {
	margin: 0;
	padding: 0
}

.btn-opiniao {
	width: 1000px !important;
	color: gray;
	font-size: 18px;
	margin-top: 25px
}

.box-content-product h2 {
	display: block;
	text-align: left;
	padding: 0;
	margin: 0 0 15px
}

.box-content-product p {
	font-size: 12px;
	color: #262626
}

.blackfriday_esgotado {
	display: none
}

.relacionados .owl-item {
	width: 150px !important
}

ol.sub-title {
	float: right !important;
	border: 0 !important;
	background: transparent !important;
	font-size: 8pt
}

.selo-produto:hover .tooltipSeals {
	display: block
}

.tooltipSeals {
	display: none;
	position: absolute;
	top: 70px;
	overflow: inherit;
	word-wrap: break-word;
	right: 0;
	text-align: left;
	max-width: 150px;
	background: #ebebeb;
	padding: 10px;
	border-radius: 5px;
	z-index: 99
}

.tooltipSeals:before {
	content:
		url(//assets.lojaskd.com.br/releases/production/dist/images/arrow_top_seals.png);
	position: absolute;
	z-index: 100000;
	top: -10px;
	right: 20px
}

.item-ambiente:hover .selo-produto:not (:first-child ), .item-produto:hover .selo-produto:not
	(:first-child ), .lkd-box-produto:hover .selo-produto:not (:first-child
	){
	display: block
}

.item-produto .selo-produto, .lkd-box-produto .selo-produto {
	margin-top: 12px
}

.item-ambiente .selo-produto {
	margin-top: 5px
}

.selo-produto:not (:first-child ){
	display: none
}

.selo-produto {
	border-radius: 50px;
	margin-right: 5px;
	height: 60px;
	width: 60px
}

.selo-produto.linhas-2 {
	padding-top: 20px;
	height: 40px
}

.selo-produto.linhas-3 {
	padding-top: 15px;
	height: 46px
}

.selo-produto.linhas-1 {
	padding-top: 25px;
	height: 35px
}

.selo-produto p {
	font-weight: 700;
	font-size: 8px;
	text-transform: uppercase;
	color: #737373;
	line-height: 12px !important;
	letter-spacing: .5px
}

.selo-produto .linha-15chr, .selo-produto p, .selo-produto p span {
	display: block;
	text-align: center
}

.selo-produto .linha-15chr {
	font-size: 8px;
	line-height: 13px
}

#kit-description .selo-produto.linhas-1, #kit-description .selo-produto.linhas-2,
	#kit-description .selo-produto.linhas-3, #product-description .ab-description-original .selo-produto.linhas-1,
	#product-description .ab-description-original .selo-produto.linhas-2,
	#product-description .ab-description-original .selo-produto.linhas-3 {
	height: 60px;
	width: 60px
}

.productImages {
	width: 400px
}

.productInfo {
	width: 580px
}

.productName, .productOptions .extra-info-carousel, .productSeals {
	width: 290px
}

.extra-info-carousel {
	padding: 10px 0 50px;
	border: 0;
	height: 60px
}

.productName, .productSeals {
	height: 60px;
	margin-bottom: 45px
}

.productOptions .owl-carousel-cores {
	width: 255px
}

.box-comprar .botoes {
	width: 212px
}

.productSeals {
	position: relative
}

.productSeals .selo-produto {
	border-radius: 50px;
	background-color: #fff9c4;
	position: absolute;
	right: 0;
	width: 60px;
	height: 60px;
	line-height: 10px;
	text-align: center;
	z-index: 15;
	-webkit-transform: translateZ(0);
	transform: translateZ(0);
	-webkit-transition: all .4s cubic-bezier(.68, -.55, .265, 1.55);
	transition: all .4s cubic-bezier(.68, -.55, .265, 1.55)
}

.productSeals .selo-produto:first-child {
	right: 0
}

.productSeals .selo-produto:nth-child(2) {
	right: 76px;
	-webkit-transition-delay: .1s;
	transition-delay: .1s
}

.productSeals .selo-produto:nth-child(3) {
	right: 154px;
	-webkit-transition-delay: .2s;
	transition-delay: .2s
}

.productSeals:hover .selo-produto:nth-child(2) {
	-webkit-transition-delay: .1s;
	transition-delay: .1s
}

.productSeals:hover .selo-produto:nth-child(3) {
	-webkit-transition-delay: .2s;
	transition-delay: .2s
}

.productSeals .selo-produto:nth-child(4) {
	display: none
}

.productSeals .selo-produto.linhas-1 {
	padding-top: 25px;
	height: 35px
}

.productSeals .selo-produto.linhas-2 {
	padding-top: 20px;
	height: 40px
}

.productSeals .selo-produto.linhas-3 {
	padding-top: 14px;
	height: 46px
}

.productSeals .selo-produto p {
	font-weight: 700;
	font-size: 9px;
	text-transform: uppercase;
	color: #737373
}

.productSeals .selo-produto p, .productSeals .selo-produto p span {
	display: block;
	text-align: center
}

.productSeals .selo-produto .linha-9chr {
	letter-spacing: -1px
}

.productSeals .selo-produto .linha-15chr {
	font-size: 8px;
	letter-spacing: -1px;
	display: block;
	text-align: center;
	line-height: 13px
}

.bread-crumb {
	margin: 0
}

.border-top {
	border-top: 1px solid #e6e6e6
}

.product-board {
	float: right;
	width: 580px
}

.product-board>div {
	margin-bottom: 18px;
	padding: 21px 0 0;
	position: relative
}

.product-board>div:first-child {
	padding: 0
}

.product-title {
	width: 290px;
	float: left
}

.product-title h1 {
	font-size: 16px;
	font-weight: 400
}

.selos {
	float: right;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.colors-carousel {
	float: left;
	position: relative;
	padding: 0 20px
}

.colors {
	width: 295px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	height: 68px;
	overflow: hidden
}

.colors .owl-item {
	width: auto !important
}

.colors-item {
	width: 70px !important;
	border: 2px solid transparent;
	padding-top: 5px;
	margin: 0 2px;
	text-align: center;
	float: left
}

.colors-item.selected, .colors-item:hover {
	border-color: #ffe01a;
	opacity: 1
}

.variants {
	height: 87px;
	float: right;
	width: 212px
}

.colors-carousel p, .variants p {
	margin-bottom: 15px
}

.variants .link-tamanho {
	border: 2px solid #c4c7cc;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	background-color: #e1e5e8;
	padding: 5px 10px;
	text-decoration: none;
	color: #000
}

.variants .link-tamanho.selected {
	border: 2px solid #8aa1a9 !important;
	cursor: default;
	text-decoration: none !important
}

.variants>div {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	overflow: hidden;
	background-position: 166px -2354px;
	border: 1px solid #aaa;
	border-radius: 4px;
	width: 212px
}

.variants>div select {
	background: transparent;
	font-size: 16px;
	line-height: 1;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border: none;
	display: block;
	width: 100%;
	color: #aaa;
	height: 50px;
	cursor: pointer;
	padding: 0 10px
}

.product-prices p {
	margin-bottom: 10px
}

.preco-de {
	color: gray;
	text-decoration: line-through
}

.preco-ou {
	font-size: 20px
}

.preco-por {
	font-size: 14px
}

.economize {
	color: #1a8763;
	font-size: 11px
}

.price-installments {
	font-size: 14px
}

.price-installments-value {
	color: #ffc61a;
	font-weight: 700
}

.price-installments-value strong {
	font-size: 19px;
	letter-spacing: -1px
}

.product-buy {
	position: absolute;
	right: 0;
	bottom: 10px
}

.check-it-out {
	background-position: -556px -2285px;
	width: 136px;
	height: 30px;
	margin: 0
}

#fifth-line div {
	border-bottom: 0
}

.installments-options {
	border-top: 1px solid #e6e6e6;
	border-bottom: 0
}

.installments-options .title {
	width: 250px;
	clear: both;
	margin-bottom: 5px
}

.installments-options .title span.parcele {
	color: #2370b8;
	text-decoration: none
}

.other-payments {
	right: 0;
	bottom: 0;
	position: absolute
}

.product-share p {
	font-size: 10px
}

.product-share>div {
	margin: 10px 7px 0 0
}

.product-share .email {
	width: 146px;
	height: 30px;
	background-position: -713px -2285px;
	cursor: pointer;
	margin: 0
}

.product-share .email:hover {
	background-position: -713px -2325px
}

.product-share .social {
	width: 30px;
	height: 30px;
	float: left;
	cursor: pointer
}

.facebook {
	background-position: -871px -2285px
}

.facebook:hover {
	background-position: -871px -2325px
}

.facebook iframe, .facebook iframe ._3vtu, .facebook iframe ._3vtv {
	width: 30px !important;
	height: 30px !important
}

.facebook iframe ._3vtv {
	display: none
}

.twitter {
	background-position: -913px -2285px
}

.twitter:hover {
	background-position: -913px -2325px
}

.google-plus {
	background-position: -954px -2285px
}

.google-plus:hover {
	background-position: -954px -2325px
}

.pinterest {
	background-position: -996px -2285px
}

.pinterest:hover {
	background-position: -996px -2325px
}

.opinions {
	font-size: 10px;
	width: 176px;
	text-align: center
}

.opinions div {
	display: table;
	margin: 15px auto
}

.installments-info {
	background-position: -128px -2369px;
	width: 15px;
	height: 15px;
	float: right;
	cursor: pointer
}

.box-opcoes-parcelamento {
	display: none;
	padding: 0
}

.tooltip-input {
	display: none
}

.tooltip-input:checked ~label>.installments-info {
	background-position: -103px -2369px
}

.tooltip-input:checked ~.box-opcoes-parcelamento:not (:first-child ){
	display: block
}

.related-products>div {
	display: table;
	margin: 0 auto;
	padding-top: 30px
}

.related-products .items {
	width: 512px
}

.related-products .items a {
	text-decoration: none !important;
	color: #262626
}

.related-products .items a>div {
	display: table;
	margin: 0 auto;
	width: 150px
}

.related-products .items a>div img {
	height: 150px;
	margin-bottom: 15px;
	width: 150px
}

.related-products .items a>div p {
	display: table;
	width: 150px;
	margin: 10px 0 0
}

.nowrap {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	line-height: 16px;
	max-height: 32px;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical
}

.see-more-products {
	width: 512px;
	height: 33px;
	background-position: -18px -2281px;
	cursor: pointer
}

.see-more-products:hover {
	background-position: -18px -2321px
}

.sub-title {
	float: right !important;
	border: 0 !important;
	background: transparent !important;
	font-size: 8pt
}

.sub-title p {
	float: left
}

.sub-title p>a {
	color: #2370b8 !important;
	font-weight: 400 !important
}

.sub-title p>a:hover {
	text-decoration: underline !important
}

.seals {
	display: table;
	margin: 0 auto;
	padding-top: 10px
}

.seals .selo-produto.linhas-1 {
	padding-top: 25px;
	height: 35px
}

.price-from {
	color: gray;
	text-decoration: line-through
}

.notify_when_available {
	padding: 25px !important;
	background-color: #f2f2f2;
	margin-bottom: 0 !important;
	text-align: center
}

.notify_when_available h3 {
	font-size: 26px
}

#notify_when_available_text_content {
	display: none
}

#notify_when_available_text_content p:first-of-type {
	padding: 25px 0 5px;
	font-size: 21px
}

#notify_when_available_text_content p:nth-of-type(2) {
	font-size: 16px
}

#notify_when_available_form {
	margin: 18px 0 0;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

#notify_when_available_form input[type=email],
	#notify_when_available_form input[type=text] {
	max-width: 48%
}

#notify_when_available_form input[type=text] {
	float: left
}

#notify_when_available_form input[type=email] {
	float: right
}

#notify_when_available_form input[type=submit] {
	width: 210px;
	margin: 10px auto 0
}

#before_send_message {
	display: none;
	margin: 35px 0 0;
	font-size: 20px;
	color: #09395f
}

.borderRed {
	border: 1px solid #ff050c !important
}

.fb_iframe_widget_lift {
	z-index: 0 !important
}

.ambient {
	min-height: 500px;
	padding: 10px 0 0;
	width: 1000px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.ambient .qtd_prd_kit {
	width: 60px
}

.ambient p {
	margin: 0
}

.ambient .title {
	width: 100%;
	margin-bottom: 15px
}

.ambient .title h1 {
	font-size: 12pt;
	font-weight: 400;
	color: #262626
}

.ambient .title span.code {
	font-size: 10px
}

.ambient .title p.brand {
	padding: 12px 0
}

.ambient .boxambi {
	width: 1000px;
	height: auto
}

.ambient .boxambi .imgbox {
	width: 800px;
	height: auto;
	margin-left: -1px
}

.ambient .boxambi .imgbox .carousel-stage #imgPrincipalAmbiente {
	width: 800px;
	height: 480px;
	padding-bottom: 10px
}

.ambient .boxambi .imgbox .imgsnav {
	padding: 15px 15px 0;
	width: 770px
}

.ambient .boxambi .imgbox .carousel-navigation {
	width: 711px;
	height: 55px;
	overflow: hidden
}

.ambient .boxambi .imgbox .carousel-navigation ul li {
	padding-right: 17px;
	float: left
}

.ambient .boxambi .imgbox .carousel-navigation ul li:last-child {
	padding-right: 0
}

.ambient .boxambi .imgbox .carousel-navigation ul li img {
	width: auto;
	height: 50px;
	cursor: pointer;
	-webkit-transition: opacity .1s cubic-bezier(.76, .03, 0, .65),
		border-color .1s cubic-bezier(.76, .03, 0, .65);
	transition: opacity .1s cubic-bezier(.76, .03, 0, .65), border-color .1s
		cubic-bezier(.76, .03, 0, .65);
	opacity: .3;
	border: 2px solid transparent
}

.ambient .boxambi .imgbox .carousel-navigation ul li img.selected,
	.ambient .boxambi .imgbox .carousel-navigation ul li img:hover {
	opacity: 1;
	border-color: #ffe01a
}

.ambient .boxambi .imgbox .imgsnav a.next-navigation, .ambient .boxambi .imgbox .imgsnav a.prev-navigation
	{
	width: 18px;
	height: 62px;
	background-color: #f6f6f6;
	padding: 19px 0 0 5px;
	margin-left: 10px;
	z-index: 100
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .colores a.nextcolores,
	.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .colores a.prevcolores,
	.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .variants a.nextoptions,
	.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .variants a.prevoptions
	{
	width: 10px;
	height: 32px;
	background-color: #f6f6f6;
	padding: 19px 0 0 5px;
	margin-left: 10px;
	border-radius: 2px
}

.ambient .boxambi .imgbox .imgsnav a.next-navigation i {
	padding: 10px;
	margin: -2px 0
}

.ambient .boxambi .imgbox .imgsnav a.prev-navigation {
	padding: 19px 5px 0 0;
	margin-left: 0;
	margin-right: 10px
}

.ambient .boxambi .imgbox .imgsnav a.prev-navigation i {
	padding: 10px;
	margin: -2px 0
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .colores a.prevcolores,
	.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .variants a.prevoptions
	{
	padding: 19px 5px 0 0;
	margin-left: 0;
	margin-right: 10px
}

.ambient a.next-products, .ambient a.prev-products {
	border-radius: 2px
}

.ambient a i {
	float: left;
	height: 2px
}

.ambient a.navigation-prod-next, .ambient a.navigation-prod-prev,
	.ambient a.next-navigation, .ambient a.prev-navigation {
	background: #f6f6f6;
	text-decoration: none !important
}

.ambient a.navigation-prod-next.inactive, .ambient a.navigation-prod-prev.inactive,
	.ambient a.next-navigation.inactive, .ambient a.prev-navigation.inactive
	{
	background: #fff;
	text-decoration: none !important
}

.ambient a i.next-products, .ambient a i.prev-products {
	padding: 8px 5px;
	margin: 350px 0 350px 5px
}

.ambient a.navigation-prod-next.inactive i, .ambient a.navigation-prod-prev.inactive i,
	.ambient a.next-navigation.inactive i, .ambient a.prev-navigation.inactive i
	{
	cursor: default
}

.ambient a i.next-products {
	background-position: 0 -23px
}

.ambient a i.prev-products {
	background-position: 0 0
}

.ambient a.next-products.inactive, .ambient a.prev-products.inactive {
	opacity: .4;
	cursor: default
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .colores a.nextcolores,
	.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .colores a.prevcolores,
	.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .variants a.nextoptions,
	.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .variants a.prevoptions
	{
	width: 20px;
	height: 55px;
	padding: 0 9px 1px 0
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .colores a i
	{
	float: left !important;
	margin: 20px 0 0;
	height: 20px !important;
	width: 15px !important
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .colores a.right i
	{
	margin-left: 5px
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .colores a.nextcolores i,
	.ambient .boxambi .imgbox .imgsnav a.next-navigation i {
	background-position: -1109px -1566px !important
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod .color .colores a.prevcolores i,
	.ambient .boxambi .imgbox .imgsnav a.prev-navigation i {
	background-position: -1106px -1543px !important
}

.ambient .boxambi .box-total {
	border: 1px solid #e6e6e6
}

.ambient .boxambi .pricebox {
	width: 199px;
	height: auto;
	background-color: #fff
}

.ambient .boxambi .pricebox .products .lst-prds {
	margin: 15px 10px 0;
	height: 314px
}

.ambient .boxambi .pricebox .products .titlein {
	width: 100%;
	height: 32px;
	margin-bottom: 10px
}

.ambient .boxambi .pricebox .products .titlein p {
	font-weight: 700;
	color: gray
}

.ambient .boxambi .pricebox .pricekit {
	background-color: #f0eeef;
	width: 199px;
	height: auto;
	margin: 15px 0 0;
	padding: 0 0 2px 10px;
	border-left: none;
	border-right: none
}

.ambient .boxambi .pricebox .pricekit>div {
	width: auto
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod .prices p,
	.ambient .boxambi .pricebox .pricekit p {
	font-size: 11px;
	padding-bottom: 5px !important;
	color: gray
}

.ambient .boxambi .boxcomprar .prices p.was, .ambient .boxambi .fazemparte .carroselprods ul li.listprod .prices p.was,
	.ambient .boxambi .pricebox .pricekit p.was {
	margin: 10px 0 0
}

.ambient .boxambi .boxcomprar .prices p.was, .ambient .boxambi .fazemparte .carroselprods ul li.listprod .prices p.was span.risk,
	.ambient .boxambi .pricebox .pricekit p.was span.risk {
	text-decoration: line-through;
	color: gray;
	font-size: 11px
}

.ambient .boxambi .boxcomprar .prices p.is, .ambient .boxambi .fazemparte .carroselprods ul li.listprod .prices p.is,
	.ambient .boxambi .pricebox .pricekit p.is {
	width: auto;
	display: inline-block;
	font-size: 11px;
	color: gray
}

.ambient .boxambi .boxcomprar .prices p.is strong, .ambient .boxambi .pricebox .pricekit p.is strong
	{
	font-size: 15px !important
}

.ambient .boxambi .boxcomprar .prices p.final, .ambient .boxambi .fazemparte .carroselprods ul li.listprod .prices p.final,
	.ambient .boxambi .pricebox .pricekit p.final {
	width: auto;
	display: inline-block;
	padding: 0 0 5px;
	color: #eea236
}

.ambient .boxambi .pricebox .pricekit p span.nojuro {
	color: #262626
}

.ambient .boxambi .boxcomprar .prices p.final .priceparcel, .ambient .boxambi .fazemparte .carroselprods ul li.listprod .prices span.priceparcel,
	.ambient .boxambi .pricebox .pricekit p.final strong.priceparcel {
	color: #eca403 !important;
	font-size: 14px !important;
	margin: 0 5px 0 0
}

.ambient .boxambi .boxcomprar .prices p.final span.nojuro, .ambient .boxambi .fazemparte .carroselprods ul li.listprod .prices span.nojuro,
	.ambient .boxambi .pricebox .pricekit p.final span.nojuro {
	font-size: 10px
}

.ambient .boxambi .boxcomprar .prices p.cash, .ambient .boxambi .fazemparte .carroselprods ul li.listprod .prices p.cash,
	.ambient .boxambi .pricebox .pricekit p.cash {
	color: #262626
}

.ambient .boxambi .boxcomprar .prices p.cash span.vista, .ambient .boxambi .fazemparte .carroselprods ul li.listprod .prices span.vista,
	.ambient .boxambi .pricebox .pricekit p.cash span.vista {
	font-size: 15px;
	color: #262626
}

.ambient .vista.preco-a-vista strong {
	font-size: 18px;
	color: #262626
}

.ambient .boxambi .boxcomprar .prices p.economy, .ambient .boxambi .fazemparte .carroselprods ul li.listprod .prices p.economy,
	.ambient .boxambi .pricebox .pricekit p.economy {
	color: #1a8763;
	font-size: 11px;
	margin-bottom: 10px;
	text-align: center
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod .prices p.economy
	{
	margin: 0 0 0 7px;
	padding: 0 !important
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .prices p.final
	{
	width: auto;
	font-size: 11px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .prices p.cash
	{
	width: auto;
	font-size: 11px;
	padding: 0 0 5px !important
}

.ambient .boxambi .pricebox .pricekit .botaoComprar {
	padding: 10px
}

.ambient .boxambi .boxcomprar .botaoComprar .btn-comprar-ambi, .ambient .boxambi .pricebox .pricekit .btn-comprar-ambi,
	.ambient .carroselprods .btns .botaoComprar .btn-comprar-ambi, .ambient .carroselprods .prices .btn-acabou
	{
	padding: 0 0 0 45px;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/sprite-descript-ambientes.png)
		no-repeat -172px 9px #0f9d58;
	font-size: 22px;
	width: 168px !important;
	height: 55px;
	border-radius: 3px;
	border: 1px solid #0f9d58;
	font-weight: 700;
	color: #fff;
	cursor: pointer
}

.ambient .boxambi .pricebox .pricekit .btn-comprar-ambi span {
	padding: 0 !important
}

.foraRegiao {
	display: none;
	float: left;
	font-size: 13px
}

.ambient .boxambi .boxcomprar .foraRegiao label, .ambient .boxambi .pricebox .foraRegiao label
	{
	display: block;
	background: #7ba8bb;
	padding: 10px;
	color: #fff;
	margin-top: 15px;
	font-weight: 700
}

.ambient .boxambi .boxcomprar .foraRegiao span, .ambient .boxambi .pricebox .foraRegiao span
	{
	padding: 7px;
	margin: 10px 0;
	float: left
}

.ambient .boxambi .boxcomprar .foraRegiao a, .ambient .boxambi .pricebox .foraRegiao a
	{
	display: block;
	margin-top: 15px;
	text-decoration: underline;
	text-align: center
}

.ambient .boxambi .pricebox .foraRegiao {
	border-top: 1px solid #dad8d8;
	height: 185px !important;
	width: 175px !important;
	margin: 10px
}

.ambient .boxambi .boxcomprar .foraRegiao {
	height: 175px !important;
	width: 240px !important;
	margin: 7px 7px 2px
}

.ambient .carroselprods .infoProducts .foraRegiao {
	display: none;
	height: 175px !important
}

.ambient .boxambi .pricebox .pricekit .btn-comprar-ambi a {
	color: #fff;
	text-decoration: none
}

.ambient .boxambi .pricebox .pricekit .btn-comprar-ambi a:hover {
	color: #fff
}

.ambient .boxambi .boxcomprar .botaoComprar .btn-comprar, .ambient .boxambi .pricebox .pricekit span.auxbtn
	{
	font-size: 11px;
	color: #7bdfa9;
	padding-left: 0;
	margin-left: 0
}

.ambient .boxambi .boxcomprar .botaoComprar .btn-comprar-ambi:hover,
	.ambient .boxambi .pricebox .pricekit .btn-comprar-ambi:hover, .ambient .carroselprods .btns .botaoComprar .btn-comprar-ambi:hover
	{
	background-color: #1a8763;
	-webkit-transition: background-color .35s cubic-bezier(.76, .03, 0, .65);
	transition: background-color .35s cubic-bezier(.76, .03, 0, .65)
}

.ambient .boxcomplementar .social {
	height: 70px
}

.ambient .boxcomplementar .social div {
	display: block !important;
	height: 25px;
	float: left
}

.ambient .boxcomplementar .social div.facebook, .ambient .boxcomplementar .social div.gplus,
	.ambient .boxcomplementar .social div.pinterest, .ambient .boxcomplementar .social div.twitter
	{
	margin: 25px 8px 0 0
}

.ambient .boxcomplementar .social div.facebook, .ambient .boxcomplementar .social div.twitter
	{
	width: 87px
}

.ambient .boxcomplementar .social div.gplus {
	width: 70px
}

.ambient .boxcomplementar .social div.pinterest {
	width: 40px
}

.ambient .boxcomplementar .btns .btn-wish-list, .ambient .boxcomplementar .btns a.btn-ind-email,
	.ambient .boxcomplementar .social a.btn-eu-amo {
	background: #ccc;
	text-align: center;
	font-size: 12px !important;
	height: auto;
	border-radius: 3px;
	padding: 8px 12px;
	border: none;
	color: #52443c;
	cursor: pointer;
	margin-left: 30px
}

.ambient .boxcomplementar .btns .btn-wish-list:hover, .ambient .boxcomplementar .btns a.btn-ind-email:hover,
	.ambient .boxcomplementar .social a.btn-eu-amo:hover {
	background: #b2b2b2;
	text-decoration: none !important
}

.ambient .boxambi .btn-veja-prd {
	background-position: -1233px -2347px;
	width: 134px;
	height: 45px;
	border: none;
	cursor: pointer;
	clear: both;
	margin: 0 auto;
	display: table;
	float: none
}

.ambient .boxcomplementar .btns .btn-ind-email i, .ambient .boxcomplementar .social .btn-eu-amo i
	{
	height: 17px;
	width: 30px
}

.ambient .boxcomplementar .social .btn-eu-amo i {
	background-position: -1112px -1666px
}

.ambient .boxcomplementar .btns .btn-ind-email i {
	background-position: -1113px -1643px
}

.ambient .boxcomplementar .btns .btn-wish-list i {
	background-position: -1113px -1666px;
	width: 25px;
	padding: 1px 0
}

.ambient .boxcomplementar .social a i {
	width: 30px;
	height: 30px
}

.ambient .boxcomplementar .social a i.facebook {
	background-position: -161px -171px
}

.ambient .boxcomplementar .social a i.facebook:hover {
	background-position: -161px -205px
}

.ambient .boxcomplementar .social a i.twitter {
	background-position: -268px -171px
}

.ambient .boxcomplementar .social a i.twitter:hover {
	background-position: -268px -205px
}

.ambient .boxcomplementar .social a i.gplus {
	background-position: -232px -171px
}

.ambient .boxcomplementar .social a i.gplus:hover {
	background-position: -232px -205px
}

.ambient .boxcomplementar .social a i.pinterest {
	background-position: -196px -171px
}

.ambient .boxcomplementar .social a i.pinterest:hover {
	background-position: -196px -205px
}

.ambient .carroselprods .btns .botaoComprar .btn-comprar-ambi {
	background-position: -175px 1px;
	font-size: 14px !important;
	font-weight: 400;
	width: 115px !important;
	height: 40px;
	padding: 0 0 0 30px;
	margin: 0 0 0 5px
}

.ambient .carroselprods .btns .botaoComprar .btn-comprar-ambi span {
	padding: 0 0 0 10px !important
}

.ambient .carroselprods .prices .btn-acabou {
	background-position: -175px 1px;
	font-size: 14px !important;
	font-weight: 400;
	width: 115px !important;
	height: 40px;
	padding: 0 0 0 30px;
	margin: 0 0 0 5px
}

.ambient .carroselprods .btns .botaoComprar .btn-comprar-ambi span {
	font-size: 9px !important;
	padding: 0 0 0 14px
}

.ambient .carroselprods .prices .btn-acabou {
	background: #795547;
	cursor: default;
	border: 1px solid #795547;
	padding-left: 20px;
	font-size: 24px !important;
	width: 195px !important;
	height: 60px;
	margin: 10px 0;
	display: none
}

.ambient .carroselprods .prices .btn-acabou span {
	font-size: 10px !important;
	padding: 0;
	margin-left: -10px
}

.derivados, .imgbox {
	position: relative;
	overflow: hidden
}

.carrosel-opcoes ul, .derivados ul, .imgbox ul {
	width: 20000em;
	position: relative;
	list-style: none;
	margin: 0;
	padding: 0
}

.ambient .boxambi .boxcomplementar {
	width: 1000px;
	height: auto;
	border-left: none;
	border-right: none;
	border-bottom: 1px solid #e6e6e6;
	padding: 18px 0 16px
}

.extras {
	padding: 18px 0;
	float: left;
	width: 100%
}

.ambient .boxambi .boxcomplementar .payment_btns, .extras {
	border-bottom: 1px solid #e6e6e6
}

.ambient .boxambi .boxcomplementar .others p {
	padding-top: 14px
}

.ambient .boxambi .boxcomplementar .payment_forms i {
	background-position: -128px -2369px;
	cursor: pointer;
	text-decoration: none;
	width: 15px;
	height: 15px;
	float: right;
	margin: 0 0 0 10px
}

.ambient .boxambi .boxcomplementar .payment_forms i.expandido {
	background-position: -103px -2369px !important
}

.ambient .boxambi .boxcomplementar .others .confira-pagamentos {
	width: 250px;
	padding: 2px 25px 2px 0;
	margin: 0 2px 10px;
	cursor: pointer;
	text-decoration: none
}

.ambient .boxambi .boxcomplementar .others .confira-pagamentos i {
	float: right;
	width: 18px;
	height: 18px;
	cursor: pointer;
	text-decoration: none
}

.ambient .boxambi .boxcomplementar .payment_forms #box_payment_forms {
	display: none;
	height: 250px;
	width: 100%;
	margin: 10px 5px;
	float: left
}

.ambient .boxambi .boxcomplementar .payment_forms #box_payment_forms #itens-cartao-credito
	{
	display: block;
	float: left
}

.ambient .boxambi .boxcomplementar .payment_forms #box_payment_forms #itens-cartao-credito .parcelas-block:not
	(:last-child ){
	margin-right: 10px
}

.ambient .boxambi .boxcomplementar .payment_forms #box_payment_forms #itens-cartao-credito .parcelas-block.bloco1 ul li:first-child
	{
	font-weight: 700
}

.ambient .boxambi .boxcomplementar .payment_forms #box_payment_forms #itens-cartao-credito ul li
	{
	margin-bottom: 15px
}

.ambient .boxambi .boxcomplementar .payment_forms #box_payment_forms #itens-cartao-credito ul li:first-child
	{
	margin-top: 10px
}

.ambient .boxambi .boxcomplementar .others {
	width: 330px;
	height: 70px
}

.ambient .boxambi .totalfazemparte {
	position: relative;
	width: 730px;
	height: auto
}

.ambient .boxambi .description, .ambient .boxambi .fazemparte {
	height: auto;
	border-bottom: 0 solid #e6e6e6;
	padding: 0 0 22px
}

.ambient .boxambi .descriptionprods, .ambient .boxambi .fazemparte {
	width: 730px;
	padding-bottom: 20px
}

#box-ambientes-relacionados h2, #comentarios h2, .ambient .boxambi .description h2,
	.ambient .boxambi .totalfazemparte h2, .box-ambientes-relacionados h2 {
	text-align: center;
	font-size: 24px;
	color: gray;
	font-weight: 400;
	margin-bottom: 25px
}

.ambient .boxambi .fazemparte h3 {
	font-size: 18px;
	padding: 10px 0;
	font-weight: 400;
	color: gray
}

.ambient .boxambi .fazemparte p.personalizar {
	margin-bottom: 20px
}

.ambient .boxambi .description {
	width: 99%;
	padding: 10px 0 5px 10px;
	text-align: justify;
	border-bottom: 1px solid #e6e6e6;
	margin-bottom: 35px
}

.ambient .boxambi .description p.descricao, .ambient .boxambi .fazemparte p
	{
	padding: 0;
	font-size: 12px;
	text-align: justify;
	line-height: 20px;
	margin-bottom: 35px
}

.ambient .boxambi .fazemparte p {
	margin-bottom: 0
}

.ambient .boxambi .fazemparte .carroselprods, .ambient .carroselprods .btns .botaoComprar .btn-comprar-ambi,
	.ambient .carroselprods .prices .btn-acabou {
	width: 675px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod
	{
	width: 720px;
	min-height: 400px;
	padding: 0;
	display: inline-block;
	position: relative;
	margin-bottom: 25px;
	border: 1px solid #c3c3c3
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod.checked
	{
	width: 720px;
	min-height: 400px;
	padding: 0;
	display: inline-block;
	position: relative;
	margin-bottom: 25px;
	border: 1px solid #f0eeef
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li:last-child.listprod
	{
	margin: 0
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod.checked .titleProd,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .titleProd
	{
	width: 100%;
	padding: 7px 0;
	margin: 0 0 12px
}

.titleProd, .titleProd * {
	cursor: pointer
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod.checked .titleProd
	{
	background: #f0eeef
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .titleProd
	{
	background: none
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod.checked .titleProd .checkbox,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .titleProd .checkbox
	{
	width: 30px;
	height: 30px;
	margin: -5px 0;
	padding: 5px 0
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod.checked .titleProd .checkbox input[type=checkbox],
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .titleProd .checkbox input[type=checkbox]
	{
	width: 25px;
	height: 18px;
	position: absolute;
	opacity: 0;
	filter: Alpha(Opacity = 0);
	cursor: pointer
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .titleProd .checkbox input[type=checkbox]+label
	{
	padding: 1px 0;
	display: inline-block;
	width: 18px;
	height: 18px;
	margin: -2px 5px 0;
	vertical-align: middle;
	cursor: pointer;
	background-position: -1090px -2365px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod.checked .titleProd .checkbox input[type=checkbox]+label
	{
	background-position: -1064px -2365px
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod.checked .titleProd p.title,
	.ambient .boxambi .fazemparte .carroselprods ul li.listprod .titleProd p.title
	{
	font-size: 14px;
	width: auto;
	max-width: 566px;
	margin: 0 0 0 5px;
	padding: 0
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod .titleProd .priceSpecialTitle
	{
	display: none;
	width: 144px;
	height: 145px;
	background-position: -201px -1894px;
	margin: -9px 0;
	position: absolute;
	right: -2px
}

.abas_description .ui-widget-header .ui-state-default, .ambient .boxambi .abas_description .ui-widget-content .ui-state-default
	{
	margin-top: 2px;
	margin-right: 2px;
	border: none !important;
	background: none !important
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod p span.ui-spinner
	{
	border: 1px solid #ccc;
	border-radius: 3px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod p span.ui-spinner input.qtd_prd_kit
	{
	color: #52443c;
	font-size: 12px;
	width: 15px;
	height: 15px;
	margin: 3px 5px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod p label
	{
	margin-left: 5px
}

.ambient .ui-state-default .ui-icon {
	cursor: pointer
}

.ambient .ui-spinner .ui-icon-triangle-1-n {
	background-position: -1144px -1651px !important;
	width: 9px !important;
	height: 6px !important
}

.ambient .ui-spinner .ui-icon-triangle-1-s {
	background-position: -1144px -1665px !important;
	width: 9px !important;
	height: 6px !important
}

.ambient .ui-state-default, .ambient .ui-widget-content .ui-state-default,
	.ambient .ui-widget-header .ui-state-default {
	border-bottom: 0 !important
}

.ambient .ui-spinner .ui-icon {
	position: absolute;
	margin-top: -4px !important;
	top: 50%;
	left: 0
}

.ambient .ui-button-text-only .ui-button-text {
	padding: 0 !important
}

.ambient .ui-spinner-button {
	width: 10px !important;
	height: 50%;
	font-size: .5em;
	padding: 0;
	margin: 0;
	text-align: center;
	position: absolute;
	cursor: default;
	display: block;
	overflow: hidden;
	right: 0
}

.ambient .ui-spinner-input {
	margin: 0 auto;
	text-align: center;
	height: 23px;
	position: relative;
	border: none;
	top: -1px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .boxleft
	{
	padding-left: 15px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .image
	{
	width: 152px;
	text-align: center;
	cursor: pointer;
	position: relative
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .image img
	{
	border: 1px solid #c2c2c2;
	margin: 15px 0 10px
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod .image i.zoom
	{
	background-position: -1194px -1619px;
	width: 20px;
	height: 20px;
	position: absolute;
	right: 5px;
	top: 23px;
	cursor: pointer
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .image a
	{
	text-align: center;
	font-size: 11px;
	color: #2370b8
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .image a:hover
	{
	text-decoration: underline
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .special-price
	{
	background-position: -10px -1910px;
	width: 163px !important;
	height: 67px !important;
	display: none;
	position: absolute;
	padding: 15px 0;
	margin: 200px 0 0;
	font-size: 14px;
	font-weight: 700
}

small.validade-especial {
	color: #1a8763;
	font-size: 9px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .special-price span
	{
	color: #167f5e;
	width: auto;
	padding: 10px 0 0;
	text-align: center;
	margin-left: 10px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .special-price label
	{
	font-weight: 700;
	margin-left: 10px;
	margin-top: 6px;
	display: block
}

.amb_preco_especial_info {
	margin-top: 16px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .infoProducts
	{
	width: 540px;
	height: auto;
	padding: 10px
}

.infoProducts>div {
	margin-bottom: 18px;
	padding: 12px 0 0;
	position: relative
}

.infoProducts>div:first-child {
	padding: 0
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dimensoes,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dispo,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .foraRegiao,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .prices
	{
	padding: 0 0 17px;
	border-bottom: 1px solid #e6e6e6;
	width: 100%
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .prices p
	{
	width: 100%
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod p
	{
	font-size: 13px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dimensoes p,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dispo p
	{
	color: #52443c;
	width: 100%;
	padding: 0 0 5px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dispo p
	{
	width: auto;
	float: left;
	padding: 10px 0
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dispo p span a
	{
	font-size: 13px;
	text-decoration: none;
	color: #2370b8
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dispo p span a:hover
	{
	text-decoration: underline
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dimensoes p
	{
	padding-bottom: 20px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dimensoes ul li
	{
	width: auto;
	color: #9a9a9a;
	text-align: left;
	display: inline-block;
	margin: 0 15px 5px 0
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dimensoes ul li:last-child
	{
	margin: 0
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dimensoes ul li label
	{
	margin: 7px;
	display: inline-block
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dimensoes ul li i
	{
	height: 30px;
	width: 30px;
	float: left
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dimensoes ul li i.vlAltura
	{
	background-position: -1137px -1545px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dimensoes ul li i.vlLargura
	{
	background-position: -1188px -1545px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .dimensoes ul li i.vlProfundidade
	{
	background-position: -1237px -1545px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color
	{
	width: auto;
	border-bottom: none
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color p,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .variants p
	{
	width: 100%;
	padding-bottom: 20px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color a
	{
	text-decoration: none !important
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .variants
	{
	width: 300px;
	height: 65px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores .coloresin,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .variants .optionsin
	{
	visibility: visible;
	overflow: hidden;
	position: relative;
	z-index: 2;
	left: 0;
	width: 150px !important
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores a.nextcolores span,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .variants a.nextoptions span,
	.ambient .boxambi .abas_description .fazemparte .next-products span {
	background-position: -193px -35px !important
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores a.prevcolores span,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .variants a.prevoptions span,
	.ambient .boxambi .abas_description .fazemparte .prev-products span {
	background-position: -190px -93px !important
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores ul li,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .variants ul li
	{
	display: inline;
	height: 55px;
	width: 55px;
	padding-right: 5px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores ul li img,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .variants ul li img
	{
	width: 55px;
	height: 55px;
	border: 0;
	margin: 0
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores ul li img.selected,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .variants ul li img.selected
	{
	border: 2px solid #ffe01a
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores ul li span.bg_prd.acabou,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .variants ul li span.bg_prd.acabou
	{
	background-color: #fff;
	background-position: -204px -57px;
	opacity: .7;
	position: absolute;
	width: 55px;
	height: 55px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores.opciones
	{
	height: auto;
	padding: 3px 0
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores.opciones a
	{
	height: 25px !important;
	margin: 0 !important
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores.opciones a i
	{
	margin: 3px 5px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores .carrosel-opcoes
	{
	padding: 5px;
	position: relative;
	overflow: hidden;
	margin: 0 20px !important
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores .carrosel-opcoes ul li
	{
	background: #f0f2f4;
	height: auto;
	width: auto !important;
	margin-left: 5px;
	padding: 3px 5px;
	border-radius: 3px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores .carrosel-opcoes ul li.selected
	{
	border: 2px solid #ffe01a
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores .carrosel-opcoes ul li a
	{
	cursor: pointer !important
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod .color .colores .carrosel-opcoes ul li a:hover
	{
	text-decoration: none !important
}

.ambient .boxambi .abas_description .fazemparte .btn-conf-inf .btn-desc-comp-active,
	.ambient .boxambi .abas_description .fazemparte .btn-conf-inf .btn-desc-comp-inactive
	{
	color: #2370b8
}

.ambient .boxambi .abas_description .fazemparte .btn-conf-inf i.active {
	background-position: -1229px -1591px !important;
	padding: 0 7px;
	margin: 0 0 0 10px;
	cursor: pointer
}

.ambient .boxambi .abas_description .fazemparte .btn-conf-inf i.inactive
	{
	background-position: -1193px -1591px !important;
	padding: 0 6px;
	margin: 0 0 0 10px;
	cursor: pointer
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta
	{
	display: none;
	width: 665px;
	text-align: center;
	float: left;
	padding: 40px 25px 5px
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .btn-conf-inf
	{
	padding: 10px 0;
	width: 100%;
	text-align: center
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta #como-comprar,
	.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .box-caracteristicas-tecnicas,
	.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .box-descricao,
	.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .box-dimensoes,
	.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .box-opiniao,
	.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .info-importante
	{
	border-bottom: 1px solid #e6e6e6;
	float: left;
	padding: 15px 0;
	width: 100% !important
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .descTitle
	{
	font-size: 16px;
	margin-bottom: 10px
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .box-dimensoes .subtitle
	{
	font-size: 18px !important;
	text-align: left !important
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta #como-comprar,
	.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .box-descricao
	{
	margin: 10px 0 !important;
	padding: 0 5px 20px 0 !important;
	text-align: justify
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .box-descricao p
	{
	text-align: justify
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta #como-comprar video
	{
	width: 720px;
	height: 540px
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .img-dimensao
	{
	float: left;
	margin-right: 20px
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .imagem-dimensa
	{
	float: left
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .info-dimensao
	{
	float: left;
	width: 480px
}

.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .box-caracteristicas-tecnicas p,
	.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .box-descricao p,
	.ambient .boxambi .abas_description .fazemparte .listprod .descricaocompleta .info-dimensao p
	{
	padding: 0
}

.produto-dimensao {
	float: left;
	margin-right: 15px;
	margin-top: 30px
}

.produto-dimensao p.subtitle {
	font-size: 14px !important
}

.ambient .boxambi .boxcomprartotal {
	width: 264px
}

.ambient .boxambi .boxcomprartotal .boxcomprar .botaoComprar {
	margin: 0 32px !important
}

.ambient .boxambi .boxcomprar {
	width: 264px;
	height: auto;
	background-color: #fff;
	border: 1px solid #e6e6e6;
	border-radius: 3px;
	z-index: 10;
	padding: 0
}

.ambient .boxambi .boxcomprar .img-box-amb {
	text-align: center;
	padding: 7px 7px 15px
}

.ambient .boxambi .boxcomprar p.titleinbox, .ambient .boxambi .boxcomprar p.totalprds
	{
	padding: 0 0 8px 5px;
	font-weight: 700;
	color: gray
}

.ambient .boxambi .boxcomprar .boxlistProducts, .ambient .boxambi .pricebox .products .boxlistProducts
	{
	padding: 0 0 10px;
	font-size: 11px;
	color: #5d5d5d
}

.ambient .boxambi .pricebox .products .boxlistProducts {
	width: 187px;
	height: 202px;
	overflow-y: scroll;
	overflow-x: hidden;
	margin: 0 0 15px
}

.ambient .boxambi .boxcomprar .boxlistProducts {
	width: 248px;
	height: 100px;
	overflow-y: scroll;
	overflow-x: hidden;
	padding: 10px 0 15px;
	margin: 0 10px 10px
}

.ambient .boxambi .pricebox .products .boxlistProducts .listProducts li
	{
	background-position: 0 0
}

.ambient .boxambi .boxcomprar .boxlistProducts::-webkit-scrollbar,
	.ambient .boxambi .pricebox .products .boxlistProducts::-webkit-scrollbar
	{
	width: 8px
}

.ambient .boxambi .boxcomprar .boxlistProducts::-webkit-scrollbar-track,
	.ambient .boxambi .pricebox .products .boxlistProducts::-webkit-scrollbar-track
	{
	background-color: #e8e6e7
}

.ambient .boxambi .boxcomprar .boxlistProducts::-webkit-scrollbar-thumb,
	.ambient .boxambi .pricebox .products .boxlistProducts::-webkit-scrollbar-thumb
	{
	border-radius: 3px;
	background-color: #c5c3c4
}

.ambient .boxambi .boxcomprar .boxlistProducts ul, .ambient .boxambi .pricebox .products .boxlistProducts ul
	{
	padding: 0;
	margin: 0
}

.ambient .boxambi .boxcomprar .boxlistProducts ul li, .ambient .boxambi .pricebox .products .boxlistProducts ul li
	{
	margin-bottom: 10px;
	cursor: pointer
}

.ambient .boxambi .boxcomprar .boxlistProducts ul li:last-child,
	.ambient .boxambi .pricebox .products .boxlistProducts ul li:last-child
	{
	margin: 0
}

.ambient .boxambi .boxcomprar .boxlistProducts ul li:hover, .ambient .boxambi .pricebox .products .boxlistProducts ul li:hover
	{
	text-decoration: underline
}

.ambient .boxambi .boxcomprar .boxlistProducts ul li i, .ambient .boxambi .pricebox .products .boxlistProducts ul li i
	{
	float: left;
	background-position: -1110px -1587px;
	padding: 0 0 15px 5px;
	line-height: 0
}

.ambient .boxambi .boxcomprar .box-under {
	background-color: #f0eeef;
	padding: 15px 10px;
	margin-top: 15px
}

.ambient .boxambi .boxcomprar .prices p.final {
	font-size: 11px;
	padding: 0 0 10px;
	color: #eea236
}

.ambient .boxambi .boxcomprar .prices p.final .nojuro {
	color: #262626
}

.ambient .boxambi .boxcomprar .botaoComprar .btn-comprar-ambi {
	background-position: -172px 6px;
	float: right;
	height: 50px;
	width: 180px !important
}

.banner-rodape {
	margin: 15px 0 0
}

.banner-rodape img {
	width: 100%;
	display: block
}

.next-products, .prev-products {
	background-color: #f6f6f6;
	border-radius: 2px
}

.abas_description .ui-helper-hidden {
	display: none
}

.abas_description .ui-helper-hidden-accessible {
	border: 0;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	margin: -1px;
	overflow: hidden;
	padding: 0;
	position: absolute;
	width: 1px
}

.abas_description .ui-helper-reset {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
	line-height: 1.3;
	text-decoration: none;
	font-size: 100%;
	list-style: none
}

.abas_description.ui-helper-clearfix:after, .abas_description .ui-helper-clearfix:before
	{
	content: "";
	display: table;
	border-collapse: collapse
}

.abas_description .ui-helper-clearfix {
	min-height: 0
}

.abas_description .ui-helper-clearfix:after {
	clear: both
}

.abas_description .ui-helper-zfix {
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	position: absolute;
	opacity: 0;
	filter: Alpha(Opacity = 0)
}

.abas_description .ui-front {
	z-index: 100
}

.abas_description .ui-state-default, .abas_description.ui-widget-content .ui-state-default,
	.abas_description.ui-widget-header .ui-state-default {
	border: 1px solid #ccc;
	background: #f0ebed !important;
	font-weight: 700;
	color: #1c94c4
}

.abas_description .ui-state-default a, .abas_description.ui-state-default a:link,
	.abas_description.ui-state-default a:visited {
	color: #1c94c4;
	text-decoration: none
}

.abas_description .ui-state-hover, .abas_description.ui-widget-content .ui-state
	{
	font-weight: 700
}

.abas_description .ui-state-hover a, .abas_description.ui-state-hover a:hover,
	.abas_description.ui-state-hover a:link, .abas_description.ui-state-hover a:visited
	{
	color: #00a8ec;
	text-decoration: none
}

.abas_description .ui-state-active, .abas_description.ui-widget-content .ui-state-active,
	.abas_description.ui-widget-header .ui-state-active {
	background: #fff;
	font-weight: 700
}

.abas_description .ui-state-highlight a, .abas_description.ui-widget-content .ui-state-highlight a,
	.abas_description.ui-widget-header .ui-state-highlight a {
	color: #363636
}

.abas_description .ui-state-error-text, .abas_description .ui-state-error a,
	.abas_description.ui-widget-content .ui-state-error-text,
	.abas_description.ui-widget-content .ui-state-error a,
	.abas_description.ui-widget-header .ui-state-error-text,
	.abas_description.ui-widget-header .ui-state-error a {
	color: #fff
}

.abas_description .ui-priority-primary, .abas_description.ui-widget-content .ui-
	{
	font-weight: 700
}

.abas_description .ui-priority-secondary, .abas_description.ui-widget-content .ui-priority-secondary,
	.abas_description.ui-widget-header .ui-priority-secondary {
	opacity: .7;
	filter: Alpha(Opacity = 70);
	font-weight: 400
}

.abas_description .ui-state-disabled, .abas_description.ui-widget-content .ui-state-disabled,
	.abas_description.ui-widget-header .ui-state-disabled {
	opacity: .35;
	filter: Alpha(Opacity = 35);
	background-image: none
}

.abas_description .ui-state-disabled .ui-icon {
	filter: Alpha(Opacity = 35)
}

.abas_description.ui-tabs {
	position: relative
}

.abas_description.ui-tabs .ui-tabs-nav {
	margin: 0;
	padding: .2em .2em 0;
	border-bottom: 1px solid #ccc;
	border-top: 0;
	border-left: 0;
	border-right: 0
}

.abas_description.ui-corner-all, .abas_description .ui-corner-all,
	.abas_description.ui-corner-bl, .abas_description .ui-corner-bl,
	.abas_description.ui-corner-bottom, .abas_description .ui-corner-bottom,
	.abas_description.ui-corner-br, .abas_description.ui-corner-left,
	.abas_description .ui-corner-left, .abas_description.ui-corner-right,
	.abas_description .ui-corner-right {
	border: none;
	border-radius: 0
}

.abas_description.ui-tabs .ui-tabs-nav li {
	list-style: none;
	float: left;
	position: relative;
	top: 0;
	text-decoration: none;
	margin: 1px 2.7em 0 0;
	border-bottom-width: 0;
	padding: 0;
	white-space: nowrap;
	border-top-right-radius: 3px;
	border-top-left-radius: 3px
}

.abas_description.ui-tabs .ui-tabs-nav li a {
	float: left;
	padding: .2em 1em;
	text-decoration: none;
	margin-left: 0;
	display: inline-block;
	margin-top: 10px;
	color: #9b9c98
}

.abas_description.ui-tabs .ui-tabs-nav li a span:hover {
	color: #00a8ec
}

.abas_description.ui-tabs .ui-tabs-nav li a:hover {
	text-decoration: none !important
}

.abas_description.ui-tabs .ui-tabs-nav li.ui-tabs-active {
	margin-bottom: -1px;
	padding-bottom: 1px;
	background: #fff !important
}

.abas_description.ui-tabs .ui-tabs-nav li.ui-state-disabled a,
	.abas_description.ui-tabs .ui-tabs-nav li.ui-tabs-active a,
	.abas_description.ui-tabs .ui-tabs-nav li.ui-tabs-loading a {
	cursor: text
}

.abas_description .ui-state-default, .abas_description .ui-widget-content .ui-state-default,
	.abas_description .ui-widget-header .ui-state-default {
	border: 1px solid #ccc !important;
	border-bottom: none !important
}

.abas_description .ui-tabs .ui-tabs-nav li.ui-tabs-active,
	.abas_description .ui-tabs .ui-tabs-nav li a {
	cursor: pointer
}

.abas_description.ui-tabs .ui-tabs-panel {
	display: block;
	border-width: 0;
	padding: 1em 0;
	background: none
}

.abas_description .ui-widget-header {
	background: #fff
}

.abas_description.ui-widget-content {
	background: none;
	color: #333;
	height: 50px
}

.abas_description.ui-tabs-anchor span {
	margin-left: 5px;
	display: inline-block;
	margin-top: 10px;
	color: #9b9c98
}

.ui-tabs-anchor img {
	display: inline-block;
	float: left
}

.abas_description .ui-tabs-anchor {
	height: 30px
}

.abas_description .accordion_description .ui-state-default,
	.abas_description .accordion_description .ui-widget-content .ui-state-default,
	.abas_description .accordion_description .ui-widget-header .ui-state-default
	{
	border-top: 1px solid #ccc !important;
	border-bottom: 1px solid #ccc !important;
	border-left: none !important;
	border-right: none !important
}

.abas_description .accordion_description .ui-corner-all,
	.abas_description .accordion_description .ui-corner-right,
	.abas_description .accordion_description .ui-corner-top,
	.abas_description .accordion_description .ui-corner-tr {
	border-radius: 0;
	padding: 1.6em 0 1.6em 2.5em
}

.abas_description .accordion_description .ui-state-default,
	.abas_description .accordion_description .ui-widget-content,
	.abas_description .accordion_description .ui-widget-content .ui-state-default,
	.abas_description .accordion_description .ui-widget-header .ui-state-default
	{
	background: #fff;
	color: #52443c !important;
	font-size: 1.1em;
	font-weight: 400
}

.abas_description .accordion_description.ui-accordion .ui-accordion-content
	{
	padding: 0;
	overflow: hidden
}

.abas_description .accordion_description .ui-accordion-header .ui-icon-triangle-1-s
	{
	background-position: -84px -45px
}

.abas_description .accordion_description .ui-accordion-header .ui-icon-triangle-1-e
	{
	background-position: -120px -45px
}

.abas_description .accordion_description .ui-accordion-header label:hover
	{
	cursor: pointer;
	text-decoration: underline
}

.tbl-caracteristicas-tecnicas {
	font-size: 12px
}

.tbl-caracteristicas-tecnicas tr.cinza {
	background-color: #eeebec
}

.tbl-caracteristicas-tecnicas td {
	width: 50%;
	padding: 4px
}

.tbl-caracteristicas-tecnicas td label {
	font-weight: 700
}

.tbl-caracteristicas-tecnicas td a {
	color: #2370b8
}

.ambient #box-comentarios, .ambient #box-relacionados {
	height: auto;
	padding: 0;
	margin: 35px 0
}

#box-relacionados {
	width: 100% !important
}

#box-comentarios {
	width: 720px !important
}

#comentarios {
	margin-bottom: 20px
}

#comentarios, #comentarios .comentarioBox {
	width: 100%;
	float: left
}

#comentarios .comentarioBox #opinioes_lista_conteudo .produtosOpinioes div ul.estrelasOpinioesAmbientes
	{
	width: 130px;
	float: left;
	margin-right: 4px;
	margin-top: 8px
}

#comentarios .comentarioBox #opinioes_lista_conteudo .produtosOpinioes div ul.estrelasOpinioesAmbientes li
	{
	width: 20px;
	height: 16px;
	float: left
}

#comentarios .comentarioBox #opinioes_lista_conteudo .produtosOpinioes div ul.estrelasOpinioesAmbientes li.cheia
	{
	background-position: -1142px -1619px
}

#comentarios .comentarioBox #opinioes_lista_conteudo .produtosOpinioes div ul.estrelasOpinioesAmbientes li.vazia
	{
	background-position: -1169px -1619px
}

#comentarios .oQueAchou {
	margin-bottom: 35px;
	width: 100%
}

#comentarios .oQueAchou p {
	margin: 10px 0
}

#comentarios .oQueAchou a {
	color: #fff;
	border-radius: 3px;
	margin-right: 10px
}

#comentarios .oQueAchou a:hover {
	text-decoration: none !important
}

#comentarios .oQueAchou a.bt_comentar {
	background: #8ac14a;
	border: 1px solid #67a221;
	font-size: 18px;
	padding: 10px 15px
}

#comentarios .oQueAchou a.bt_tirar-duvida {
	background: #45c1f2;
	border: 1px solid #00a8ec;
	font-size: 14px;
	margin: 0 0 0 15px;
	padding: 13px 15px;
	font-weight: 700
}

#comentarios .comentarioBox #opinioes_lista_conteudo ul li.produtosOpinioes:first-child
	{
	margin-top: 0
}

#comentarios .comentarioBox #opinioes_lista_conteudo .produtosOpinioes {
	width: 100%;
	float: left;
	margin-top: 30px;
	font-size: 18px;
	padding-bottom: 20px;
	border-bottom: 1px solid #e6e6e6
}

#comentarios .comentarioBox #opinioes_lista_conteudo .produtosOpinioes .nome
	{
	width: auto;
	float: left;
	padding-top: 5px;
	font-size: 18px;
	color: gray
}

#comentarios .comentarioBox #opinioes_lista_conteudo .produtosOpinioes .opiniao
	{
	width: 720px;
	float: left;
	margin-top: 5px;
	font-style: italic;
	font-size: 12px;
	text-transform: none;
	text-align: justify
}

#comentarios .box-comments {
	border-top: 1px solid #e6e6e6;
	padding-top: 30px
}

#comentarios .box-comments h2 {
	margin-bottom: 0 !important
}

#boxfrmComentario #cadastrarComentarioBox-carregando {
	background-color: hsla(0, 0%, 100%, .6);
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0
}

#boxfrmComentario #cadastrarComentarioBox-carregando img {
	width: 20px;
	margin-left: -10px;
	margin-top: -10px;
	position: absolute;
	top: 50%;
	left: 50%
}

#boxfrmComentario .modal__close {
	font-size: 2.6rem;
	border: none;
	background: none;
	margin: 0;
	line-height: 30px;
	color: #fff;
	font-family: Arial, Helvetica, sans-serif;
	position: fixed;
	top: 20px;
	right: 20px
}

#boxfrmComentario .modal__close:focus, #boxfrmComentario .modal__close:hover
	{
	text-decoration: none
}

#boxfrmComentario .modal__header {
	background-color: #1b70b9;
	text-align: center
}

#boxfrmComentario .modal__header h3 {
	margin: 0;
	color: #fff;
	font-weight: 700
}

#boxfrmComentario .modal__body {
	overflow-y: auto;
	max-height: 680px
}

#boxfrmComentario .modal__body, #boxfrmComentario .modal__header {
	padding: 10px 20px
}

#boxfrmComentario .erroMensagens {
	float: left;
	font-weight: 700;
	margin: 0
}

.erroMensagens {
	width: 100%;
	float: none !important;
	margin-bottom: 5px;
	clear: both
}

.acordo-comentario, .divOpiniao {
	background: #fff;
	width: 405px;
	border-radius: 3px;
	position: relative
}

.divOpiniao #cadastrarComentarioBox-formulario {
	padding: 0
}

.divOpiniao #cadastrarComentarioBox-formulario .msgEnviada {
	width: 100%;
	padding: 5px;
	margin-top: 10px;
	float: left;
	font-size: 11px
}

.divOpiniao #cadastrarComentarioBox-formulario .item {
	width: 100%;
	float: none;
	display: block;
	margin-bottom: 10px
}

.divOpiniao #cadastrarComentarioBox-formulario .item--fifty {
	width: 48%;
	display: inline-block
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item label {
	margin: 0 0 5px;
	display: block
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item input,
	.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item select,
	.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item textarea
	{
	padding: 6px 10px;
	display: block !important;
	width: 100%;
	margin-bottom: 5px
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item input.erro,
	.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item select.erro,
	.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item textarea.erro
	{
	border-color: red
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item textarea
	{
	height: 140px;
	resize: none
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item input[type=checkbox]
	{
	width: auto;
	margin-right: 5px;
	border: 1px solid red
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item span {
	display: block
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item span.span-checkbox
	{
	padding-top: 3px;
	display: inline-block
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao input[type=submit]
	{
	background-position: -1325px -1456px;
	width: 89px;
	height: 31px;
	cursor: pointer;
	margin-top: 10px;
	border: none
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao input[type=submit]:hover
	{
	background-position: -1325px -1456px;
	border-radius: 3px
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .info {
	margin-top: 10px;
	font-size: 11px
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item .estrelas
	{
	width: 100%;
	min-height: 25px;
	line-height: 25px
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao li.cheia {
	background-position: -1142px -1619px
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item .starry
	{
	width: 150px;
	float: left
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item .starry div
	{
	width: 25px;
	float: left
}

.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item div,
	.divOpiniao #cadastrarComentarioBox-formulario #frmOpiniao .item label
	{
	font-size: 11px
}

.divOpiniao form div.item label.erro {
	display: block;
	color: #cc0101;
	font-weight: 400;
	font-size: 10px;
	clear: both;
	text-align: left;
	background-position: -248px -115px;
	padding: 1px 0 0 17px;
	margin: 5px 0 0 2px
}

#cadastrarComentarioBox-mensagem {
	color: #67a61c;
	font-weight: 700;
	background-color: #f1f1f1;
	text-align: left;
	font-size: 14px;
	clear: both;
	padding: 15px 15px 15px 40px;
	margin: 0;
	background-position: 20px 50%
}

#cadastrarComentarioBox-carregando, #cadastrarComentarioBox-mensagem,
	.acordo-comentario {
	display: none
}

.indicarProduto h3 {
	font-size: 34px;
	margin: 20px 0
}

.acordo-comentario p {
	text-align: justify;
	margin-bottom: 10px
}

.box-ambientes-relacionados {
	width: 100%;
	margin-bottom: 20px
}

.box-ambientes-relacionados #galeria-kits {
	width: 900px !important;
	overflow: hidden;
	height: auto;
	padding: 0 6px
}

.box-ambientes-relacionados .carrosel-ambientes {
	padding: 15px 0
}

.box-ambientes-relacionados a i {
	height: 15px !important;
	cursor: pointer;
	padding: 1px 5px;
	margin: 65px 0
}

.box-ambientes-relacionados a.next-navigation,
	.box-ambientes-relacionados a.prev-navigation {
	background: #f6f6f6;
	height: 150px;
	padding: 0 5px
}

.box-ambientes-relacionados a.prev-navigation i {
	background-position: -1107px -1543px
}

.box-ambientes-relacionados a.next-navigation i {
	background-position: -1107px -1567px
}

.box-ambientes-relacionados #galeria-kits ul li {
	margin: 0 10px
}

#galeria-kits {
	position: relative;
	overflow: hidden
}

#galeria-kits ul {
	width: 20000em;
	position: relative;
	list-style: none;
	margin: 0;
	padding: 0
}

#galeria-kits ul li {
	float: left
}

.miniLista, .miniLogin {
	padding: 15px;
	float: left;
	background: #fff;
	border-radius: 3px
}

.miniLogin {
	width: 330px
}

.miniLogin .formataFloater form div.item {
	margin-top: 8px
}

.miniLogin .formataFloater h3 {
	margin-top: 20px
}

.miniLogin .formataFloater form {
	width: 300px;
	float: left;
	padding: 0 0 10px 10px
}

.indicarProduto form label, .miniLogin .formataFloater form .item label
	{
	width: 100%;
	float: left
}

.indicarProduto form label.amigo_email, .indicarProduto form label.amigo_nome,
	.indicarProduto form label.email, .indicarProduto form label.mensagem,
	.indicarProduto form label.nome {
	margin: 0 0 10px
}

.miniLista .formataFloater form div.textarea textarea, .miniLista div.div select,
	.miniLista div.item input, .miniLogin .formataFloater form .item .input input,
	.miniLogin .formataFloater form input {
	width: 250px;
	border-radius: 3px
}

.miniLista .formataFloater form div.textarea textarea:focus, .miniLogin .formataFloater form .item .input input:focus,
	.miniLogin .formataFloater form input:focus {
	border: 1px solid #ffe01a;
	color: #262626
}

.miniLogin .formataFloater form .item .input input, .miniLogin .formataFloater form input
	{
	padding: 0 8px;
	display: block;
	margin-bottom: 10px
}

.miniLista__close {
	position: fixed;
	top: 20px;
	right: 20px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: 700;
	font-size: 3rem;
	line-height: 1
}

.miniLista__close, .miniLista__close:hover {
	text-decoration: none;
	color: #fff
}

.miniLista div.div select, .miniLista input {
	display: block;
	margin-bottom: 10px
}

.miniLista input[type=radio] {
	float: left;
	margin-top: 2px !important;
	margin-right: 7px !important
}

.miniLista label#lblDescricao, .miniLista label#lblNome {
	font-weight: 700
}

.miniLogin .formataFloater form .item input[type=submit] {
	float: left;
	cursor: pointer;
	clear: both;
	margin-top: 10px
}

.indicarProduto form label.erro {
	display: block;
	color: #cc0101;
	font-weight: 400;
	font-size: 10px;
	clear: both;
	text-align: left;
	padding: 1px 0 0 17px;
	margin: 5px 0 0 2px
}

.indicarProduto #frm_indicar_produto #emailCarregando, .indicarProduto #frm_indicar_produto #emailSucess
	{
	display: none
}

.indicarProduto #frm_indicar_produto #emailError {
	display: none
}

.indicarProduto #frm_indicar_produto #emailCarregando, .indicarProduto #frm_indicar_produto #emailError
	{
	position: absolute;
	bottom: 30px;
	right: 0;
	left: 0;
	top: auto
}

.indicarProduto #frm_indicar_produto #emailCarregando, .indicarProduto #frm_indicar_produto #emailSucess
	{
	color: #67a61c;
	font-weight: 700;
	font-size: 14px;
	clear: both;
	text-align: left;
	padding: 0;
	float: left
}

.indicarProduto #frm_indicar_produto #emailSucess img {
	height: 100%;
	width: 100%;
	z-index: 999999;
	position: relative
}

#flt-indique {
	width: 960px;
	background: #fff;
	height: 450px;
	display: block
}

.flt_container_indique {
	padding: 34px 0 40px 40px;
	float: left;
	height: 450px;
	width: 920px
}

.flt_container_indique .info_indique {
	width: 490px;
	float: left
}

.flt_container_indique .title_indique {
	font-size: 30px;
	text-align: center;
	width: 513px
}

.flt_container_indique .img_indique {
	display: block;
	margin: 20px auto
}

.flt_container_indique .info_indique p {
	text-align: center;
	margin: 0 auto;
	width: 420px
}

.flt_container_indique .info_indique p a {
	color: #262626;
	font-size: 12px;
	text-decoration: none
}

.flt_container_indique .info_indique p a:hover {
	text-decoration: underline
}

.flt_container_indique .content_form_indique {
	margin: -120px 0;
	background: #ebebeb;
	border-radius: 8px;
	width: 350px;
	height: 528px;
	float: right;
	padding: 30px;
	position: relative
}

.flt_container_indique .form_indique fieldset {
	border: 0;
	margin-bottom: 20px;
	float: left;
	width: 100%;
	position: relative;
	z-index: 99999
}

.flt_container_indique .form_indique fieldset:first-child {
	margin-top: 0
}

.flt_container_indique .form_indique fieldset p {
	text-transform: uppercase
}

.flt_container_indique .form_indique fieldset .obs {
	font-size: 10px;
	margin: 6px 0 12px;
	text-transform: none;
	float: left
}

.flt_container_indique .form_indique label, .flt_container_indique .form_indique label:not
	(:last-child ){
	margin-bottom: 5px
}

.flt_container_indique .form_indique input[type=text] {
	margin-bottom: 10px
}

.flt_container_indique .form_indique textarea {
	height: 75px;
	margin-bottom: 20px
}

.flt_container_indique .form_indique .enviar {
	width: 110px;
	float: right
}

.flt_container_indique .form_indique .form_indique_error {
	width: 100%;
	position: absolute;
	left: 0;
	right: 0;
	top: 100px
}

.flt_container_indique .form_indique .form_indique_error p {
	color: #e35e63;
	text-align: center;
	font-weight: 700;
	line-height: 1.6
}

.flt_container_indique .form_indique .form_indique_error label {
	display: none
}

.flt_container_indique .form_indique .form_indique_error em {
	text-transform: uppercase;
	display: block;
	font-style: normal;
	text-align: center
}

#flt-indique .close-flt-indique {
	position: absolute;
	top: 13px;
	right: 13px;
	font-size: 18px;
	font-weight: 700;
	cursor: pointer;
	color: #262626
}

#flt-indique .close-flt-indique:hover {
	text-decoration: none !important
}

.form_indique input[type=text].err, .form_indique textarea.err {
	border: 1px solid red !important
}

.miniLogin .formataFloater form .item p {
	float: left;
	font-size: 11px
}

.floatPrecoEspecial {
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/preco_especial_perder.png)
		0 0 no-repeat;
	width: 505px;
	height: 177px;
	text-align: center
}

.floatPrecoEspecial label {
	float: left;
	width: 100%;
	color: #14955c;
	font-weight: 700;
	font-size: 18px;
	margin-bottom: 20px
}

.floatPrecoEspecial .btnPrecoEspecial {
	width: 100%;
	margin-top: 122px
}

.floatPrecoEspecial.modal {
	-webkit-box-shadow: none !important;
	box-shadow: none !important
}

.box-produtos .admanagerseparator {
	width: 720px;
	margin: -1px 0 10px;
	height: 60px
}

.prices.loading {
	opacity: .75;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/loader.gif)
		no-repeat 50% transparent
}

.unidade {
	float: left;
	margin-bottom: 35px
}

.unity {
	display: table;
	margin: 0 auto;
	padding-top: 10px
}

.unity>div {
	border: 1px solid #c2c2c2;
	border-radius: 4px
}

.unity>div>span a {
	display: none !important
}

.unity label {
	display: table;
	margin: 8px auto
}

.unity p {
	display: table;
	margin: 0 auto;
	padding-top: 10px
}

.qty_button {
	cursor: pointer;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1;
	background-color: #eee;
	border: none
}

.less {
	border-radius: 3px 0 0 3px;
	border: 1px solid #c2c2c2;
	border-top: 0;
	border-bottom: 0;
	border-left: 0
}

.more {
	border-radius: 0 3px 3px 0;
	border: 1px solid #c2c2c2;
	border-top: 0;
	border-bottom: 0;
	border-right: 0
}

.ambient .amb-selos {
	float: left;
	width: 405px;
	margin: 15px 0 7px 10px
}

.ambient .prd-selos {
	border-left: 1px solid #898989;
	float: left;
	width: 400px;
	height: 13px;
	padding: 5px 0 5px 5px;
	margin-left: 5px;
	display: none
}

.ambient .amb-selos .selos, .ambient .prd-selos .selos {
	margin-right: 5px;
	display: none
}

.ambient .amb-selos .amb-entrega-imediata.visible, .ambient .amb-selos .amb-novidade.visible,
	.ambient .amb-selos .amb-oportunidade-unica.visible, .ambient .amb-selos .amb-troca-de-colecao.visible,
	.ambient .amb-selos.visible, .ambient .prd-selos .prd-entrega-imediata.visible,
	.ambient .prd-selos .prd-novidade.visible, .ambient .prd-selos .prd-oportunidade-unica.visible,
	.ambient .prd-selos .prd-troca-de-colecao.visible, .ambient .prd-selos.visible
	{
	display: inline !important
}

.ambient .title-brand {
	float: left;
	font-weight: 700;
	font-size: 11px;
	margin: 15px 0 35px
}

.carousel-stage {
	position: relative
}

.pelicula-carrossel-kit {
	position: absolute;
	height: 100%;
	width: 100%;
	opacity: .75;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/loading_image.gif)
		no-repeat 50% #000;
	display: none
}

.btn_floater_especial {
	display: block;
	float: left
}

.btn_floater_especial.ok {
	width: 44px;
	height: 30px;
	background-position: -1233px -252px;
	margin-left: 25px
}

.btn_floater_especial.ok:hover {
	background-position: -1233px -285px
}

.btn_floater_especial.nao_vou {
	width: 161px;
	height: 30px;
	background-position: -946px -4px;
	margin-left: 15px
}

.btn_floater_especial.nao_vou:hover {
	background-position: -946px -44px
}

.ambient>.boxambi.left>.boxcomprartotal>div>.img-box-amb>img {
	width: 250px;
	height: 175px
}

.imagem-principal span {
	float: left;
	position: absolute;
	bottom: 13px;
	left: 15px;
	color: #ccc;
	font-size: 9px
}

.ambient .product-share p {
	text-align: right
}

.ambient .boxambi .pricebox .pricekit p.title {
	font-size: 13px
}

.botaoComprar .comprar-medium {
	margin: 10px auto 0
}

.icon-sanfona {
	width: 17px;
	height: 15px;
	float: right;
	background-position: -1211px -1591px;
	overflow: hidden;
	text-indent: -999px;
	cursor: pointer;
	margin: 0 0 0 10px
}

.boxambi .valor-frete-descricao {
	color: #2370b8;
	border: 0;
	cursor: pointer;
	background: #fff;
	width: 190px;
	margin: 0 46px
}

i.icon-sanfona.bg_prd.left {
	float: right !important;
	height: 15px
}

.final>span {
	color: #eea236
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod p.final,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod p.is,
	.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod p.was
	{
	font-size: 11px
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod p.final .nojuro
	{
	color: #262626
}

.ambient .boxambi .abas_description .fazemparte .carroselprods ul li.listprod p.is strong
	{
	font-size: 14px
}

.ambient .boxambi .fazemparte .carroselprods ul li.listprod.checked .titleProd p.title label span,
	.ambient .boxambi .fazemparte .carroselprods ul li.listprod .titleProd p.title label span
	{
	font-size: 10px;
	margin: 0 0 0 10px
}

.lkd-vertical-content {
	border: 1px solid #e6e6e6;
	border-radius: 4px;
	margin-bottom: 20px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	overflow: hidden
}

.lkd-vertical-content li {
	list-style: none
}

.lkd-vertical-content__tabs {
	background-color: #fff;
	display: inline;
	float: left;
	min-height: 18.75em;
	width: 30%
}

.lkd-vertical-content__tab {
	color: #262626;
	border-bottom: 1px solid #e6e6e6;
	display: block;
	font-weight: 700;
	margin-right: -1px;
	padding: 15px
}

.lkd-vertical-content__tab.is-active {
	background-color: #f2f2f2;
	margin-right: -1px
}

.lkd-vertical-content__tabs-container {
	background-color: #f2f2f2;
	display: inline-block;
	margin: 0 auto;
	min-height: 18.75em;
	width: 70%
}

.lkd-vertical-content__tab-content {
	background-color: #f2f2f2;
	padding: 20px;
	border: 0;
	display: none
}

.lkd-expander {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	display: none
}

.lkd-expander a:active, .lkd-expander a:focus, .lkd-expander a:hover {
	text-decoration: none
}

.lkd-expander p {
	line-height: 1.8
}

.lkd-expander.is-expanded {
	display: block
}

.box-white__subtitle {
	font-family: Montserrat, Roboto, Helvetica, Arial, sans-serif;
	font-size: 1.6rem;
	color: #262626;
	font-weight: 400;
	display: block;
	padding: 0;
	margin: 0 0 15px
}

.box-white__subtitle small {
	display: block;
	font-size: 1rem
}

.forgot-pass {
	max-width: 450px;
	padding: 30px 0;
	margin: 0 auto
}

.old-recovery-pass .forgot-pass {
	max-width: 100%
}

.old-recovery-pass .forgot-pass .box-radio {
	margin-right: 5px
}

.old-recovery-pass .colunaCadastro:last-child:not (:first-child ){
	float: none;
	border: none
}

.swiper-container {
	margin-left: auto;
	margin-right: auto;
	position: relative;
	overflow: hidden;
	z-index: 1
}

.swiper-container-no-flexbox .swiper-slide {
	float: left
}

.swiper-container-vertical>.swiper-wrapper {
	-webkit-box-orient: vertical;
	-ms-flex-direction: column;
	-webkit-flex-direction: column;
	flex-direction: column
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-transition-property: -webkit-transform;
	transition-property: -webkit-transform;
	transition-property: transform;
	transition-property: transform, -webkit-transform;
	-webkit-box-sizing: content-box;
	box-sizing: content-box
}

.swiper-container-android .swiper-slide, .swiper-wrapper {
	-webkit-transform: translateZ(0);
	-ms-transform: translateZ(0);
	transform: translateZ(0)
}

.swiper-container-multirow>.swiper-wrapper {
	-webkit-box-lines: multiple;
	-moz-box-lines: multiple;
	-ms-flex-wrap: wrap;
	-webkit-flex-wrap: wrap;
	flex-wrap: wrap
}

.swiper-container-free-mode>.swiper-wrapper {
	-webkit-transition-timing-function: ease-out;
	transition-timing-function: ease-out;
	margin: 0 auto
}

.swiper-slide {
	-webkit-flex-shrink: 0;
	-ms-flex: 0 0 auto;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative
}

.swiper-container-autoheight, .swiper-container-autoheight .swiper-slide
	{
	height: auto
}

.swiper-container-autoheight .swiper-wrapper {
	-webkit-box-align: start;
	-ms-flex-align: start;
	-webkit-align-items: flex-start;
	align-items: flex-start;
	-webkit-transition-property: -webkit-transform, height;
	-webkit-transition-property: height, -webkit-transform;
	transition-property: height, -webkit-transform;
	transition-property: transform, height;
	transition-property: transform, height, -webkit-transform
}

.swiper-container .swiper-notification {
	position: absolute;
	left: 0;
	top: 0;
	pointer-events: none;
	opacity: 0;
	z-index: -1000
}

.swiper-wp8-horizontal {
	-ms-touch-action: pan-y;
	touch-action: pan-y
}

.swiper-wp8-vertical {
	-ms-touch-action: pan-x;
	touch-action: pan-x
}

.swiper-button-next, .swiper-button-prev {
	position: absolute;
	top: 50%;
	width: 27px;
	height: 44px;
	margin-top: -22px;
	z-index: 10;
	cursor: pointer;
	background-size: 27px 44px;
	background-position: 50%;
	background-repeat: no-repeat
}

.swiper-button-next.swiper-button-disabled, .swiper-button-prev.swiper-button-disabled
	{
	opacity: .35;
	cursor: auto;
	pointer-events: none
}

.swiper-button-prev, .swiper-container-rtl .swiper-button-next {
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'%3E%3Cpath d='M0 22L22 0l2.1 2.1L4.2 22l19.9 19.9L22 44 0 22z' fill='%23007aff'/%3E%3C/svg%3E");
	left: 10px;
	right: auto
}

.swiper-button-prev.swiper-button-black, .swiper-container-rtl .swiper-button-next.swiper-button-black
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'%3E%3Cpath d='M0 22L22 0l2.1 2.1L4.2 22l19.9 19.9L22 44 0 22z'/%3E%3C/svg%3E")
}

.swiper-button-prev.swiper-button-white, .swiper-container-rtl .swiper-button-next.swiper-button-white
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'%3E%3Cpath d='M0 22L22 0l2.1 2.1L4.2 22l19.9 19.9L22 44 0 22z' fill='%23fff'/%3E%3C/svg%3E")
}

.swiper-button-next, .swiper-container-rtl .swiper-button-prev {
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'%3E%3Cpath d='M27 22L5 44l-2.1-2.1L22.8 22 2.9 2.1 5 0l22 22z' fill='%23007aff'/%3E%3C/svg%3E");
	right: 10px;
	left: auto
}

.swiper-button-next.swiper-button-black, .swiper-container-rtl .swiper-button-prev.swiper-button-black
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'%3E%3Cpath d='M27 22L5 44l-2.1-2.1L22.8 22 2.9 2.1 5 0l22 22z'/%3E%3C/svg%3E")
}

.swiper-button-next.swiper-button-white, .swiper-container-rtl .swiper-button-prev.swiper-button-white
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'%3E%3Cpath d='M27 22L5 44l-2.1-2.1L22.8 22 2.9 2.1 5 0l22 22z' fill='%23fff'/%3E%3C/svg%3E")
}

.swiper-pagination {
	position: absolute;
	text-align: center;
	-webkit-transition: .3s;
	transition: .3s;
	-webkit-transform: translateZ(0);
	-ms-transform: translateZ(0);
	transform: translateZ(0);
	z-index: 10
}

.swiper-pagination.swiper-pagination-hidden {
	opacity: 0
}

.swiper-container-horizontal>.swiper-pagination-bullets,
	.swiper-pagination-custom, .swiper-pagination-fraction {
	bottom: 10px;
	left: 0;
	width: 100%
}

.swiper-pagination-bullet {
	width: 8px;
	height: 8px;
	display: inline-block;
	border-radius: 100%;
	background: #000;
	opacity: .2
}

button.swiper-pagination-bullet {
	border: none;
	margin: 0;
	padding: 0;
	-webkit-box-shadow: none;
	box-shadow: none;
	-moz-appearance: none;
	-ms-appearance: none;
	-webkit-appearance: none;
	appearance: none
}

.swiper-pagination-clickable .swiper-pagination-bullet {
	cursor: pointer
}

.swiper-pagination-white .swiper-pagination-bullet {
	background: #fff
}

.swiper-pagination-bullet-active {
	opacity: 1;
	background: #007aff
}

.swiper-pagination-white .swiper-pagination-bullet-active {
	background: #fff
}

.swiper-pagination-black .swiper-pagination-bullet-active {
	background: #000
}

.swiper-container-vertical>.swiper-pagination-bullets {
	right: 10px;
	top: 50%;
	-webkit-transform: translate3d(0, -50%, 0);
	-ms-transform: translate3d(0, -50%, 0);
	transform: translate3d(0, -50%, 0)
}

.swiper-container-vertical>.swiper-pagination-bullets .swiper-pagination-bullet
	{
	margin: 5px 0;
	display: block
}

.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet
	{
	margin: 0 5px
}

.swiper-pagination-progress {
	background: rgba(0, 0, 0, .25);
	position: absolute
}

.swiper-pagination-progress .swiper-pagination-progressbar {
	background: #007aff;
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	-webkit-transform: scale(0);
	-ms-transform: scale(0);
	transform: scale(0);
	-webkit-transform-origin: left top;
	-ms-transform-origin: left top;
	transform-origin: left top
}

.swiper-container-rtl .swiper-pagination-progress .swiper-pagination-progressbar
	{
	-webkit-transform-origin: right top;
	-ms-transform-origin: right top;
	transform-origin: right top
}

.swiper-container-horizontal>.swiper-pagination-progress {
	width: 100%;
	height: 4px;
	left: 0;
	top: 0
}

.swiper-container-vertical>.swiper-pagination-progress {
	width: 4px;
	height: 100%;
	left: 0;
	top: 0
}

.swiper-pagination-progress.swiper-pagination-white {
	background: hsla(0, 0%, 100%, .5)
}

.swiper-pagination-progress.swiper-pagination-white .swiper-pagination-progressbar
	{
	background: #fff
}

.swiper-pagination-progress.swiper-pagination-black .swiper-pagination-progressbar
	{
	background: #000
}

.swiper-container-3d {
	-webkit-perspective: 1200px;
	-o-perspective: 1200px;
	perspective: 1200px
}

.swiper-container-3d .swiper-cube-shadow, .swiper-container-3d .swiper-slide,
	.swiper-container-3d .swiper-slide-shadow-bottom, .swiper-container-3d .swiper-slide-shadow-left,
	.swiper-container-3d .swiper-slide-shadow-right, .swiper-container-3d .swiper-slide-shadow-top,
	.swiper-container-3d .swiper-wrapper {
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d
}

.swiper-container-3d .swiper-slide-shadow-bottom, .swiper-container-3d .swiper-slide-shadow-left,
	.swiper-container-3d .swiper-slide-shadow-right, .swiper-container-3d .swiper-slide-shadow-top
	{
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	pointer-events: none;
	z-index: 10
}

.swiper-container-3d .swiper-slide-shadow-left {
	background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, .5)),
		to(transparent));
	background-image: -webkit-linear-gradient(right, rgba(0, 0, 0, .5),
		transparent);
	background-image: -webkit-gradient(linear, right top, left top, from(rgba(0, 0, 0, .5)),
		to(transparent));
	background-image: linear-gradient(270deg, rgba(0, 0, 0, .5), transparent)
}

.swiper-container-3d .swiper-slide-shadow-right {
	background-image: -webkit-gradient(linear, right top, left top, from(rgba(0, 0, 0, .5)),
		to(transparent));
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .5),
		transparent);
	background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, .5)),
		to(transparent));
	background-image: linear-gradient(90deg, rgba(0, 0, 0, .5), transparent)
}

.swiper-container-3d .swiper-slide-shadow-top {
	background-image: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, .5)),
		to(transparent));
	background-image: -webkit-linear-gradient(bottom, rgba(0, 0, 0, .5),
		transparent);
	background-image: -webkit-gradient(linear, left bottom, left top, from(rgba(0, 0, 0, .5)),
		to(transparent));
	background-image: linear-gradient(0deg, rgba(0, 0, 0, .5), transparent)
}

.swiper-container-3d .swiper-slide-shadow-bottom {
	background-image: -webkit-gradient(linear, left bottom, left top, from(rgba(0, 0, 0, .5)),
		to(transparent));
	background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, .5),
		transparent);
	background-image: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, .5)),
		to(transparent));
	background-image: linear-gradient(180deg, rgba(0, 0, 0, .5), transparent)
}

.swiper-container-coverflow .swiper-wrapper, .swiper-container-flip .swiper-wrapper
	{
	-ms-perspective: 1200px
}

.swiper-container-cube, .swiper-container-flip {
	overflow: visible
}

.swiper-container-cube .swiper-slide, .swiper-container-flip .swiper-slide
	{
	pointer-events: none;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	z-index: 1
}

.swiper-container-cube .swiper-slide .swiper-slide,
	.swiper-container-flip .swiper-slide .swiper-slide {
	pointer-events: none
}

.swiper-container-cube .swiper-slide-active, .swiper-container-cube .swiper-slide-active .swiper-slide-active,
	.swiper-container-flip .swiper-slide-active, .swiper-container-flip .swiper-slide-active .swiper-slide-active
	{
	pointer-events: auto
}

.swiper-container-cube .swiper-slide-shadow-bottom,
	.swiper-container-cube .swiper-slide-shadow-left,
	.swiper-container-cube .swiper-slide-shadow-right,
	.swiper-container-cube .swiper-slide-shadow-top, .swiper-container-flip .swiper-slide-shadow-bottom,
	.swiper-container-flip .swiper-slide-shadow-left,
	.swiper-container-flip .swiper-slide-shadow-right,
	.swiper-container-flip .swiper-slide-shadow-top {
	z-index: 0;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden
}

.swiper-container-cube .swiper-slide {
	visibility: hidden;
	-webkit-transform-origin: 0 0;
	-ms-transform-origin: 0 0;
	transform-origin: 0 0;
	width: 100%;
	height: 100%
}

.swiper-container-cube.swiper-container-rtl .swiper-slide {
	-webkit-transform-origin: 100% 0;
	-ms-transform-origin: 100% 0;
	transform-origin: 100% 0
}

.swiper-container-cube .swiper-slide-active, .swiper-container-cube .swiper-slide-next,
	.swiper-container-cube .swiper-slide-next+.swiper-slide,
	.swiper-container-cube .swiper-slide-prev {
	pointer-events: auto;
	visibility: visible
}

.swiper-container-cube .swiper-cube-shadow {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .6;
	-webkit-filter: blur(50px);
	filter: blur(50px);
	z-index: 0
}

.swiper-container-fade.swiper-container-free-mode .swiper-slide {
	-webkit-transition-timing-function: ease-out;
	transition-timing-function: ease-out
}

.swiper-container-fade .swiper-slide {
	pointer-events: none;
	-webkit-transition-property: opacity;
	transition-property: opacity
}

.swiper-container-fade .swiper-slide .swiper-slide {
	pointer-events: none
}

.swiper-container-fade .swiper-slide-active, .swiper-container-fade .swiper-slide-active .swiper-slide-active
	{
	pointer-events: auto
}

.swiper-zoom-container {
	width: 100%;
	height: 100%;
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
	text-align: center
}

.swiper-zoom-container>canvas, .swiper-zoom-container>img,
	.swiper-zoom-container>svg {
	max-width: 100%;
	max-height: 100%;
	object-fit: contain
}

.swiper-scrollbar {
	border-radius: 10px;
	position: relative;
	-ms-touch-action: none;
	background: rgba(0, 0, 0, .1)
}

.swiper-container-horizontal>.swiper-scrollbar {
	position: absolute;
	left: 1%;
	bottom: 3px;
	z-index: 50;
	height: 5px;
	width: 98%
}

.swiper-container-vertical>.swiper-scrollbar {
	position: absolute;
	right: 3px;
	top: 1%;
	z-index: 50;
	width: 5px;
	height: 98%
}

.swiper-scrollbar-drag {
	height: 100%;
	width: 100%;
	position: relative;
	background: rgba(0, 0, 0, .5);
	border-radius: 10px;
	left: 0;
	top: 0
}

.swiper-scrollbar-cursor-drag {
	cursor: move
}

.swiper-lazy-preloader {
	width: 42px;
	height: 42px;
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -21px;
	margin-top: -21px;
	z-index: 10;
	-webkit-transform-origin: 50%;
	-ms-transform-origin: 50%;
	transform-origin: 50%;
	-webkit-animation: swiper-preloader-spin 1s steps(12) infinite;
	animation: swiper-preloader-spin 1s steps(12) infinite
}

.swiper-lazy-preloader:after {
	display: block;
	content: "";
	width: 100%;
	height: 100%;
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg viewBox='0 0 120 120' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Cdefs%3E%3Cpath id='a' stroke='%236c6c6c' stroke-width='11' stroke-linecap='round' d='M60 7v20'/%3E%3C/defs%3E%3Cuse xlink:href='%23a' opacity='.27'/%3E%3Cuse xlink:href='%23a' opacity='.27' transform='rotate(30 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.27' transform='rotate(60 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.27' transform='rotate(90 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.27' transform='rotate(120 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.27' transform='rotate(150 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.37' transform='rotate(180 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.46' transform='rotate(210 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.56' transform='rotate(240 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.66' transform='rotate(270 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.75' transform='rotate(300 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.85' transform='rotate(330 60 60)'/%3E%3C/svg%3E");
	background-position: 50%;
	background-size: 100%;
	background-repeat: no-repeat
}

.swiper-lazy-preloader-white:after {
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg viewBox='0 0 120 120' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Cdefs%3E%3Cpath id='a' stroke='%23fff' stroke-width='11' stroke-linecap='round' d='M60 7v20'/%3E%3C/defs%3E%3Cuse xlink:href='%23a' opacity='.27'/%3E%3Cuse xlink:href='%23a' opacity='.27' transform='rotate(30 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.27' transform='rotate(60 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.27' transform='rotate(90 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.27' transform='rotate(120 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.27' transform='rotate(150 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.37' transform='rotate(180 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.46' transform='rotate(210 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.56' transform='rotate(240 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.66' transform='rotate(270 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.75' transform='rotate(300 60 60)'/%3E%3Cuse xlink:href='%23a' opacity='.85' transform='rotate(330 60 60)'/%3E%3C/svg%3E")
}

.lkd-gshopping-product {
	height: auto;
	width: 100%;
	min-height: 380px;
	display: block;
	border-radius: 6px;
	-webkit-box-shadow: 0 1px 7px rgba(0, 0, 0, .13);
	box-shadow: 0 1px 7px rgba(0, 0, 0, .13);
	padding: 15px 20px;
	margin-bottom: 20px;
	position: relative;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.lkd-gshopping-product__images {
	width: 275px;
	float: left;
	position: relative
}

.lkd-gshopping-product__images .lkd-product-box__wishlist {
	display: block;
	min-width: 150px;
	padding: 0;
	text-align: center;
	position: absolute;
	top: 15px;
	left: 10px
}

.lkd-gshopping-product__images .lkd-product-box__wishlist-icon,
	.lkd-gshopping-product__images .lkd-product-box__wishlist:after {
	display: inline-block;
	vertical-align: middle
}

.lkd-gshopping-product__swiper {
	height: auto;
	width: 100%;
	margin-bottom: 10px
}

.lkd-gshopping-product__swiper .swiper-slide {
	padding-top: 100%;
	position: relative
}

.lkd-gshopping-product__swiper img {
	position: absolute;
	top: 0;
	left: 0
}

.lkd-gshopping-product__thumbs {
	height: auto;
	width: 100%;
	padding: 0 20px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.lkd-gshopping-product__thumbs .swiper-button-next,
	.lkd-gshopping-product__thumbs .swiper-button-prev {
	height: 100%;
	width: 19px;
	background-color: #ebebeb;
	background-size: 12px;
	background-position: 50%;
	-webkit-filter: grayscale(1);
	filter: grayscale(1);
	border-radius: 4px;
	top: 0;
	margin-top: 0
}

.lkd-gshopping-product__thumbs .swiper-button-prev {
	left: -1px
}

.lkd-gshopping-product__thumbs .swiper-button-next {
	right: -1px
}

.lkd-gshopping-product__thumbs .swiper-slide {
	padding: 0 5px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	cursor: pointer
}

.lkd-gshopping-product__thumbs .swiper-slide img {
	border: 1px solid #f2f2f2
}

.lkd-gshopping-product__thumbs .swiper-slide.is-active img {
	border-color: #ffca28
}

.lkd-gshopping-product__board {
	width: 470px;
	float: left;
	padding: 0 20px
}

.lkd-gshopping-product__board h1 {
	font-size: 16px;
	font-weight: 400;
	min-height: 80px
}

.lkd-gshopping-product__board h1 small {
	display: block;
	margin: 10px 0
}

.lkd-gshopping-product__colors .swiper-contaier {
	margin: 10px 0
}

.lkd-gshopping-product__colors .swiper-slide {
	height: 64px;
	width: 64px;
	border: 1px solid #fff
}

.lkd-gshopping-product__colors .swiper-slide.is-active {
	border-color: #ffca28
}

.lkd-gshopping-product__colors .swiper-slide img {
	margin: 4px
}

.lkd-gshopping-product__prices {
	margin-top: 20px
}

.lkd-gshopping-product__prices p {
	margin-bottom: 5px
}

.lkd-gshopping-product__prices--of {
	color: #999;
	text-decoration: line-through
}

.lkd-gshopping-product__prices--by {
	font-size: 20px;
	font-weight: 700
}

.lkd-gshopping-product__prices--save {
	color: #43a047;
	font-size: 11px
}

.lkd-gshopping-product__prices--or {
	font-size: 14px;
	font-weight: 700
}

.lkd-gshopping-product__prices--parceled {
	font-size: 15px;
	font-weight: 700;
	color: #ffca28
}

.lkd-gshopping-product__right {
	width: 212px;
	float: left
}

.lkd-gshopping-product__right-bottom {
	position: absolute;
	right: 15px;
	bottom: 20px
}

.lkd-gshopping-product .selo-produto.linhas-1, .lkd-gshopping-product .selo-produto.linhas-2,
	.lkd-gshopping-product .selo-produto.linhas-3 {
	height: 60px;
	width: 60px
}

.lkd-gshopping-product__attributes select {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	overflow: hidden;
	border: 1px solid #aaa;
	border-radius: 4px;
	width: 212px;
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/sprites/sprite-geral.png)
		0 0 no-repeat;
	background-position: 166px -2354px;
	font-size: 16px;
	line-height: 1;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	display: block;
	width: 100%;
	color: #aaa;
	height: 50px;
	cursor: pointer;
	padding: 0 10px;
	margin-bottom: 20px
}

.lkd-gshopping-product .botaoComprar {
	background: #ffe01a;
	border-radius: 4px;
	overflow: hidden
}

.lkd-gshopping-product .botaoComprar:hover {
	background: #ffd200
}

.lkd-gshopping-product__see-details {
	width: 210px;
	border-radius: 4px;
	margin-top: 20px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	display: block
}

.lkd-gshopping-product__title-category {
	display: block;
	font-size: 20px;
	font-weight: 400;
	text-align: center;
	margin: 20px 0
}

.lkd-gshopping-product .lkd-alert {
	width: 210px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	margin-top: 20px
}

.lkd-gshopping-product .lkd-alert.hide {
	display: none
}

.lkd-gshopping-product__button-freight {
	line-height: 30px;
	margin-top: 5px
}

.container .lkd-gshopping-product .lkd-gshopping-product__see-details:hover
	{
	text-decoration: none
}

.lkd-badge {
	position: relative;
	z-index: 1
}

.lkd-badge--inline, .lkd-badge:after {
	position: absolute;
	content: attr(data-noty-count);
	display: inline-block;
	background-color: #0288d1;
	line-height: 16px;
	min-width: 16px;
	text-align: center;
	border-radius: 20px;
	font-size: .7143rem;
	padding: 0 4px;
	font-weight: 700;
	color: #fff;
	opacity: 1;
	z-index: 20;
	top: 10px;
	left: 55%
}

.lkd-badge--inline {
	position: relative;
	top: inherit;
	left: inherit;
	vertical-align: text-bottom;
	margin-right: 5px
}

.lkd-badge--inline:after {
	content: ""
}

.lkd-advantages {
	height: auto;
	width: 100%;
	display: block;
	background: #f5f5f5;
	border-radius: 8px;
	padding: 15px;
	overflow: visible;
	max-height: 0;
	opacity: 0
}

.lkd-advantages:before {
	content: "";
	height: 30px;
	width: 30px;
	position: absolute;
	top: -10px;
	left: 50%;
	background: #f5f5f5;
	margin-left: -15px;
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
	border-radius: 6px
}

.lkd-advantages__title {
	font-family: Montserrat, Roboto, Helvetica, Arial, sans-serif;
	font-size: 14px;
	text-align: center;
	padding: 0 20px;
	margin-bottom: 5px;
	opacity: 0
}

.lkd-advantages__title i {
	height: 50px;
	width: 50px;
	line-height: 50px;
	display: block;
	border-radius: 50%;
	font-size: 30px;
	background: #4caf50;
	color: #fff;
	margin: 0 auto 10px
}

.lkd-advantages__list li {
	width: 100%;
	display: block;
	padding: 15px 0;
	font-size: 14px;
	font-weight: 700;
	color: #757575;
	text-align: center;
	opacity: 0;
	-webkit-transform: translateX(100%);
	-ms-transform: translateX(100%);
	transform: translateX(100%)
}

.lkd-advantages__list li:not (:first-child ){
	border-top: 1px solid #e1e1e1
}

.lkd-advantages__list li p, .lkd-advantages__list li span {
	font-weight: 400
}

.lkd-advantages__list li span {
	color: #4caf50
}

.lkd-advantages__list li p {
	margin-bottom: 0
}

.lkd-advantages__list li i {
	font-size: 20px;
	line-height: 15px;
	margin-right: 5px
}

.lkd-advantages .lkd-description .selo-produto, .lkd-advantages .lkd-seal,
	.lkd-description .lkd-advantages .selo-produto {
	font-weight: 400;
	text-transform: uppercase;
	margin-bottom: 5px
}

.lkd-advantages--full {
	width: -webkit-calc(100% + 20px);
	width: calc(100% + 20px);
	margin-left: -10px;
	border-radius: 0;
	border: 0;
	position: relative;
	padding: 15px 30px;
	overflow: hidden
}

.lkd-advantages--full .lkd-advantages__title {
	width: 230px;
	position: relative;
	text-align: left;
	margin-left: auto;
	margin-right: auto;
	padding: 8px 0 0 60px
}

.lkd-advantages--full .lkd-advantages__title i {
	position: absolute;
	top: 0;
	left: 0;
	text-align: center
}

.lkd-advantages+.lkd-description__shipping {
	border-top: 0
}

.lkd-advantages.use-animation {
	-webkit-animation: slideDown 3s .3s forwards;
	animation: slideDown 3s .3s forwards
}

.lkd-advantages.use-animation .lkd-advantages__title {
	-webkit-animation: fade .5s .8s forwards;
	animation: fade .5s .8s forwards
}

.lkd-advantages.use-animation .lkd-advantages__list li {
	-webkit-animation: slideLeft .5s forwards;
	animation: slideLeft .5s forwards
}

.lkd-advantages.use-animation .lkd-advantages__list li:first-child {
	-webkit-animation-delay: 1.1s;
	animation-delay: 1.1s
}

.lkd-advantages.use-animation .lkd-advantages__list li:nth-child(2) {
	-webkit-animation-delay: 1.4s;
	animation-delay: 1.4s
}

.lkd-advantages.use-animation .lkd-advantages__list li:nth-child(3) {
	-webkit-animation-delay: 1.7s;
	animation-delay: 1.7s
}

.lkd-advantages.use-animation .lkd-advantages__list li:nth-child(4) {
	-webkit-animation-delay: 2s;
	animation-delay: 2s
}

.lkd-advantages.use-animation .lkd-advantages__list li:nth-child(5) {
	-webkit-animation-delay: 2.3s;
	animation-delay: 2.3s
}

.lkd-description .selo-produto, .lkd-seal {
	height: auto;
	width: auto;
	font-size: 12px;
	border-radius: 6px;
	display: inline-block;
	padding: 3px 8px;
	margin: 0 3px
}

.lkd-description .selo-produto p, .lkd-seal p {
	font-size: 12px !important;
	font-weight: 400;
	line-height: inherit !important;
	margin-bottom: 0
}

.lkd-description .selo-produto span, .lkd-seal span {
	display: inline-block
}

.box-produtos-relacionados.highlighted.visible .lkd-similars-showcase.is-fixed
	{
	bottom: 0
}

.lkd-gshopping-product__similars.highlighted .lkd-similars-showcase {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	position: relative;
	overflow: hidden
}

.lkd-gshopping-product__similars.highlighted .lkd-similars-showcase__close
	{
	display: none
}

#toggle-similars-modal:checked+.lkd-similars-showcase {
	bottom: -145px
}

#toggle-similars-modal:checked+.lkd-similars-showcase .lkd-similars-showcase__close i
	{
	-webkit-transform: rotate(180deg);
	-ms-transform: rotate(180deg);
	transform: rotate(180deg)
}

.lkd-similars-showcase {
	width: 100%;
	display: block;
	border-radius: 6px;
	padding: 15px 20px 15px 40px;
	background-color: #fff;
	-webkit-box-shadow: 0 1px 7px rgba(0, 0, 0, .13);
	box-shadow: 0 1px 7px rgba(0, 0, 0, .13);
	z-index: 22;
	overflow: hidden;
	-webkit-transition: bottom .3s ease;
	transition: bottom .3s ease
}

.lkd-similars-showcase.is-fixed {
	position: fixed;
	bottom: -200px;
	left: 50%;
	-webkit-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	transform: translateX(-50%);
	max-width: 98%;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
	-webkit-box-shadow: 0 5px 13px rgba(0, 0, 0, .3);
	box-shadow: 0 5px 13px rgba(0, 0, 0, .3)
}

.lkd-similars-showcase__close {
	height: 45px;
	width: 100%;
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	cursor: pointer;
	z-index: 4
}

.lkd-similars-showcase__close i {
	display: block;
	float: right;
	font-size: 18px;
	color: #ffca28;
	padding: 15px;
	-webkit-transition: -webkit-transform .3s ease;
	transition: -webkit-transform .3s ease;
	transition: transform .3s ease;
	transition: transform .3s ease, -webkit-transform .3s ease
}

.lkd-similars-showcase__title {
	position: relative;
	z-index: 3
}

.lkd-similars-showcase__title span {
	font-weight: 400
}

.lkd-similars-showcase__swiper .swiper-slide {
	width: auto
}

.lkd-similars-showcase__swiper .swiper-slide:last-child .lkd-product-box
	{
	border-right: 0
}

.lkd-similars-showcase__swiper .lkd-product-box {
	margin: 0 20px 0 1px;
	border-right: 2px solid #ebebeb;
	padding-right: 20px;
	max-width: 370px;
	max-height: 120px;
	background-color: transparent !important;
	-webkit-box-shadow: none;
	box-shadow: none;
	border-radius: 0
}

.lkd-similars-showcase__swiper .lkd-product-box:hover {
	opacity: .6
}

.lkd-similars-showcase__swiper .lkd-product-box__thumb {
	height: 120px;
	width: 120px;
	display: block;
	float: left;
	background: #f2f2f2;
	border-bottom: 0
}

.lkd-similars-showcase__swiper .lkd-product-box__img {
	height: 120px
}

.lkd-similars-showcase__swiper .lkd-product-box__header {
	height: 120px;
	width: 220px;
	display: block;
	float: left;
	padding: 0 0 0 10px
}

.lkd-similars-showcase__swiper .lkd-product-box__title {
	font-family: Lato, Arial, Helvetica, sans-serif;
	font-size: 13px !important;
	line-height: 14px;
	color: #999;
	margin-bottom: 10px !important
}

.lkd-similars-showcase__swiper .lkd-product-box__meta label {
	display: none
}

.lkd-similars-showcase__swiper .lkd-product-box__meta strong {
	color: #424242
}

.lkd-similars-showcase__swiper .lkd-product-box__meta span {
	color: #757575
}

.lkd-similars-showcase__swiper .lkd-product-box__meta p {
	line-height: 1.2
}

.lkd-similars-showcase__swiper .lkd-product-box__meta p.opcao-pagamento-a-vista,
	.lkd-similars-showcase__swiper .lkd-product-box__meta p.opcao-pagamento-a-vista strong
	{
	font-size: 12px;
	color: #757575
}

.lkd-similars-showcase__swiper .lkd-product-box__seals {
	top: inherit;
	right: inherit;
	bottom: 0;
	left: 130px
}

.lkd-similars-showcase__swiper .lkd-product-box__seals .selo-produto.linhas-1,
	.lkd-similars-showcase__swiper .lkd-product-box__seals .selo-produto.linhas-2,
	.lkd-similars-showcase__swiper .lkd-product-box__seals .selo-produto.linhas-3
	{
	width: auto !important;
	height: auto !important;
	border-radius: 6px;
	font-size: 10px;
	padding: 1px 8px
}

.lkd-similars-showcase__swiper .lkd-product-box__seals .selo-produto.linhas-1 p,
	.lkd-similars-showcase__swiper .lkd-product-box__seals .selo-produto.linhas-2 p,
	.lkd-similars-showcase__swiper .lkd-product-box__seals .selo-produto.linhas-3 p
	{
	margin-bottom: 0;
	font-size: 10px !important;
	line-height: 14px !important
}

.lkd-similars-showcase__swiper .lkd-product-box__seals .selo-produto.linhas-1 p span,
	.lkd-similars-showcase__swiper .lkd-product-box__seals .selo-produto.linhas-2 p span,
	.lkd-similars-showcase__swiper .lkd-product-box__seals .selo-produto.linhas-3 p span
	{
	display: inline-block
}

.lkd-similars-showcase__swiper .lkd-product-box__footer {
	display: none
}

.lkd-similars-showcase__swiper .lkd-product-box__wishlist {
	height: 35px;
	width: 35px;
	max-width: 35px;
	top: inherit;
	left: inherit;
	bottom: 2px;
	right: 35px;
	line-height: 25px
}

.lkd-similars-showcase__swiper .lkd-product-box a:hover {
	text-decoration: none
}

.lkd-similars-showcase .swiper-button-next, .lkd-similars-showcase .swiper-button-prev
	{
	height: 60px;
	width: 30px;
	border: none;
	background-image: none;
	background-color: #ffca28;
	color: #fff;
	font-size: 25px;
	margin-top: -10px
}

.lkd-similars-showcase .swiper-button-next i, .lkd-similars-showcase .swiper-button-prev i
	{
	position: absolute;
	top: 17px
}

.lkd-similars-showcase .swiper-button-next.swiper-button-disabled,
	.lkd-similars-showcase .swiper-button-prev.swiper-button-disabled {
	display: block;
	opacity: 1
}

.lkd-similars-showcase .swiper-button-prev {
	border-radius: 0 30px 30px 0;
	left: 0;
	-webkit-transition: left .3s ease-in-out;
	transition: left .3s ease-in-out
}

.lkd-similars-showcase .swiper-button-prev i {
	right: 7px
}

.lkd-similars-showcase .swiper-button-prev+span {
	height: 100%;
	width: 40px;
	position: absolute;
	top: 0;
	left: 40px;
	margin-left: -2px;
	content: "";
	z-index: 2;
	-webkit-box-shadow: inset 20px 0 30px #fff;
	box-shadow: inset 20px 0 30px #fff
}

.lkd-similars-showcase .swiper-button-prev.swiper-button-disabled {
	left: -60px
}

.lkd-similars-showcase .swiper-button-prev.swiper-button-disabled+span {
	opacity: 0
}

.lkd-similars-showcase .swiper-button-next {
	border-radius: 30px 0 0 30px;
	right: 0;
	-webkit-transition: right .3s ease-in-out;
	transition: right .3s ease-in-out
}

.lkd-similars-showcase .swiper-button-next i {
	left: 7px
}

.lkd-similars-showcase .swiper-button-next+span {
	height: 100%;
	width: 40px;
	position: absolute;
	top: 0;
	right: 20px;
	margin-right: -2px;
	content: "";
	z-index: 2;
	-webkit-box-shadow: inset -20px 0 30px #fff;
	box-shadow: inset -20px 0 30px #fff
}

.lkd-similars-showcase .swiper-button-next.swiper-button-disabled {
	right: -60px
}

.lkd-similars-showcase .swiper-button-next.swiper-button-disabled+span {
	opacity: 0
}

.lkd-similars-showcase.swiper-not-initialized .swiper-button-next,
	.lkd-similars-showcase.swiper-not-initialized .swiper-button-next+span,
	.lkd-similars-showcase.swiper-not-initialized .swiper-button-prev,
	.lkd-similars-showcase.swiper-not-initialized .swiper-button-prev+span
	{
	display: none
}

.has-error__message, .lkd-form-validation__message {
	height: auto;
	width: 100%;
	clear: both;
	background-color: #ccc;
	color: #fff;
	font-size: 10px;
	display: block;
	padding: 3px;
	border-radius: 6px;
	margin-top: 2px;
	position: relative
}

.has-error__message:before, .lkd-form-validation__message:before {
	position: absolute;
	top: -7px;
	left: 10px;
	height: 0;
	width: 0;
	content: "";
	border-style: solid;
	border-width: 0 7px 7px;
	border-color: transparent transparent #ccc
}

.lkd-form-validation input, .lkd-form-validation select,
	.lkd-form-validation textarea {
	margin-bottom: 2px
}

.lkd-form-validation--success .has-error__message,
	.lkd-form-validation--success .lkd-form-validation__message {
	background-color: #6ec071
}

.lkd-form-validation--success .has-error__message:before,
	.lkd-form-validation--success .lkd-form-validation__message:before {
	border-color: transparent transparent #6ec071
}

.lkd-form-validation--success label {
	color: #4caf50
}

.lkd-form-validation--success input, .lkd-form-validation--success select,
	.lkd-form-validation--success textarea {
	border-color: #4caf50;
	background-color: #d9eeda
}

.has-error .has-error__message, .has-error .lkd-form-validation__message,
	.lkd-form-validation--danger .has-error__message,
	.lkd-form-validation--danger .lkd-form-validation__message {
	background-color: #eb6562
}

.has-error .has-error__message:before, .has-error .lkd-form-validation__message:before,
	.lkd-form-validation--danger .has-error__message:before,
	.lkd-form-validation--danger .lkd-form-validation__message:before {
	border-color: transparent transparent #eb6562
}

.has-error label, .lkd-form-validation--danger label {
	color: #e53935
}

.has-error input, .has-error select, .has-error textarea,
	.lkd-form-validation--danger input, .lkd-form-validation--danger select,
	.lkd-form-validation--danger textarea {
	border-color: #e53935;
	background-color: #fceaea
}

.lkd-form-validation--warning .has-error__message,
	.lkd-form-validation--warning .lkd-form-validation__message {
	background-color: #ff9529
}

.lkd-form-validation--warning .has-error__message:before,
	.lkd-form-validation--warning .lkd-form-validation__message:before {
	border-color: transparent transparent #ff9529
}

.lkd-form-validation--warning label {
	color: #f57c00
}

.lkd-form-validation--warning input, .lkd-form-validation--warning select,
	.lkd-form-validation--warning textarea {
	border-color: #f57c00;
	background-color: #ffe1c2
}

.lkd-form-validation--info .has-error__message,
	.lkd-form-validation--info .lkd-form-validation__message {
	background-color: #5ac7f8
}

.lkd-form-validation--info .has-error__message:before,
	.lkd-form-validation--info .lkd-form-validation__message:before {
	border-color: transparent transparent #5ac7f8
}

.lkd-form-validation--info label {
	color: #29b6f6
}

.lkd-form-validation--info input, .lkd-form-validation--info select,
	.lkd-form-validation--info textarea {
	border-color: #29b6f6;
	background-color: #edf9fe
}

.lkd-alert {
	display: block;
	width: 100%;
	border-radius: 8px;
	padding: 15px;
	text-align: center;
	margin: 0 0 20px;
	font-family: Lato, Arial, Helvetica, sans-serif;
	font-size: 1rem;
	line-height: 1.3;
	color: #424242
}

.lkd-alert__text:not (:last-child ){
	margin: 0 0 5px
}

.lkd-alert__text--highlight {
	font-size: 12px;
	font-weight: 700;
	margin: 0 0 15px
}

.lkd-alert__text--small {
	font-size: 14px;
	margin-bottom: 0
}

.lkd-alert--info, .lkd-alert--primary {
	background-color: #e6f3fa;
	border: 1px solid #0288d1
}

.lkd-alert--info .lkd-alert__text--highlight, .lkd-alert--primary .lkd-alert__text--highlight
	{
	color: #0288d1
}

.lkd-alert--success {
	background-color: #edf7ee;
	border: 1px solid #4caf50
}

.lkd-alert--success .lkd-alert__text--highlight {
	color: #4caf50
}

.lkd-alert--warning {
	background-color: #fef2e6;
	border: 1px solid #f57c00
}

.lkd-alert--warning .lkd-alert__text--highlight {
	color: #f57c00
}

.lkd-alert--danger {
	background-color: #fcebeb;
	border: 1px solid #e53935
}

.lkd-alert--danger .lkd-alert__text--highlight {
	color: #e53935
}

.lkd-alert--small {
	padding: 5px;
	margin: 5px 0
}

.lkd-alert--no-margin {
	margin: 0
}

.lkd-gallery .swiper-pagination-bullet {
	background: #bdbdbd;
	border: 1px solid #424242;
	height: 12px;
	width: 12px
}

.lkd-gallery .swiper-pagination-bullet.swiper-pagination-bullet-active {
	background: #0288d1;
	border-color: #0288d1;
	opacity: 1
}

.lkd-gallery .swiper-button-next, .lkd-gallery .swiper-button-prev {
	height: 60px;
	width: 30px;
	border: none;
	background-image: none;
	background-color: #ffca28;
	color: #fff;
	font-size: 30px;
	margin-top: -30px
}

.lkd-gallery .swiper-button-next .fa, .lkd-gallery .swiper-button-prev .fa
	{
	position: absolute;
	top: 12px
}

.lkd-gallery .swiper-button-next.swiper-button-disabled, .lkd-gallery .swiper-button-prev.swiper-button-disabled
	{
	display: block;
	opacity: 1
}

.lkd-gallery .swiper-button-prev {
	border-radius: 0 30px 30px 0;
	left: 0;
	-webkit-transition: left .3s ease-in-out;
	transition: left .3s ease-in-out
}

.lkd-gallery .swiper-button-prev.swiper-button-disabled {
	left: -60px
}

.lkd-gallery .swiper-button-prev .fa {
	right: 15px
}

.lkd-gallery .swiper-button-next {
	border-radius: 30px 0 0 30px;
	right: 0;
	-webkit-transition: right .3s ease-in-out;
	transition: right .3s ease-in-out
}

.lkd-gallery .swiper-button-next.swiper-button-disabled {
	right: -60px
}

.lkd-gallery .swiper-button-next .fa {
	left: 15px
}

.introjs-overlay {
	position: absolute;
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	z-index: 999999;
	background-color: #000;
	opacity: 0;
	background: -webkit-gradient(radial, center center, 0, center center, 100%,
		color-stop(0, rgba(0, 0, 0, .4)), color-stop(100%, rgba(0, 0, 0, .9)));
	background: -webkit-radial-gradient(center, ellipse cover, rgba(0, 0, 0, .4)
		0, rgba(0, 0, 0, .9) 100%);
	background: radial-gradient(center, ellipse cover, rgba(0, 0, 0, .4) 0,
		rgba(0, 0, 0, .9) 100%);
	filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr='#66000000',endColorstr='#e6000000',GradientType=1)";
	-ms-filter: "alpha(opacity=50)";
	filter: alpha(opacity = 50);
	-webkit-transition: all .3s ease-out;
	transition: all .3s ease-out
}

.introjs-fixParent {
	z-index: auto !important;
	opacity: 1 !important;
	-webkit-transform: none !important;
	-ms-transform: none !important;
	transform: none !important
}

.introjs-showElement, tr.introjs-showElement>td, tr.introjs-showElement>th
	{
	z-index: 9999999 !important
}

.introjs-disableInteraction {
	z-index: 99999999 !important;
	position: absolute;
	background-color: #fff;
	opacity: 0;
	filter: alpha(opacity = 0)
}

.introjs-relativePosition, tr.introjs-showElement>td, tr.introjs-showElement>th
	{
	position: relative
}

.introjs-helperLayer {
	z-index: 9999998;
	background-color: #fff;
	background-color: hsla(0, 0%, 100%, .9);
	border: 1px solid #777;
	border: 1px solid rgba(0, 0, 0, .5);
	border-radius: 4px;
	-webkit-box-shadow: 0 2px 15px rgba(0, 0, 0, .4);
	box-shadow: 0 2px 15px rgba(0, 0, 0, .4)
}

.introjs-helperLayer, .introjs-tooltipReferenceLayer {
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	position: absolute;
	-webkit-transition: all .3s ease-out;
	transition: all .3s ease-out
}

.introjs-tooltipReferenceLayer {
	visibility: hidden;
	z-index: 100000000;
	background-color: transparent
}

.introjs-helperLayer *, .introjs-helperLayer :after,
	.introjs-helperLayer :before {
	-webkit-box-sizing: content-box;
	-ms-box-sizing: content-box;
	-o-box-sizing: content-box;
	box-sizing: content-box
}

.introjs-helperNumberLayer {
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	position: absolute;
	visibility: visible;
	top: -16px;
	left: -16px;
	z-index: 9999999999 !important;
	padding: 2px;
	font-family: Arial, verdana, tahoma;
	font-size: 13px;
	font-weight: 700;
	color: #fff;
	text-align: center;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, .3);
	background: #ff3019;
	background: -webkit-linear-gradient(top, #ff3019, #cf0404);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #ff3019),
		color-stop(100%, #cf0404));
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #ff3019),
		to(#cf0404));
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #ff3019),
		color-stop(0, #cf0404));
	background: -webkit-linear-gradient(top, #ff3019 0, #cf0404);
	background: linear-gradient(180deg, #ff3019 0, #cf0404);
	width: 20px;
	height: 20px;
	line-height: 20px;
	border: 3px solid #fff;
	border-radius: 50%;
	filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff3019', endColorstr='#cf0404', GradientType=0)";
	filter:
		"progid:DXImageTransform.Microsoft.Shadow(direction=135, strength=2, color=ff0000)";
	-webkit-box-shadow: 0 2px 5px rgba(0, 0, 0, .4);
	box-shadow: 0 2px 5px rgba(0, 0, 0, .4)
}

.introjs-arrow {
	border: 5px solid #fff;
	content: "";
	position: absolute
}

.introjs-arrow.top, .introjs-arrow.top-right {
	top: -10px;
	border-top-color: transparent;
	border-right-color: transparent;
	border-bottom-color: #fff;
	border-left-color: transparent
}

.introjs-arrow.top-right {
	right: 10px
}

.introjs-arrow.top-middle {
	top: -10px;
	left: 50%;
	margin-left: -5px;
	border-top-color: transparent;
	border-right-color: transparent;
	border-bottom-color: #fff;
	border-left-color: transparent
}

.introjs-arrow.right {
	top: 10px
}

.introjs-arrow.right, .introjs-arrow.right-bottom {
	right: -10px;
	border-top-color: transparent;
	border-right-color: transparent;
	border-bottom-color: transparent;
	border-left-color: #fff
}

.introjs-arrow.right-bottom {
	bottom: 10px
}

.introjs-arrow.bottom {
	bottom: -10px;
	border-top-color: #fff;
	border-right-color: transparent;
	border-bottom-color: transparent;
	border-left-color: transparent
}

.introjs-arrow.left {
	top: 10px
}

.introjs-arrow.left, .introjs-arrow.left-bottom {
	left: -10px;
	border-top-color: transparent;
	border-right-color: #fff;
	border-bottom-color: transparent;
	border-left-color: transparent
}

.introjs-arrow.left-bottom {
	bottom: 10px
}

.introjs-tooltip {
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	position: absolute;
	visibility: visible;
	padding: 10px;
	background-color: #fff;
	min-width: 200px;
	max-width: 300px;
	border-radius: 3px;
	-webkit-box-shadow: 0 1px 10px rgba(0, 0, 0, .4);
	box-shadow: 0 1px 10px rgba(0, 0, 0, .4);
	-webkit-transition: opacity .1s ease-out;
	transition: opacity .1s ease-out
}

.introjs-tooltipbuttons {
	text-align: right;
	white-space: nowrap
}

.introjs-button {
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	position: relative;
	overflow: visible;
	display: inline-block;
	padding: .3em .8em;
	border: 1px solid #d4d4d4;
	margin: 0;
	text-decoration: none;
	text-shadow: 1px 1px 0 #fff;
	font: 11px/normal sans-serif;
	color: #333;
	white-space: nowrap;
	cursor: pointer;
	outline: 0;
	background-color: #ececec;
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#f4f4f4),
		to(#ececec));
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f4f4f4),
		to(#ececec));
	background-image: -webkit-linear-gradient(#f4f4f4, #ececec);
	background-image: linear-gradient(#f4f4f4, #ececec);
	-webkit-background-clip: padding;
	-moz-background-clip: padding;
	-o-background-clip: padding-box;
	border-radius: .2em;
	zoom: 1;
	*display: inline;
	margin-top: 10px
}

.introjs-button:hover {
	border-color: #bcbcbc;
	text-decoration: none;
	-webkit-box-shadow: 0 1px 1px #e3e3e3;
	box-shadow: 0 1px 1px #e3e3e3
}

.introjs-button:active, .introjs-button:focus {
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ececec),
		to(#f4f4f4));
	background-image: -webkit-gradient(linear, left top, left bottom, from(#ececec),
		to(#f4f4f4));
	background-image: -webkit-linear-gradient(#ececec, #f4f4f4);
	background-image: linear-gradient(#ececec, #f4f4f4)
}

.introjs-button::-moz-focus-inner {
	padding: 0;
	border: 0
}

.introjs-skipbutton {
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	margin-right: 5px;
	color: #7a7a7a
}

.introjs-prevbutton {
	border-radius: .2em 0 0 .2em;
	border-right: 0
}

.introjs-prevbutton.introjs-fullbutton {
	border: 1px solid #d4d4d4;
	border-radius: .2em
}

.introjs-nextbutton {
	border-radius: 0 .2em .2em 0
}

.introjs-nextbutton.introjs-fullbutton {
	border-radius: .2em
}

.introjs-disabled, .introjs-disabled:focus, .introjs-disabled:hover {
	color: #9a9a9a;
	border-color: #d4d4d4;
	-webkit-box-shadow: none;
	box-shadow: none;
	cursor: default;
	background-color: #f4f4f4;
	background-image: none;
	text-decoration: none
}

.introjs-hidden {
	display: none
}

.introjs-bullets {
	text-align: center
}

.introjs-bullets ul {
	clear: both;
	margin: 15px auto 0;
	padding: 0;
	display: inline-block
}

.introjs-bullets ul, .introjs-bullets ul li {
	-webkit-box-sizing: content-box;
	box-sizing: content-box
}

.introjs-bullets ul li {
	list-style: none;
	float: left;
	margin: 0 2px
}

.introjs-bullets ul li a {
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	display: block;
	width: 6px;
	height: 6px;
	background: #ccc;
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	text-decoration: none;
	cursor: pointer
}

.introjs-bullets ul li a.active, .introjs-bullets ul li a:hover {
	background: #999
}

.introjs-progress {
	overflow: hidden;
	height: 10px;
	margin: 10px 0 5px;
	border-radius: 4px;
	background-color: #ecf0f1
}

.introjs-progress, .introjs-progressbar {
	-webkit-box-sizing: content-box;
	box-sizing: content-box
}

.introjs-progressbar {
	float: left;
	width: 0;
	height: 100%;
	font-size: 10px;
	line-height: 10px;
	text-align: center;
	background-color: #08c
}

.introjsFloatingElement {
	position: absolute;
	height: 0;
	width: 0;
	left: 50%;
	top: 50%
}

.introjs-fixedTooltip {
	position: fixed
}

.introjs-hint {
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	position: absolute;
	background: transparent;
	width: 20px;
	height: 15px;
	cursor: pointer
}

.introjs-hint:focus {
	border: 0;
	outline: 0
}

.introjs-hidehint {
	display: none
}

.introjs-fixedhint {
	position: fixed
}

.introjs-hint:hover>.introjs-hint-pulse {
	border: 5px solid rgba(60, 60, 60, .57)
}

.introjs-hint-pulse {
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	width: 10px;
	height: 10px;
	border: 5px solid rgba(60, 60, 60, .27);
	border-radius: 30px;
	background-color: hsla(0, 0%, 53%, .24);
	z-index: 10;
	position: absolute;
	-webkit-transition: all .2s ease-out;
	transition: all .2s ease-out
}

.introjs-hint-no-anim .introjs-hint-dot {
	-webkit-animation: none;
	animation: none
}

.introjs-hint-dot {
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	border: 10px solid hsla(0, 0%, 57%, .36);
	background: transparent;
	border-radius: 60px;
	height: 50px;
	width: 50px;
	-webkit-animation: introjspulse 3s ease-out;
	animation: introjspulse 3s ease-out;
	-webkit-animation-iteration-count: infinite;
	animation-iteration-count: infinite;
	position: absolute;
	top: -25px;
	left: -25px;
	z-index: 1;
	opacity: 0
}

body .introjs-bullets, body .introjs-helperNumberLayer, body .introjs-prevbutton
	{
	display: none
}

body .introjs-tooltip {
	border-radius: 8px;
	-webkit-box-shadow: none;
	box-shadow: none;
	padding: 15px;
	max-width: 200px
}

body .introjs-tooltip, body .introjs-tooltip * {
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

body .introjs-tooltiptext {
	text-align: center;
	padding-top: 40px;
	position: relative
}

body .introjs-tooltiptext:before {
	height: 95px;
	width: 95px;
	position: absolute;
	top: -60px;
	left: 50%;
	content: "";
	background:
		url(//assets.lojaskd.com.br/releases/production/dist/images/aleadecoradora.png);
	-webkit-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	transform: translateX(-50%)
}

body .introjs-tooltiptext p {
	font-family: Lato, Arial, Helvetica, sans-serif;
	font-size: 1rem;
	line-height: 1.3;
	margin-bottom: 20px
}

body .introjs-tooltiptext p.title {
	font-family: Montserrat, Roboto, Helvetica, Arial, sans-serif;
	font-size: 1.286rem;
	font-weight: 700;
	color: #ff8a80;
	margin-bottom: 10px
}

body .introjs-button {
	border: 0;
	padding: 0;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	text-shadow: none;
	text-align: center;
	font-family: Roboto, Arial, Helvetica, sans-serif;
	font-size: 12px
}

body .introjs-nextbutton, body .introjs-skipbutton.finished {
	position: absolute;
	bottom: -15px;
	left: 10%;
	height: 30px;
	width: 80%;
	border-radius: 8px;
	font-weight: 700;
	line-height: 30px;
	background: #ff8a80;
	color: #fff
}

body#lkdAreavip .introjs-nextbutton, body .introjs-skipbutton:not (.finished
	){
	position: absolute;
	bottom: -40px;
	left: 0;
	height: 15px;
	width: 100%;
	background: transparent;
	color: #fff;
	text-decoration: underline
}

body#lkdAreavip .introjs-nextbutton {
	border-radius: 0;
	font-weight: 400;
	line-height: 1
}

body#lkdAreavip .introjs-skipbutton {
	position: absolute;
	bottom: -15px;
	left: 10%;
	height: 30px;
	width: 80%;
	border-radius: 8px;
	font-weight: 700;
	line-height: 30px;
	background: #ff8a80;
	color: #fff;
	text-decoration: none
}

body.onboarding-running .produtos-lista-coluna .item-ambiente:first-of-type,
	body.onboarding-running .produtos-lista-coluna .item-produto:first-of-type,
	body.onboarding-running .produtos-lista-coluna .lkd-box-produto:first-of-type
	{
	border: 1px solid #eee
}

body.onboarding-running .produtos-lista-coluna .item-ambiente:first-of-type .extra-info,
	body.onboarding-running .produtos-lista-coluna .item-ambiente:first-of-type .lkd-product-box__wishlist,
	body.onboarding-running .produtos-lista-coluna .item-produto:first-of-type .extra-info,
	body.onboarding-running .produtos-lista-coluna .item-produto:first-of-type .lkd-product-box__wishlist,
	body.onboarding-running .produtos-lista-coluna .lkd-box-produto:first-of-type .extra-info,
	body.onboarding-running .produtos-lista-coluna .lkd-box-produto:first-of-type .lkd-product-box__wishlist
	{
	display: block
}

body.onboarding-running .produtos-lista-coluna .item-ambiente:first-of-type .product-info,
	body.onboarding-running .produtos-lista-coluna .item-produto:first-of-type .product-info,
	body.onboarding-running .produtos-lista-coluna .lkd-box-produto:first-of-type .product-info
	{
	background: #eee
}

body.onboarding-running .produtos-lista-coluna .item-ambiente:first-of-type .desconto-preco,
	body.onboarding-running .produtos-lista-coluna .item-ambiente:first-of-type .esgotado,
	body.onboarding-running .produtos-lista-coluna .item-produto:first-of-type .desconto-preco,
	body.onboarding-running .produtos-lista-coluna .item-produto:first-of-type .esgotado,
	body.onboarding-running .produtos-lista-coluna .lkd-box-produto:first-of-type .desconto-preco,
	body.onboarding-running .produtos-lista-coluna .lkd-box-produto:first-of-type .esgotado
	{
	opacity: 1
}

body.onboarding-running .produtos-lista-coluna .item-ambiente .product-info
	{
	width: 364px
}

.lkd-tooltip {
	display: none;
	position: relative;
	background: #0288d1;
	color: #fff;
	padding: 10px 20px;
	font-size: 1rem;
	border-radius: 6px;
	-webkit-box-shadow: 0 5px 13px rgba(0, 0, 0, .3);
	box-shadow: 0 5px 13px rgba(0, 0, 0, .3);
	max-height: 0;
	opacity: 0;
	margin-top: -30px;
	-webkit-transition: margin-top .3s ease .3s;
	transition: margin-top .3s ease .3s
}

.lkd-tooltip.hide {
	display: none
}

.lkd-tooltip.is-active {
	-webkit-animation: slideDown 3s .3s forwards;
	animation: slideDown 3s .3s forwards;
	margin-top: 10px
}

.lkd-tooltip:before {
	height: 0;
	width: 0;
	position: absolute;
	top: -6px;
	left: 50%;
	content: "";
	border-style: solid;
	border-width: 0 6px 6px;
	border-color: transparent transparent #0288d1;
	-webkit-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	transform: translateX(-50%)
}

.lkd-info-blocks {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-webkit-box-align: stretch;
	-webkit-align-items: stretch;
	-ms-flex-align: stretch;
	align-items: stretch;
	margin: 10px 0;
	position: relative
}

.lkd-info-blocks__item {
	-webkit-box-flex: 1;
	-webkit-flex: 1;
	-ms-flex: 1;
	flex: 1;
	width: 0
}

.lkd-info-blocks__item:not (:last-child ){
	margin-right: 10px
}

.lkd-info-blocks__item-label {
	height: auto;
	width: 100%;
	display: block;
	text-align: center;
	border-radius: 8px;
	border: 1px solid #ebebeb;
	padding: 15px;
	-webkit-transition: border-color .3s ease, background-color .3s ease,
		color .3s ease, -webkit-box-shadow .3s ease;
	transition: border-color .3s ease, background-color .3s ease, color .3s
		ease, -webkit-box-shadow .3s ease;
	transition: border-color .3s ease, background-color .3s ease, box-shadow
		.3s ease, color .3s ease;
	transition: border-color .3s ease, background-color .3s ease, box-shadow
		.3s ease, color .3s ease, -webkit-box-shadow .3s ease;
	color: #424242
}

.lkd-info-blocks__item-label:hover {
	border-color: transparent;
	-webkit-box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
	color: #0288d1;
	cursor: pointer
}

.lkd-info-blocks__item-icon {
	display: block;
	font-size: 25px;
	text-align: center;
	margin-bottom: 10px
}

.lkd-info-blocks__item-content {
	height: auto;
	width: 100%;
	left: 0;
	-webkit-box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
	border-radius: 8px;
	padding: 0 15px;
	opacity: 0;
	max-height: 0;
	overflow: hidden;
	-webkit-transition: all .3s ease;
	transition: all .3s ease;
	margin-top: 5px
}

.lkd-info-blocks__item-content, .lkd-info-blocks__item-content:before {
	display: block;
	position: absolute;
	z-index: 1;
	background: #fff;
	border: 1px solid #f2f2f2
}

.lkd-info-blocks__item-content:before {
	height: 18px;
	width: 18px;
	top: -2px;
	content: "";
	-webkit-box-shadow: 0 5px 13px rgba(0, 0, 0, .3);
	box-shadow: 0 5px 13px rgba(0, 0, 0, .3);
	-webkit-transform: rotate(45deg) translateX(-50%);
	-ms-transform: rotate(45deg) translateX(-50%);
	transform: rotate(45deg) translateX(-50%);
	border-radius: 4px
}

.lkd-info-blocks__item-content:after {
	height: 20px;
	width: 50px;
	position: absolute;
	top: 0;
	content: "";
	display: block;
	background: #fff;
	z-index: 2;
	-webkit-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	transform: translateX(-50%)
}

.lkd-info-blocks__item:first-child .lkd-info-blocks__item-content:after,
	.lkd-info-blocks__item:first-child .lkd-info-blocks__item-content:before
	{
	left: 14%
}

.lkd-info-blocks__item:nth-child(2) .lkd-info-blocks__item-content:after,
	.lkd-info-blocks__item:nth-child(2) .lkd-info-blocks__item-content:before
	{
	left: 49%
}

.lkd-info-blocks__item:nth-child(3) .lkd-info-blocks__item-content:after,
	.lkd-info-blocks__item:nth-child(3) .lkd-info-blocks__item-content:before
	{
	left: 84%
}

.lkd-info-blocks__item.is-active .lkd-info-blocks__item-label {
	background-color: #0288d1;
	border-color: #0288d1;
	color: #fff;
	-webkit-box-shadow: none;
	box-shadow: none
}

.lkd-info-blocks__item.is-active .lkd-info-blocks__item-content {
	opacity: 1;
	max-height: 500px;
	overflow: visible;
	padding: 20px 15px
}

.lkd-button--block {
	display: block;
	width: 100%
}

.lkd-button--small {
	font-size: 12px;
	line-height: 30px
}

.lkd-button-buy {
	width: 100%;
	line-height: 1.3;
	padding: 15px 20px 15px 60px;
	text-align: left;
	position: relative;
	font-family: Montserrat, Roboto, Helvetica, Arial, sans-serif
}

.lkd-button-buy i {
	position: absolute;
	top: 0;
	left: 0;
	padding: 0 20px;
	font-size: 30px;
	line-height: 75px
}

.lkd-button-buy strong {
	font-size: 24px
}

.lkd-button-buy small {
	display: block;
	color: inherit
}

.lkd-button-buy--off {
	padding: 15px 20px;
	text-align: center
}

.lkd-form:after {
	clear: both;
	content: "";
	display: table
}

.lkd-form__fieldset {
	padding: 0 15px;
	margin-bottom: 15px
}

.lkd-form__legend {
	font-size: 1.25rem;
	font-family: Montserrat, Roboto, Helvetica, Arial, sans-serif;
	font-weight: 700;
	margin-bottom: 15px;
	padding: 5px 0 10px;
	border-bottom: 1px solid #ccc;
	display: block;
	width: 100%
}

.lkd-form__legend:not (:first-child ){
	margin-top: 15px
}

.lkd-form__group.has-error .lkd-form__label {
	color: #e53935
}

.lkd-form__group.has-error .lkd-form__input, .lkd-form__group.has-error .lkd-form__select
	{
	border-color: #e53935;
	background-color: #fdf3f3
}

.lkd-form__help {
	display: block;
	font-size: 80%;
	color: #757575;
	margin-top: 2px
}

.lkd-form__label {
	font-size: 1rem;
	text-transform: uppercase;
	display: block;
	margin-bottom: 5px;
	cursor: pointer
}

.lkd-form__label small {
	color: #999;
	text-transform: none
}

.lkd-form__textarea {
	height: auto
}

.lkd-form__button, .lkd-form__button--cancel, .lkd-form__button--link {
	display: block;
	width: 100%
}

.lkd-form__button--cancel, .lkd-form__button--link {
	margin-top: 15px
}

.lkd-form .lkd-form__input-group {
	margin: 0;
	position: relative;
	display: table;
	border-collapse: separate;
	width: 100%
}

.lkd-form .lkd-form__input-group>.lkd-form__button, .lkd-form .lkd-form__input-group>.lkd-form__input
	{
	display: table-cell;
	vertical-align: middle;
	float: left
}

.lkd-form .lkd-form__input-group>.lkd-form__input {
	border-radius: 8px 0 0 8px;
	width: 60%;
	border-right: none
}

.lkd-form .lkd-form__input-group>.lkd-form__button {
	width: 40%;
	border-radius: 0 8px 8px 0;
	border: none
}

.lkd-form .lkd-form__input-group>.lkd-form__button, .lkd-form .lkd-form__input-group>.lkd-form__button:active,
	.lkd-form .lkd-form__input-group>.lkd-form__button:focus {
	-webkit-box-shadow: none;
	box-shadow: none
}

.lkd-input-group {
	position: relative;
	display: table;
	border-collapse: separate;
	border-radius: 8px;
	border: 1px solid #ccc
}

.lkd-input-group__buttons, .lkd-input-group__input {
	display: table-cell;
	position: relative
}

.lkd-input-group__input {
	float: left;
	margin-bottom: 0
}

.lkd-input-group input {
	border-radius: 0;
	border: none;
	line-height: 40px
}

.lkd-input-group input:first-child {
	border-radius: 8px 0 0 8px
}

.lkd-input-group input:last-child {
	border-radius: 0 8px 8px 0
}

.lkd-input-group__buttons {
	font-size: 0;
	white-space: nowrap;
	width: 1%;
	vertical-align: middle
}

.lkd-input-group__buttons:first-child .lkd-input-group__button:not (:first-child
	){
	border-radius: 0
}

.lkd-input-group__buttons:first-child .lkd-input-group__button:last-child
	{
	border-radius: 8px 0 0 8px
}

.lkd-input-group__buttons:last-child .lkd-input-group__button:not (:first-child
	){
	border-radius: 0
}

.lkd-input-group__buttons:last-child .lkd-input-group__button:last-child
	{
	border-radius: 0 8px 8px 0
}

.lkd-floater {
	width: 310px;
	display: block;
	background: #fff
}

.lkd-floater, .lkd-floater__tooltip {
	height: auto;
	-webkit-box-shadow: 0 5px 13px rgba(0, 0, 0, .3);
	box-shadow: 0 5px 13px rgba(0, 0, 0, .3)
}

.lkd-floater__tooltip {
	width: 100px;
	position: absolute;
	top: -55px;
	right: -85px;
	z-index: 2;
	display: inline-block;
	padding: 10px;
	background: #0288d1;
	color: #fff;
	font-size: 10px;
	text-align: center;
	border-radius: 4px;
	opacity: 1;
	-webkit-transition: opacity .3s ease;
	transition: opacity .3s ease;
	cursor: pointer
}

.lkd-floater__tooltip:before {
	height: 0;
	width: 0;
	position: absolute;
	bottom: -6px;
	left: 10px;
	content: "";
	border-style: solid;
	border-width: 6px 6px 0;
	border-color: #0288d1 transparent transparent
}

.lkd-floater__toggle-button {
	height: 30px;
	width: 30px;
	position: absolute;
	top: 5px;
	right: -15px;
	z-index: 1;
	display: table;
	background: #f2f2f2;
	border-radius: 50%;
	border: 0;
	text-align: center;
	-webkit-box-shadow: 1px 2px 3px 0 hsla(0, 0%, 46%, .15);
	box-shadow: 1px 2px 3px 0 hsla(0, 0%, 46%, .15);
	-webkit-transition: top .3s ease, right .3s ease;
	transition: top .3s ease, right .3s ease;
	cursor: pointer
}

.lkd-floater__icon-closed, .lkd-floater__icon-opened {
	font-size: 20px;
	color: #757575;
	vertical-align: middle
}

.lkd-floater__icon-opened {
	display: none
}

.lkd-floater__content {
	display: block;
	padding: 15px 10px
}

.lkd-floater__content-primary {
	opacity: 0;
	-webkit-transition: opacity .3s ease;
	transition: opacity .3s ease
}

.lkd-floater__title {
	font-family: Lato, Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-weight: 400;
	color: #0288d1
}

.lkd-floater__subtitle--obs {
	margin-top: -10px
}

.lkd-floater__subtitle--blue {
	color: #0288d1;
	font-size: 12px
}

.lkd-floater__button {
	width: 100%;
	display: block
}

.lkd-floater__button[type=submit] {
	margin-bottom: 0
}

.lkd-floater__button, .lkd-floater__subtitle, .lkd-floater__title {
	text-align: center;
	margin-bottom: 10px
}

.lkd-floater__form, .lkd-floater__success {
	display: none
}

.lkd-floater__table {
	display: table;
	width: 100%
}

.lkd-floater__table-cell {
	display: table-cell;
	vertical-align: middle;
	width: 50%
}

.lkd-floater__line-or {
	height: auto;
	width: 100%;
	display: block;
	position: relative;
	margin: 10px 0
}

.lkd-floater__line-or:before {
	height: 1px;
	width: 100%;
	position: absolute;
	bottom: 5px;
	content: "";
	background: #f2f2f2;
	z-index: 1
}

.lkd-floater__line-or:after {
	content: "ou";
	display: table;
	padding: 0 5px;
	margin: 0 auto;
	background: #fff;
	position: relative;
	z-index: 2
}

.lkd-floater__facebook-button {
	font-weight: 700;
	padding: 5px;
	display: block;
	width: 100%
}

.lkd-floater__facebook-button i {
	font-size: 18px
}

.lkd-floater #msg_cad_login_facebook, .lkd-floater #msg_ent_login_facebook
	{
	margin-bottom: 10px
}

.lkd-floater #msg_cad_login_facebook.hidden, .lkd-floater #msg_ent_login_facebook.hidden
	{
	display: none
}

.lkd-floater.is-opened .lkd-floater__tooltip {
	opacity: 0
}

.lkd-floater.is-opened .lkd-floater__toggle-button {
	top: -5px;
	right: -10px
}

.lkd-floater.is-opened .lkd-floater__icon-opened {
	display: block
}

.lkd-floater.is-opened .lkd-floater__icon-closed {
	display: none
}

.lkd-floater.is-opened .lkd-floater__content-primary {
	opacity: 1
}

.lkd-floater.has-form-opened .lkd-floater__content-primary {
	display: none
}

.lkd-floater.has-form-opened .lkd-floater__form.is-opened, .lkd-floater.is-finished .lkd-floater__success.is-opened
	{
	display: block
}

.lkd-floater.is-finished .lkd-floater__form, .lkd-floater.is-finished .lkd-floater__form.is-opened
	{
	display: none
}

.lkd-floater.has-form-opened.is-finished {
	-webkit-transition-delay: 9.5s;
	transition-delay: 9.5s
}

.lkd-floater.has-form-opened.is-finished:after {
	height: 6px;
	width: 100%;
	position: absolute;
	bottom: 0;
	left: 0;
	content: "";
	background: #bdbdbd;
	opacity: .6;
	-webkit-animation: floaterTimer 9.5s;
	animation: floaterTimer 9.5s;
	border-radius: 0 0 4px 4px
}

.lkd-floater, .lkd-floater *, .lkd-floater :after, .lkd-floater :before
	{
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.lkd-description:after {
	clear: both;
	content: "";
	display: table
}

.lkd-description, .lkd-description * {
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.lkd-description__board, .lkd-description__board-col,
	.lkd-description__photos {
	height: auto;
	display: block;
	float: left
}

.lkd-description__photos {
	width: 400px
}

.lkd-description__photos-large {
	min-height: 400px;
	margin-bottom: 20px
}

.lkd-description__photos-large .zoomPad {
	z-index: 21
}

.lkd-description__photos-min .swiper-button-next,
	.lkd-description__photos-min .swiper-button-prev {
	background: #fff;
	color: #757575;
	opacity: .7;
	-webkit-box-shadow: 1px 2px 3px 0 hsla(0, 0%, 46%, .15);
	box-shadow: 1px 2px 3px 0 hsla(0, 0%, 46%, .15)
}

.lkd-description__photos-min .swiper-button-next:hover,
	.lkd-description__photos-min .swiper-button-prev:hover {
	opacity: 1
}

.lkd-description__photos-min .swiper-slide {
	border: 1px solid #f2f2f2;
	padding: 2px;
	max-width: 100px
}

.lkd-description__photos-min .swiper-slide.selected {
	border-color: #ffca28
}

.lkd-description__board {
	width: 600px;
	padding-left: 20px
}

.lkd-description__board-row {
	width: 100%;
	display: block;
	margin-bottom: 20px;
	position: relative
}

.lkd-description__board-row:after {
	clear: both;
	content: "";
	display: table
}

.lkd-description__board-col--left {
	width: 365px;
	float: left;
	padding-right: 20px
}

.lkd-description__board-col--right {
	width: 215px;
	float: left
}

.lkd-description__line {
	display: block;
	padding: 20px 0;
	border-top: 1px solid #ebebeb
}

.lkd-description__variants {
	display: block;
	width: 100%
}

.lkd-description__button {
	height: 40px;
	width: 100%;
	position: relative;
	text-align: center;
	display: block;
	color: #424242
}

.lkd-description__button, .lkd-description__button:focus,
	.lkd-description__button:hover {
	background: #fff;
	-webkit-box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
	border-radius: 50px
}

.lkd-description__button:active, .lkd-description__button:focus,
	.lkd-description__button:hover {
	color: #0288d1
}

.lkd-description__button.is-active {
	color: #fff;
	background-color: #0288d1
}

.lkd-description__button.is-active:focus, .lkd-description__button.is-active:hover
	{
	color: #f7f7f7;
	background-color: #0278b8
}

.lkd-description__button.is-active:active {
	background-color: #02679e
}

.lkd-description__button-icon {
	font-size: 20px;
	vertical-align: sub
}

.lkd-description__button--ghost {
	height: 40px;
	width: 100%;
	position: relative;
	text-align: center;
	display: block;
	font-family: Montserrat, Roboto, Helvetica, Arial, sans-serif
}

.lkd-description__view-description {
	text-decoration: underline;
	display: block;
	text-align: center;
	margin-bottom: 20px
}

.lkd-description__share {
	height: auto;
	width: 100%;
	position: absolute;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	background: #fff;
	-webkit-box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
	border-radius: 8px;
	padding: 20px 10px;
	z-index: -1;
	opacity: 0;
	top: 0;
	-webkit-transition: opacity .3s ease, top .3s ease;
	transition: opacity .3s ease, top .3s ease;
	border: 1px solid #f2f2f2
}

.lkd-description__share.is-active {
	z-index: 21;
	opacity: 1;
	top: 48px
}

.lkd-description__share:before {
	height: 18px;
	width: 18px;
	position: absolute;
	top: -9px;
	left: 30px;
	content: "";
	display: block;
	background: #fff;
	-webkit-box-shadow: 0 5px 13px rgba(0, 0, 0, .3);
	box-shadow: 0 5px 13px rgba(0, 0, 0, .3);
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
	z-index: 1;
	border: 1px solid #f2f2f2;
	border-radius: 4px
}

.lkd-description__share:after {
	height: 20px;
	width: 50px;
	position: absolute;
	top: 0;
	left: 10px;
	content: "";
	display: block;
	background: #fff;
	z-index: 2
}

.lkd-description__share-item {
	padding: 0 10px;
	position: relative;
	color: #0288d1
}

.lkd-description__share-item:not (:last-child ):after {
	content: "";
	height: 22px;
	width: 1px;
	position: absolute;
	top: 0;
	right: 0;
	display: block;
	background: #ccc
}

.lkd-description__share-item i {
	font-size: 20px
}

.lkd-description__product-title {
	width: 100%;
	display: block
}

.lkd-description__product-title h1 {
	font-size: 20px;
	font-weight: 500
}

.lkd-description__product-prices {
	margin: 20px 0
}

.lkd-description__product-prices p {
	margin-bottom: 3px
}

.lkd-description__product-prices>.lkd-tooltip {
	position: absolute;
	left: 10px
}

.lkd-description .box-comprar-flutuante .melhor-forma-valor-parcela,
	.lkd-description .box-comprar-flutuante .preco-qtd-parcela,
	.lkd-description__product-prices .color,
	.lkd-description__product-prices .melhor-forma-valor-parcela {
	color: #0288d1
}

.lkd-description .colors-carousel, .lkd-description .owl-carousel-cores,
	.lkd-description .variants {
	float: none;
	clear: both;
	height: auto
}

.lkd-description .product-buy {
	position: relative;
	bottom: inherit
}

.lkd-description .selo-produto {
	margin-left: 0;
	margin-right: 10px
}

.lkd-description .conteudo-flutuante .lkd-product-box__wishlist,
	.lkd-description__board .lkd-product-box__wishlist {
	display: inline-block;
	width: auto !important;
	min-width: 100%;
	float: right;
	text-align: center;
	line-height: 30px;
	-webkit-box-shadow: 0 0 10px rgba(0, 0, 0, .1);
	box-shadow: 0 0 10px rgba(0, 0, 0, .1);
	margin: 0
}

.lkd-description .conteudo-flutuante .lkd-product-box__wishlist:after,
	.lkd-description__board .lkd-product-box__wishlist:after {
	display: inline-block;
	font-size: 1em
}

.lkd-description .conteudo-flutuante .lkd-product-box__wishlist {
	margin-top: 15px
}

.lkd-description #itens-cartao-credito {
	max-width: 100%
}

.lkd-description .parcelas-block {
	width: 50%
}

.lkd-description .parcelas-block:not (:last-child ){
	margin-right: 0;
	padding-right: 15px
}

.lkd-description .parcelas-block li:not (:last-child ){
	margin-bottom: 15px
}

.lkd-description .parcelas-block.bloco1 ul li:first-child {
	font-weight: 700
}

.lkd-description .box-infografico .ui-tabs .ui-tabs-nav {
	height: 43px
}

[data-customer-navbar] .lkd-floater.is-animated:not (.has-form-opened ),
	[data-customer-navbar] .lkd-floater.is-opened:not (.has-form-opened ),
	[data-customer-navbar]:hover .lkd-floater:not (.has-form-opened ){
	top: 50px;
	opacity: 1;
	max-height: 500px;
	overflow: visible;
	border: 1px solid #f2f2f2
}

[data-customer-navbar] .lkd-floater.is-animated:not (.has-form-opened ) .lkd-floater__content-primary,
	[data-customer-navbar] .lkd-floater.is-opened:not (.has-form-opened ) .lkd-floater__content-primary,
	[data-customer-navbar]:hover .lkd-floater:not (.has-form-opened ) .lkd-floater__content-primary
	{
	opacity: 1
}

[data-customer-navbar] .lkd-floater.is-animated:not (.has-form-opened ) .lkd-floater__toggle-button[data-floater-remove-animation]
	{
	display: block;
	top: -15px
}

[data-customer-navbar] .lkd-floater.has-form-opened {
	position: fixed;
	top: 50%;
	left: 50%;
	-webkit-transform: translateX(-50%) translateY(-50%);
	-ms-transform: translateX(-50%) translateY(-50%);
	transform: translateX(-50%) translateY(-50%);
	width: 360px;
	opacity: 1;
	max-height: 500px;
	overflow: visible;
	z-index: 2001
}

[data-customer-navbar] .lkd-floater.has-form-opened .lkd-floater__toggle-button
	{
	display: block
}

[data-customer-navbar] .lkd-floater.has-form-opened .lkd-floater__content
	{
	padding: 30px
}

[data-customer-navbar] .lkd-floater.has-form-opened.is-finished {
	top: -50%
}

.lkd-floater--login-signup {
	position: absolute;
	top: 80px;
	left: 50%;
	width: 240px;
	border-radius: 6px;
	-webkit-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	transform: translateX(-50%);
	-webkit-transition: top .3s ease, opacity .3s ease, max-height .3s ease;
	transition: top .3s ease, opacity .3s ease, max-height .3s ease;
	max-height: 0;
	overflow: hidden;
	opacity: 0
}

.lkd-floater:not (.has-form-opened ):before {
	height: 15px;
	width: 15px;
	position: absolute;
	top: -7px;
	left: 50%;
	content: "";
	display: block;
	background: #fff;
	-webkit-box-shadow: 0 5px 13px rgba(0, 0, 0, .3);
	box-shadow: 0 5px 13px rgba(0, 0, 0, .3);
	-webkit-transform: translateX(-50%) rotate(45deg);
	-ms-transform: translateX(-50%) rotate(45deg);
	transform: translateX(-50%) rotate(45deg);
	z-index: 1;
	border: 1px solid #f2f2f2
}

.lkd-floater:not (.has-form-opened ):after {
	height: 20px;
	width: 50px;
	position: absolute;
	top: 0;
	left: 50%;
	content: "";
	display: block;
	background: #fff;
	-webkit-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	transform: translateX(-50%);
	z-index: 2
}

.lkd-floater__form .lkd-floater__title {
	font-size: 20px;
	margin-bottom: 20px
}

.lkd-floater__form .lkd-floater__subtitle {
	font-size: 16px
}

.lkd-floater__form .lkd-floater__subtitle--obs {
	margin-top: -20px;
	margin-bottom: 20px
}

.lkd-floater__content-primary .lkd-floater__button {
	line-height: 32px
}

.lkd-floater__facebook-button i {
	height: 20px;
	width: 10px;
	display: inline-block;
	margin-right: 10px;
	vertical-align: sub;
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='34' viewBox='0 0 430.113 430.114'%3E%3Cpath d='M158.08 83.3v59.218h-43.384v72.412h43.385v215.183h89.123V214.936h59.805s5.6-34.72 8.316-72.685H247.54V92.74c0-7.4 9.717-17.354 19.32-17.354h48.558V0h-66.02c-93.52-.004-91.317 72.48-91.317 83.3z' fill='%23fff'/%3E%3C/svg%3E");
	background-repeat: no-repeat;
	background-position: 50%;
	background-size: 18px
}

.lkd-floater__toggle-button {
	display: none
}

.lkd-floater .has-error__message {
	font-size: 11px
}

.lkd-overlay {
	height: 100%;
	width: 100%;
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	display: block;
	background: #000;
	opacity: .7;
	z-index: 2000
}

.lkd-floater.is-animated:not (.has-form-opened ){
	-webkit-animation: floaterLoginAttention 6s .5s forwards;
	animation: floaterLoginAttention 6s .5s forwards
}

@font-face {
	font-family: Roboto;
	font-style: normal;
	font-weight: 300;
	src: local("Roboto Light"), local("Roboto-Light"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/roboto-light-webfont.woff2)
		format("woff2"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/roboto-light-webfont.woff)
		format("woff")
}

@font-face {
	font-family: Roboto;
	font-style: normal;
	font-weight: 400;
	src: local("Roboto Regular"), local("Roboto-Regular"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/roboto-regular-webfont.woff2)
		format("woff2"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/roboto-regular-webfont.woff)
		format("woff")
}

@font-face {
	font-family: Roboto;
	font-style: normal;
	font-weight: 500;
	src: local("Roboto Medium"), local("Roboto-Medium"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/roboto-medium-webfont.woff2)
		format("woff2"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/roboto-medium-webfont.woff)
		format("woff")
}

@font-face {
	font-family: Roboto;
	font-style: normal;
	font-weight: 700;
	src: local("Roboto Bold"), local("Roboto-Bold"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/roboto-bold-webfont.woff2)
		format("woff2"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/roboto-bold-webfont.woff)
		format("woff")
}

@font-face {
	font-family: Montserrat;
	font-style: normal;
	font-weight: 300;
	src: local("Montserrat Light"), local("Montserrat-Light"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/montserrat-light-webfont.woff2)
		format("woff2"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/montserrat-light-webfont.woff)
		format("woff")
}

@font-face {
	font-family: Montserrat;
	font-style: normal;
	font-weight: 400;
	src: local("Montserrat Regular"), local("Montserrat-Regular"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/montserrat-regular-webfont.woff2)
		format("woff2"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/montserrat-regular-webfont.woff)
		format("woff")
}

@font-face {
	font-family: Montserrat;
	font-style: normal;
	font-weight: 500;
	src: local("Montserrat Medium"), local("Montserrat-Medium"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/montserrat-medium-webfont.woff2)
		format("woff2"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/montserrat-medium-webfont.woff)
		format("woff")
}

@font-face {
	font-family: Montserrat;
	font-style: normal;
	font-weight: 700;
	src: local("Montserrat Bold"), local("Montserrat-Bold"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/montserrat-bold-webfont.woff2)
		format("woff2"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/montserrat-bold-webfont.woff)
		format("woff")
}

@font-face {
	font-family: Lato;
	font-style: normal;
	font-weight: 300;
	src: local("Lato Light"), local("Lato-Light"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/lato-light-webfont.woff2)
		format("woff2"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/lato-light-webfont.woff)
		format("woff")
}

@font-face {
	font-family: Lato;
	font-style: normal;
	font-weight: 400;
	src: local("Lato Regular"), local("Lato-Regular"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/lato-regular-webfont.woff2)
		format("woff2"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/lato-regular-webfont.woff)
		format("woff")
}

@font-face {
	font-family: Lato;
	font-style: normal;
	font-weight: 700;
	src: local("Lato Bold"), local("Lato-Bold"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/lato-bold-webfont.woff2)
		format("woff2"),
		url(//assets.lojaskd.com.br/releases/production/dist/fonts/lato-bold-webfont.woff)
		format("woff")
}

@font-face {
	font-family: FontAwesome;
	src:
		url(//netdna.bootstrapcdn.com/font-awesome/4.7.0/fonts/fontawesome-webfont.eot?v=4.7.0);
	src:
		url(//netdna.bootstrapcdn.com/font-awesome/4.7.0/fonts/fontawesome-webfont.eot#iefix&v=4.7.0)
		format("embedded-opentype"),
		url(//netdna.bootstrapcdn.com/font-awesome/4.7.0/fonts/fontawesome-webfont.woff2?v=4.7.0)
		format("woff2"),
		url(//netdna.bootstrapcdn.com/font-awesome/4.7.0/fonts/fontawesome-webfont.woff?v=4.7.0)
		format("woff"),
		url(//netdna.bootstrapcdn.com/font-awesome/4.7.0/fonts/fontawesome-webfont.ttf?v=4.7.0)
		format("truetype"),
		url(//netdna.bootstrapcdn.com/font-awesome/4.7.0/fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular)
		format("svg");
	font-weight: 400;
	font-style: normal
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
	.carousel-kits-next {
		float: none
	}
}

@media screen and (min-width:740px) {
	body#home .caixa:after, body#home .englobafooter:after, body#home .wrapper:after
		{
		clear: both;
		content: "";
		display: table
	}
	body#home .content-boxed .lkd-product-box {
		max-width: 220px;
		height: 450px !important
	}
	body#home, body#lkdAreavip, body#login {
		background-color: #f2f2f2
	}
	body#lkdAreavip.carrinho {
		background-color: #fff
	}
	.content-boxed {
		margin: 15px auto;
		-webkit-box-sizing: border-box;
		box-sizing: border-box
	}
	.content-boxed#content, .content-boxed.container, .content-boxed.lkd-container
		{
		padding-left: 0;
		padding-right: 0
	}
	.content-boxed:after, .content-boxed__inner:after {
		clear: both;
		content: "";
		display: table
	}
	.content-boxed *, .content-boxed :after, .content-boxed :before {
		-webkit-box-sizing: inherit;
		box-sizing: inherit
	}
	.content-boxed.limit {
		background-color: transparent
	}
	.content-boxed .caixa {
		background-color: #fff
	}
	.content-boxed .one, .content-boxed .tre, .content-boxed .two {
		width: 33.33333%
	}
	.content-boxed .bannersLateralFretinho {
		width: 100%;
		padding: 15px 15px 0
	}
	.content-boxed .menu-lateral .bloco-menu-lateral {
		margin-bottom: 0;
		padding-bottom: 0
	}
	.content-boxed .bannersLateralFretinho img, .content-boxed .categoriaVitrine img,
		.content-boxed .one img, .content-boxed .tre img, .content-boxed .two img
		{
		width: 100%;
		max-width: 100%;
		height: auto;
		display: block
	}
	.content-boxed .boxambifour .one, .content-boxed .boxambifour .tre,
		.content-boxed .boxambifour .two {
		width: 25%
	}
	.content-boxed .categoriaVitrine>li {
		width: 25%;
		padding: 10px;
		margin: 0
	}
	.content-boxed .boxambitre, .content-boxed .categoriaVitrine {
		margin: 0;
		width: 100%
	}
	#lkdAreavip .areavip .lkd-alert {
		padding-left: 0;
		padding-right: 0
	}
	#lkdAreavip #conteudo .areavipMenor, #lkdAreavip .areavip .rastreamento_pedido
		{
		width: 100%;
		margin: 0
	}
	#lkdAreavip #lateral, #lkdAreavip .areavip, .content-boxed .menu-lateral,
		.content-boxed__inner {
		padding: 15px;
		background-color: #fff;
		border-radius: 8px
	}
	#lkdAreavip #lateral, .content-boxed .menu-lateral {
		float: left;
		width: 19%;
		margin: 0
	}
	#lkdAreavip .areavip, .content-boxed .conteudo {
		float: right;
		width: 80%;
		margin: 0
	}
	#lkdAreavip #lateral {
		padding: 0 10px 5px;
		width: 14%
	}
	#lkdAreavip .areavip {
		width: 85%
	}
	#lkdAreavip .areavip .lkd-product-box {
		max-width: 29.5%;
		height: 470px !important
	}
}

@media ( max-width :1000px) {
	.topomaster {
		position: fixed;
		bottom: 20px;
		right: 0
	}
}

@
-moz-document url-prefix (){ .
	outOfStock {background-position: 0 -2033px !important
}

}
@
-moz-document url-prefix (){ .ambient .boxambi .pricebox .pricekit
	span.auxbtn{padding-left:8px
	
}

}
@
-webkit-keyframes slideLeft { 0%{
	opacity: 0;
	right: -60px
}

20%{
opacity
:
0;right
:
-60px
}
80%{
opacity
:
0;right
:
-15px
}
to {
	right: 14px;
	opacity: 1
}

}
@
-webkit-keyframes swiper-preloader-spin {
	to {-webkit-transform: rotate(1turn)
}

}
@
keyframes swiper-preloader-spin {
	to {-webkit-transform: rotate(1turn);
	transform: rotate(1turn)
}

}
@
-webkit-keyframes slideDown { 0%{
	opacity: 0;
	max-height: 0
}

30%{
opacity
:
1
}
to {
	opacity: 1;
	max-height: 500px
}

}
@
keyframes slideDown { 0%{
	opacity: 0;
	max-height: 0
}

30%{
opacity
:
1
}
to {
	opacity: 1;
	max-height: 500px
}

}
@
keyframes slideLeft { 0%{
	opacity: 0;
	-webkit-transform: translateX(100%);
	transform: translateX(100%)
}

30%{
opacity
:
1
}
to {
	opacity: 1;
	-webkit-transform: translateX(0);
	transform: translateX(0)
}

}
@
-webkit-keyframes fade { 0%{
	opacity: 0
}

to {
	opacity: 1
}

}
@
keyframes fade { 0%{
	opacity: 0
}

to {
	opacity: 1
}

}
@
-webkit-keyframes introjspulse { 0%{
	-webkit-transform: scale(0);
	opacity: 0
}

25%{
-webkit-transform
:scale(0)
;opacity
:
.1
}
50%{
-webkit-transform
:scale
(
.1
);opacity
:
.3
}
75%{
-webkit-transform
:scale
(
.5
);opacity
:
.5
}
to {
	-webkit-transform: scale(1);
	opacity: 0
}

}
@
keyframes introjspulse { 0%{
	-webkit-transform: scale(0);
	transform: scale(0);
	opacity: 0
}

25%{
-webkit-transform
:scale(0)
;transform
:scale(0)
;opacity
:
.1
}
50%{
-webkit-transform
:scale
(
.1
);transform
:scale
(
.1
);opacity
:
.3
}
75%{
-webkit-transform
:scale
(
.5
);transform
:scale
(
.5
);opacity
:
.5
}
to {
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 0
}

}
@
-webkit-keyframes floaterTimer { 0%{
	width: 100%
}

to {
	width: 0
}

}
@
keyframes floaterTimer { 0%{
	width: 100%
}

to {
	width: 0
}

}
@
-webkit-keyframes floaterLoginAttention { 0%,20%,60%,80%{
	margin-top: 0
}

8%,16%,68%,76%{
margin-top
:
20px
}
12%,72%{
margin-top
:
15px
}
}
@
keyframes floaterLoginAttention { 0%,20%,60%,80%{
	margin-top: 0
}
8%,16%,68%,76%{
margin-top
:
20px
}
12%,72%{
margin-top
:
15px
}
}
</style>
<script type="text/javascript"
	src="//assets.lojaskd.com.br/releases/production/dist/javascripts/jquery.min.js?v=29092017043322"> </script>
<script type="text/javascript"> var base_url = "https://www.lojaskd.com.br/";</script>
<script> 
(function (i, s, o, g, r, a, m) {
i['GoogleAnalyticsObject'] = r;
i[r] = i[r] || function () {
(i[r].q = i[r].q || []).push(arguments)
}, i[r].l = 1 * new Date();
a = s.createElement(o), m = s.getElementsByTagName(o)[0];
a.async = 0;
a.src = g;
m.parentNode.insertBefore(a, m)
})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
ga('create', 'UA-8194194-1', {'siteSpeedSampleRate': 10});
ga('create', 'UA-103812090-1', 'auto', {'name': 'newTracker2'}); // new version mobile and desktop
ga('require', 'displayfeatures');
ga('send', 'pageview');
ga('newTracker2.send', 'pageview');</script>
<script type="text/javascript"> 
(function () {
var nvg = document.createElement('script');
nvg.id = "navegg";
nvg.type = 'text/javascript';
nvg.async = true;
nvg.src = document.location.protocol + '//d1070b8a575b8m.cloudfront.net/tm13684.js';
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(nvg, s);
})();
function navegg_callback() {
try {
nvg_income = ltgc('income'); // Classe Social //
nvg_marital = ltgc('marital'); // Estado Civil //
nvg_gender = ltgc('gender'); // Genero //
nvg_age = ltgc('age'); // Faixa etaria //
nvg_education = ltgc('education'); // Instrucao //
}
catch (err) {
nvg_income = '';
nvg_marital = '';
nvg_gender = '';
nvg_age = '';
nvg_education = '';
}
try {
ga('set', 'dimension1', nvg_age);
ga('set', 'dimension2', nvg_gender);
ga('set', 'dimension3', nvg_education);
ga('set', 'dimension4', nvg_income);
ga('set', 'dimension5', nvg_marital);
} catch (err) {
}
}
var _MOSTRA_SELO_VITRINE_ = 'true';</script>
<script src='//cdn.zarget.com/182217/489637.js'> </script>
<script> 
(function (w, d, s, l, i) {
w[l] = w[l] || [];
w[l].push({
'gtm.start': new Date().getTime(), event: 'gtm.js'
});
var f = d.getElementsByTagName(s)[0],
j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
j.async = true;
j.src =
'//www.googletagmanager.com/gtm.js?id=' + i + dl;
f.parentNode.insertBefore(j, f);
})(window, document, 'script', 'dataLayer', "GTM-D5WF");</script>
</head>
<body id="home">
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-D5WF"
			height="0" width="0" style="display: none; visibility: hidden">
		</iframe>
	</noscript>
	<a href="#start-of-content" tabindex="1" class="kr-accessibility-aid">
		Ir para o conteúdo</a>
	<div itemscope itemtype="https://schema.org/WebSite" class="hidden">
		<meta itemprop="url" content="https://www.lojaskd.com.br/" />
		<form itemprop="potentialAction" itemscope
			itemtype="https://schema.org/SearchAction">
			<meta itemprop="target"
				content="https://www.lojaskd.com.br/busca/{search_term_string}" />
			<input itemprop="query-input" type="text" name="search_term_string"
				required /> <input type="submit">
		</form>
	</div>
	<div id="fb-root"></div>
	<header id="header" class="lkd-header lkd-header__flex"
		data-stickyheader>
		<nav class="lkd-navbar lkd-navbar--top">
			<div class="lkd-container">
				<ul class="lkd-nav lkd-nav--left">
					<li class="lkd-nav__item"><i
						class="lkd-icon lkd-icon--location"> </i> Qual o destino do seu
						móvel?<a href="#" class="lkd-nav__link"
						onclick="trackEvent(['Topo','Barra topo','Alterar Região']);"
						data-change-region> <strong data-regionalism-local>
								Buscando sua região...</strong>
					</a></li>
				</ul>
				<ul class="lkd-nav lkd-nav--right">
					<li class="lkd-nav__item"><a
						href="https://www.lojaskd.com.br/sobre" title="Sobre a LojasKD"
						class="lkd-nav__link"
						onclick="trackEvent(['Topo','Barra topo','Quem somos']);">
							Quem somos</a></li>
					<li class="lkd-nav__item lkd-nav__item--dropdown"><a
						href="https://www.lojaskd.com.br/atendimento"
						title="Central de Atendimento"
						onclick="trackEvent(['Topo','Barra topo','Atendimento']);"
						class="lkd-nav__link"> Atendimento</a></li>
					<li class="lkd-nav__item"><a
						href="/blog?utm_source=lojaskd&amp;utm_medium=loja"
						target="_blank" title="Blog de decoração" class="lkd-nav__link"
						onclick="trackEvent(['Topo','Barra topo','Blog de decoração']);">
							Blog de decoração</a></li>
				</ul>
			</div>
		</nav>
		<div class="lkd-header__inner">
			<div class="lkd-container">
				<div class="lkd-header__logo">
					<a href="https://www.lojaskd.com.br/"
						title="LojasKD.com.br - Procurou móveis, encontrou aqui!"
						class="logo logo-svg"
						onclick="trackEvent(['Topo','Logotipo','Logotipo']);"> <img
						src="//assets.lojaskd.com.br/releases/production/dist/images/logo-lojaskd-moveis.jpg"
						alt="LojasKD.com.br - Procurou móveis, encontrou aqui!"
						width="210">
					</a>
				</div>
				<form action="pesquisa" target="_top" method="get"
					class="lkd-search-form lkd-header__search">
					<label class="kr-visually-hidden" for="searchFormHeader">
						Encontre os móveis para sua decoração</label> <input type="text"
						name="pesquisa" id="searchFormHeader"
						class="lkd-search-form__input"
						placeholder="Encontre os móveis para sua decoração">
					<button class="lkd-search-form__icon-button" type="submit"
						role="button">
						<span class="kr-visually-hidden"> Botão para enviar o
							formulário busca de produtos</span> <i
							class="lkd-icon lkd-icon--search"> </i>
					</button>
				</form>
				<div class="lkd-customer-navbar is-loading" data-customer-navbar>
					<span class="lkd-customer-navbar__button" role="button"> <span
						class="hidden" data-logged="true"> <span data-user-name>
						</span> Meus pedidos <i class="lkd-icon lkd-icon--chevron-down"> </i>
					</span> <span class="hidden" data-logged="false"> Olá, faça seu <a
							href="https://www.lojaskd.com.br/login"
							data-floater-form="#floater_form_login"
							onclick="trackEvent(['Topo','Área do Cliente','Login']);">
								login</a> ou <a href="https://www.lojaskd.com.br/login"
							data-floater-form="#floater_form_signup"
							onclick="trackEvent(['Topo','Área do Cliente','Cadastro']);">
								cadastre-se</a> :)
					</span>
					</span>
					<ul class="lkd-dropdown">
						<li class="lkd-dropdown__item"><a
							href="https://www.lojaskd.com.br/areavip/"
							class="lkd-dropdown__link"
							onclick="trackEvent(['Topo','Área do Cliente','Acompanhar Pedido']);">
								Acompanhar Pedido</a></li>
						<li class="lkd-dropdown__item"><a href="javascript:void(0)"
							onclick="openPopChat('https://fs24.formsite.com/lojaskd/assis/', 430, 640);trackEvent(['Topo','Área do Cliente','Assistência Técnica']);"
							class="lkd-dropdown__link"> Assistência Técnica</a></li>
						<li class="lkd-dropdown__item"><a
							href="https://www.lojaskd.com.br/areavip/informacoes?acao=alterar_cadastro"
							class="lkd-dropdown__link"
							onclick="trackEvent(['Topo','Área do Cliente','Alterar Dados']);">
								Alterar Dados</a></li>
						<li class="lkd-dropdown__item"><a href="desejo"
							class="lkd-dropdown__link"
							onclick="trackEvent(['Topo','Área do Cliente','Lista de Desejos']);">
								Lista de Desejos</a></li>
						<li class="lkd-dropdown__footer"><a
							href="https://www.lojaskd.com.br/sair" class="lkd-dropdown__link"
							onclick="trackEvent(['Topo','Área do Cliente','Sair']);"> <i
								class="lkd-icon lkd-icon--power"> </i> Sair
						</a></li>
					</ul>
				</div>
				<div class="lkd-header__icons">
					<a href="desejo"
						onclick="trackEvent(['Topo','Lista de desejos','Lista de desejos']);"
						class="lkd-badge" data-noty-count="0" data-wishlist-count> <span
						class="kr-visually-hidden"> Ir para lista de desejos</span> <i
						class="lkd-header__icon lkd-icon lkd-icon--heart"> </i>
					</a> <a href="carrinho"
						onclick="trackEvent(['Topo','Carrinho','Carrinho']);"
						class="lkd-badge" data-noty-count="0" data-cart-count> <span
						class="kr-visually-hidden"> Ir para o carrinho de compras</span> <i
						class="lkd-header__icon lkd-icon lkd-icon--cart"> </i>
					</a>
				</div>
			</div>
		</div>
		<nav class="lkd-navbar lkd-navbar--primary">
			<ul class="lkd-nav">
				<li
					class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown ">
					<a href="https://www.lojaskd.com.br/moveis/quarto/vitrine/"
					title="Quarto" class="lkd-nav__link"
					onclick="trackEvent(['Topo','Quarto','Quarto']);"> <span>
							Quarto <i class="lkd-icon lkd-icon--chevron-down"> </i>
					</span>
				</a>
					<div class="lkd-dropdown lkd-dropdown--banners">
						<div class="lkd-container">
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/modulados/quarto/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto','Móveis']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/2b19e190-c136-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/ambientes-decorados/quarto/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto','Ambientes']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/66d5a390-bb00-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/moveis/quarto/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto','Modulados']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/496ad0f0-bb00-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li
					class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown ">
					<a href="https://www.lojaskd.com.br/moveis/quarto-do-bebe/vitrine/"
					title="Quarto do Bebê" class="lkd-nav__link"
					onclick="trackEvent(['Topo','Quarto do Bebê','Quarto do Bebê']);">
						<span> Quarto do Bebê <i
							class="lkd-icon lkd-icon--chevron-down lkd-nav__icon--position">
						</i>
					</span>
				</a>
					<div class="lkd-dropdown lkd-dropdown--banners">
						<div class="lkd-container">
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/modulados/quarto-do-bebe/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto do Bebe','Móveis']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/372c8c80-c136-11e6-842e-1dee3bed14f1.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a
									href="https://www.lojaskd.com.br/ambientes-decorados/quarto-do-bebe/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto do Bebe','Ambientes']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/c50fa5f0-bb00-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/moveis/quarto-do-bebe/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto do Bebe','Modulados']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/ab6b0310-bb00-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li
					class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown ">
					<a
					href="https://www.lojaskd.com.br/moveis/quarto-infantil/vitrine/"
					title="Quarto Infantil" class="lkd-nav__link"
					onclick="trackEvent(['Topo','Quarto Infantil','Quarto Infantil']);">
						<span> Quarto Infantil <i
							class="lkd-icon lkd-icon--chevron-down lkd-nav__icon--position">
						</i>
					</span>
				</a>
					<div class="lkd-dropdown lkd-dropdown--banners">
						<div class="lkd-container">
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/modulados/quarto-infantil/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto Infatil','Móveis']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/5a1502e0-c136-11e6-842e-1dee3bed14f1.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a
									href="https://www.lojaskd.com.br/ambientes-decorados/quarto-infantil/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto Infatil','Ambientes']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/4674f410-bb01-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/moveis/quarto-infantil/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto Infatil','Modulados']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/0cb52ba0-bb01-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li
					class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown ">
					<a href="https://www.lojaskd.com.br/moveis/quarto-juvenil/vitrine/"
					title="Quarto Juvenil" class="lkd-nav__link"
					onclick="trackEvent(['Topo','Quarto Juvenil','Quarto Juvenil']);">
						<span> Quarto Juvenil <i
							class="lkd-icon lkd-icon--chevron-down lkd-nav__icon--position">
						</i>
					</span>
				</a>
					<div class="lkd-dropdown lkd-dropdown--banners">
						<div class="lkd-container">
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/modulados/quarto-juvenil/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto Juvenil','Móveis']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/664a02e0-c136-11e6-842e-1dee3bed14f1.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a
									href="https://www.lojaskd.com.br/ambientes-decorados/quarto-juvenil/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto Juvenil','Ambientes']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/a8bfead0-bb01-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/moveis/quarto-juvenil/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Quarto Juvenil','Modulados']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/8cf3ad00-bb01-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li
					class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown ">
					<a href="https://www.lojaskd.com.br/moveis/sala-de-estar/vitrine/"
					title="Sala de Estar" class="lkd-nav__link"
					onclick="trackEvent(['Topo','Sala de Estar','Sala de Estar']);">
						<span> Sala de Estar <i
							class="lkd-icon lkd-icon--chevron-down lkd-nav__icon--position">
						</i>
					</span>
				</a>
					<div class="lkd-dropdown lkd-dropdown--banners">
						<div class="lkd-container">
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/modulados/sala-de-estar/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Sala de Estar','Móveis']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/71fc6560-c136-11e6-842e-1dee3bed14f1.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a
									href="https://www.lojaskd.com.br/ambientes-decorados/sala-de-estar/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Sala de Estar','Ambientes']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/45e20d70-bb02-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/moveis/sala-de-estar/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Sala de Estar','Modulados']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/15452300-bb02-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li
					class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown ">
					<a href="https://www.lojaskd.com.br/moveis/sala-de-jantar/vitrine/"
					title="Sala de Jantar" class="lkd-nav__link"
					onclick="trackEvent(['Topo','Sala de Jantar','Sala de Jantar']);">
						<span> Sala de Jantar <i
							class="lkd-icon lkd-icon--chevron-down lkd-nav__icon--position">
						</i>
					</span>
				</a>
					<div class="lkd-dropdown lkd-dropdown--banners">
						<div class="lkd-container">
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/lancamentos/sala-de-jantar/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Sala de Jantar','Móveis']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/b4acc030-bbaf-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a
									href="https://www.lojaskd.com.br/ambientes-decorados/sala-de-jantar/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Sala de Jantar','Ambientes']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/cf4baa30-bb02-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/moveis/sala-de-jantar/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Sala de Jantar','Modulados']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/89aec5c0-bb02-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li
					class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown ">
					<a href="https://www.lojaskd.com.br/moveis/cozinha/vitrine/"
					title="Cozinha" class="lkd-nav__link"
					onclick="trackEvent(['Topo','Cozinha','Cozinha']);"> <span>
							Cozinha <i class="lkd-icon lkd-icon--chevron-down"> </i>
					</span>
				</a>
					<div class="lkd-dropdown lkd-dropdown--banners">
						<div class="lkd-container">
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/modulados/cozinha/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Cozinha','Móveis']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/7ecedde0-c136-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a
									href="https://www.lojaskd.com.br/ambientes-decorados/cozinha/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Cozinha','Ambientes']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/7fdb6700-bb03-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/moveis/cozinha/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Cozinha','Modulados']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/3b369e30-bb03-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li
					class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown ">
					<a href="https://www.lojaskd.com.br/moveis/escritorio/vitrine/"
					title="Escritório" class="lkd-nav__link"
					onclick="trackEvent(['Topo','Escritório','Escritório']);"> <span>
							Escritório <i class="lkd-icon lkd-icon--chevron-down"> </i>
					</span>
				</a>
					<div class="lkd-dropdown lkd-dropdown--banners">
						<div class="lkd-container">
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/modulados/escritorio/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Escritorio','Móveis']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/894e8cc0-c136-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a
									href="https://www.lojaskd.com.br/ambientes-decorados/escritorio/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Escritorio','Ambientes']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/06821330-bb04-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/moveis/escritorio/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Escritorio','Modulados']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/e981c230-bb03-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li
					class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown ">
					<a href="https://www.lojaskd.com.br/moveis/lavanderia/vitrine/"
					title="Lavanderia" class="lkd-nav__link"
					onclick="trackEvent(['Topo','Lavanderia','Lavanderia']);"> <span>
							Lavanderia <i class="lkd-icon lkd-icon--chevron-down"> </i>
					</span>
				</a>
					<div class="lkd-dropdown lkd-dropdown--banners">
						<div class="lkd-container">
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/modulados/lavanderia/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Lavanderia','Móveis']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/95630c70-c136-11e6-842e-1dee3bed14f1.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a
									href="https://www.lojaskd.com.br/ambientes-decorados/lavanderia/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Lavanderia','Ambientes']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/676abad0-bb04-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/moveis/lavanderia/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Lavanderia','Modulados']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/49401aa0-bb04-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li
					class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown ">
					<a href="https://www.lojaskd.com.br/moveis/banheiro/vitrine/"
					title="Banheiro" class="lkd-nav__link"
					onclick="trackEvent(['Topo','Banheiro','Banheiro']);"> <span>
							Banheiro <i class="lkd-icon lkd-icon--chevron-down"> </i>
					</span>
				</a>
					<div class="lkd-dropdown lkd-dropdown--banners">
						<div class="lkd-container">
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/modulados/banheiro/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Banheiro','Móveis']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/a15907a0-c136-11e6-842e-1dee3bed14f1.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a
									href="https://www.lojaskd.com.br/ambientes-decorados/banheiro/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Banheiro','Ambientes']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/cbc075b0-bb04-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/moveis/banheiro/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Banheiro','Modulados']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/b13ae8b0-bb04-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li
					class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown ">
					<a href="https://www.lojaskd.com.br/moveis/jardim/vitrine/"
					title="Jardim" class="lkd-nav__link"
					onclick="trackEvent(['Topo','Jardim','Jardim']);"> <span>
							Jardim <i class="lkd-icon lkd-icon--chevron-down"> </i>
					</span>
				</a>
					<div class="lkd-dropdown lkd-dropdown--banners">
						<div class="lkd-container">
							<div class="lkd-dropdown__item">
								<a
									href="https://www.lojaskd.com.br/lancamentos/jardim/?tipo=moveis"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Jardim','Móveis']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/a32e4bd0-bbaf-11e6-8ff9-d397c3f5e037.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/ambientes-decorados/jardim/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Jardim','Ambientes']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/8a23c750-bb05-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
							<div class="lkd-dropdown__item">
								<a href="https://www.lojaskd.com.br/moveis/jardim/"
									class="lkd-dropdown__link"
									onclick="trackEvent(['Topo','Jardim','Modulados']);">
									<figure class="lkd-dropdown__image">
										<img
											src="//assets-cms.lojaskd.com.br/production/95b951c0-bbaf-11e6-a01a-61451d04e792.png"
											alt="">
									</figure>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li class="lkd-nav__item lkd-nav__item--highlights"><a
					href="https://www.lojaskd.com.br/ambientes-e-moveis-em-promocao/"
					class="lkd-nav__link"> Ofertas</a></li>
			</ul>
		</nav>
	</header>
	<div class="cs_background_custom wrapper">
		<div class="cs_alltop_container">
			<script> 
document.getElementsByClassName("cs_alltop_container")[0].style.backgroundImage = "url('//assets-cms.lojaskd.com.br/production/1bc7ac70-a58a-11e7-9c25-53f2829308bd.png') ";
document.getElementsByClassName("cs_alltop_container")[0].style.display = "block";
document.getElementsByClassName("cs_alltop_container")[0].style.backgroundRepeat = "no-repeat";
document.getElementsByClassName("cs_alltop_container")[0].style.backgroundPosition = "center";
document.getElementsByClassName("cs_alltop_container")[0].style.height = "451px";
document.getElementsByClassName("cs_alltop_container")[0].onclick = function(){window.open("https://www.lojaskd.com.br/ambientes-e-moveis-em-promocao/?tipo=moveis","_top")}
</script>
			<style>
.cs_alltop_container:hover {
	cursor: pointer;
}
</style>
			<div class="cs_topslider_row" class="row">
				<div class="banner-admanager-topo">
					<div class='banner-conteudo-vitrine'>
						<a
							href="https://www.lojaskd.com.br/ambientes-e-moveis-em-promocao/"
							target="_top"
							onclick="trackEvent(['banners', 'D:D_B:Index_C:Transparente-detona-descontosP:/home', 'https://www.lojaskd.com.br/ambientes-e-moveis-em-promocao/'])">
							<img
							src="//assets-cms.lojaskd.com.br/production/aadf6b50-a233-11e7-a0f8-0523fb9a86b9.png"
							alt="D:D_B:Index_C:Transparente-detona-descontosP:/home">
						</a>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="cs_slider_container row">
				<div class="container-carosel-home">
					<div class="cs_alltop_left_image"></div>
					<div class="cs_alltop_right_image"></div>
					<div class="cs_slider_left_image"></div>
					<div class="cs_slider_right_image"></div>
					<div>
						<div id="owlCaroselHome" class="owl-carousel">
							<div class="banner_full">
								<style>
.botoes-modulados-acao {
	margin-bottom: 285px;
	width: 1000px;
	background-color: transparent;
	z-index: 999999;
	color: #fff !important;
	text-decoration: none !important;
}

.item-botoes-modulados-acao {
	text-align: left;
	display: table;
	float: left;
	text-decoration: none !important;
}

.botoes-modulados-acao small {
	font-size: 9px;
	font-family: Roboto;
	display: block;
	color: #333 !important;
}

.botoes-modulados-acao strong {
	font-size: 15px;
	font-family: Montserrat;
}

.botoes-modulados-acao i {
	font-size: 20px;
	padding-left: 40px;
}

.botoes-modulados-acao i, .text-button-modulados-acao {
	display: table-cell;
	vertical-align: middle;
}

.item-botoes-modulados-acao:hover {
	cursor: pointer;
	color: #fff !important;
	text-decoration: none !important;
}

.kb-btn {
	margin: 10px;
	padding: 16px;
	text-align: center;
	text-transform: uppercase;
	transition: 0.5s;
	background-size: 200% auto;
	color: #ef6c00;
	box-shadow: 0 0 0px;
	border-radius: 8px;
	width: 300px;
	transition: all 0.3s cubic-bezier(.25, .8, .25, 1);
	cursor: pointer;
	display: block;
}

.kb-btn:hover {
	box-shadow: 0 0px 0px rgba(0, 0, 0, 0.19), 0 0px 0px rgba(0, 0, 0, 0.23);
}

.kb-btn-round {
	border-radius: 8px;
}

.kb-btn-1 {
	background-image: linear-gradient(to right, #f23fff 0%, #ffff3f 51%, #ffffff 100%)
}

.kb-btn-1:hover {
	background-position: right center;
}

.kb-btn-2 {
	background-image: linear-gradient(to right, #ffffff 0%, #ffffff 51%, #ffe9a7 100%)
}

.kb-btn-2:hover {
	background-position: right center;
}
</style>
								<div class="content-modulados-acao">
									<div class="botoes-modulados-acao">
										<a
											href="https://www.lojaskd.com.br/ambientes-e-moveis-em-promocao/?tipo=moveis"
											target="_parent" class="item-botoes-modulados-acao">
											<div
												class="text-button-modulados-acao kb-btn kb-btn-round kb-btn-2">
												<strong> Móveis em promoção</strong> <small>
													Complete sua decoração</small>
											</div>
										</a> <a href="https://www.lojaskd.com.br/modulados"
											target="_parent" class="item-botoes-modulados-acao">
											<div
												class="text-button-modulados-acao kb-btn kb-btn-round kb-btn-2">
												<strong> Ambientes Modulados</strong> <small>
													Planeje cada cantinho da sua casa!</small>
											</div>
										</a> <a href="https://www.lojaskd.com.br/lancamentos/?tipo=moveis"
											target="_parent" class="item-botoes-modulados-acao">
											<div
												class="text-button-modulados-acao kb-btn kb-btn-round kb-btn-2">
												<strong> Lançamentos</strong> <small> Móveis que
													acabaram de chegar.</small>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="cs_sliderdown_row row">
			<div class="cs_sliderdown_container">
				<div style="margin: 0;" class="row"></div>
			</div>
		</div>
		<div class="limit content-boxed">
			<div class="cs_limit_left_image"></div>
			<div class="cs_limit_right_image"></div>
			<div class="menu-lateral">
				<div>
					<div class="bloco-menu-lateral">
						<h2>
							<a href="/moveis/quarto/vitrine/"
								onclick="trackEvent(['Home','Menu Lateral','Quarto Titulo']);"
								title="Quarto"> <strong class="description-menu"> <i
									class="actions-bg open"> </i> Quarto
							</strong>
							</a>
						</h2>
						<ul class="lista-itens-checkbox">
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cabeceiras para cama de casal']);"
								href='pesquisa.jsp' title='Cabeceiras para cama de casal'> <i
									class="actions-bg open check"> </i> Cabeceiras para cama de
									casal
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cômodas']);"
								href='pesquisa.jsp' title='Cômodas'> <i
									class="actions-bg open check"> </i> Cômodas
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Criados-mudos']);"
								href='pesquisa.jsp' title='Criados-mudos'> <i
									class="actions-bg open check"> </i> Criados-mudos
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Guarda-roupas modulados']);"
								href='pesquisa.jsp' title='Guarda-roupas modulados'> <i
									class="actions-bg open check"> </i> Guarda-roupas modulados
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Closets modulados']);"
								href='pesquisa.jsp' title='Closets modulados'> <i
									class="actions-bg open check"> </i> Closets modulados
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Pontes moduladas']);"
								href='pesquisa.jsp' title='Pontes moduladas'> <i
									class="actions-bg open check"> </i> Pontes moduladas
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Guarda-roupas com portas de bater']);"
								href='pesquisa.jsp' title='Guarda-roupas com portas de bater'>
									<i class="actions-bg open check"> </i> Guarda-roupas com portas
									de bater
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Guarda-roupas com porta de correr']);"
								href='pesquisa.jsp' title='Guarda-roupas com portas de correr'>
									<i class="actions-bg open check"> </i> Guarda-roupas com portas
									de correr
							</a></li>
						</ul>
					</div>
					<div class="bloco-menu-lateral">
						<h2>
							<a href="pesquisa.jsp"
								onclick="trackEvent(['Home','Menu Lateral','Quarto do Bebê Titulo']);"
								title="Quarto do Bebê"> <strong class="description-menu">
									<i class="actions-bg open"> </i> Quarto do Bebê
							</strong> </strong>
							</a>
						</h2>
						<ul class="lista-itens-checkbox">
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Berços']);"
								href='pesquisa.jsp' title='Ber&ccedil;os'> <i
									class="actions-bg open check"> </i> Ber&ccedil;os
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cômoda Infantil']);"
								href='pesquisa.jsp' title='Cômoda Infantil'> <i
									class="actions-bg open check"> </i> Cômoda infantil
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Guarda-roupas com portas de bater']);"
								href='pesquisa.jsp' title='Guarda-roupas com portas de bater'>
									<i class="actions-bg open check"> </i> Guarda-roupas com portas
									de bater
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Guarda-roupas com portas de correr']);"
								href='pesquisa' title='Guarda-roupas com portas de correr'>
									<i class="actions-bg open check"> </i> Guarda-roupas com portas
									de correr
							</a></li>
						</ul>
					</div>
					<div class="bloco-menu-lateral">
						<h2>
							<a href="pesquisa.jsp"
								onclick="trackEvent(['Home','Menu Lateral','Quarto do Infantil Titulo']);"
								title="Quarto do Infantil"> <strong class="description-menu">
									<i class="actions-bg open"> </i> Quarto Infantil
							</strong> </strong>
							</a>
						</h2>
						<ul class="lista-itens-checkbox">
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Baú e caixa de brinquedos']);"
								href='pesquisa.jsp' title='Baú e caixa de brinquedos'> <i
									class="actions-bg open check"> </i> Baú e caixa de brinquedos
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cadeira']);"
								href='/moveis/quarto-infantil/cadeira/' title='Cadeira'> <i
									class="actions-bg open check"> </i> Cadeira
							</a></li>
							<li><a onclick="trackEvent(['Home','Menu Lateral','Cama']);"
								href='/moveis/quarto-infantil/cama/' title='Cama'> <i
									class="actions-bg open check"> </i> Cama
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Comoda']);"
								href='/moveis/quarto-infantil/comoda/' title='Cômoda'> <i
									class="actions-bg open check"> </i> Cômoda
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Criado mudo']);"
								href='/moveis/quarto-infantil/criado-mudo/' title='Criado mudo'>
									<i class="actions-bg open check"> </i> Criado mudo
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Estante']);"
								href='/moveis/quarto-infantil/estante/' title='Estante'> <i
									class="actions-bg open check"> </i> Estante
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Guarda-roupa']);"
								href='/moveis/quarto-infantil/guarda-roupa/'
								title='Guarda roupa'> <i class="actions-bg open check">
								</i> Guarda roupa
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Penteadeira']);"
								href='/moveis/quarto-infantil/penteadeira/' title='Penteadeira'>
									<i class="actions-bg open check"> </i> Penteadeira
							</a></li>
						</ul>
					</div>
					<div class="bloco-menu-lateral">
						<h2>
							<a href="/moveis/quarto-juvenil/vitrine/"
								onclick="trackEvent(['Home','Menu Lateral','Quarto Juvenil Titulo']);"
								title="Quarto Juvenil"> <strong class="description-menu">
									<i class="actions-bg open"> </i> Quarto Juvenil
							</strong>
							</a>
						</h2>
						<ul class="lista-itens-checkbox">
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Beliche juvenil']);"
								href='/moveis/quarto-juvenil/beliche/' title='Beliche'> <i
									class="actions-bg open check"> </i> Beliche
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Bicama juvenil']);"
								href='/moveis/quarto-juvenil/bicama/' title='Bicama'> <i
									class="actions-bg open check"> </i> Bicama
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cama juvenil']);"
								href='/moveis/quarto-juvenil/cama/' title='Cama'> <i
									class="actions-bg open check"> </i> Cama
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cômoda juvenil']);"
								href='/moveis/quarto-juvenil/comoda/' title='Cômoda'> <i
									class="actions-bg open check"> </i> Cômoda
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Criado-mudo juvenil']);"
								href='/moveis/quarto-juvenil/criado-mudo/'
								title='Criado-mudo juvenil'> <i
									class="actions-bg open check"> </i> Criado-mudo
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Escrivaninha juvenil']);"
								href='/moveis/quarto-juvenil/escrivaninha/' title='Escrivaninha'>
									<i class="actions-bg open check"> </i> Escrivaninha
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Guarda-roupa modulado juvenil']);"
								href='/moveis/quarto-juvenil/guarda-roupas/guarda-roupas-juvenil-modulado/'
								title='Guarda-roupa modulado'> <i
									class="actions-bg open check"> </i> Guarda-roupa modulado
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Guarda-roupa com portas de correr']);"
								href='/moveis/quarto-juvenil/guarda-roupas/guarda-roupas-juvenil-com-portas-de-correr/'
								title='Guarda-roupa juvenil com portas de correr'> <i
									class="actions-bg open check"> </i> Guarda-roupa com portas de
									correr
							</a></li>
						</ul>
					</div>
					<div class="bloco-menu-lateral">
						<h2>
							<a href="/moveis/sala-de-estar/vitrine/"
								onclick="trackEvent(['Home','Menu Lateral','Sala de Estar Titulo']);"
								title="Sala de Estar"> <strong class="description-menu">
									<i class="actions-bg open"> </i> Sala de Estar
							</strong>
							</a>
						</h2>
						<ul class="lista-itens-checkbox">
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cubos e nichos']);"
								href='/moveis/sala-de-estar/cubos-e-nichos/'
								title='Cubos e nichos'> <i class="actions-bg open check">
								</i> Cubos e nichos
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Estantes para livros']);"
								href='/moveis/sala-de-estar/estantes/estantes-para-livros/'
								title='Estantes para livros'> <i
									class="actions-bg open check"> </i> Estantes para livros
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Estante Home Theater']);"
								href='/moveis/sala-de-estar/estantes/estante-home-theater/'
								title='Estante home'> <i class="actions-bg open check">
								</i> Estante Home Theater
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Mesas de centro']);"
								href='/moveis/sala-de-estar/mesas-para-sala/mesas-de-centro/'
								title='Mesas de centro'> <i class="actions-bg open check">
								</i> Mesas de centro
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Mesa laterais e canto']);"
								href='/moveis/sala-de-estar/mesas-para-sala/mesas-laterais-e-canto/'
								title='Mesas laterais e canto'> <i
									class="actions-bg open check"> </i> Mesa laterais e canto
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Painéis para TV']);"
								href='/moveis/sala-de-estar/paineis-para-tv/'
								title='Painéis para TV'> <i class="actions-bg open check">
								</i> Painéis para TV
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Rack com painel para TV']);"
								href='/moveis/sala-de-estar/racks-para-tv/racks-com-painel-para-tv/'
								title='Rack com painel para TV'> <i
									class="actions-bg open check"> </i> Rack com painel para TV
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Racks para TV']);"
								href='/moveis/sala-de-estar/racks-para-tv/'
								title='Racks para TV'> <i class="actions-bg open check">
								</i> Racks para TV
							</a></li>
						</ul>
					</div>
					<div class="bloco-menu-lateral">
						<h2>
							<a href="/moveis/sala-de-jantar/vitrine/"
								onclick="trackEvent(['Home','Menu Lateral','Sala de Jantar Titulo']);"
								title="Sala de Jantar"> <strong class="description-menu">
									<i class="actions-bg open"> </i> Sala de Jantar
							</strong>
							</a>
						</h2>
						<ul class="lista-itens-checkbox">
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Aparadores']);"
								href='/moveis/sala-de-jantar/aparadores/' title='Aparadores'>
									<i class="actions-bg open check"> </i> Aparadores
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Balc&otilde;es']);"
								href='/moveis/sala-de-jantar/balcoes/' title='Balc&otilde;es'>
									<i class="actions-bg open check"> </i> Balc&otilde;es
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Bar para sala']);"
								href='/moveis/sala-de-jantar/bar-para-sala/'
								title='Bar para sala'> <i class="actions-bg open check">
								</i> Bar para sala
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cadeiras']);"
								href='/moveis/sala-de-jantar/cadeiras/' title='Cadeiras'> <i
									class="actions-bg open check"> </i> Cadeiras
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cristaleira']);"
								href='/moveis/sala-de-jantar/cristaleira/' title='Cristaleira'>
									<i class="actions-bg open check"> </i> Cristaleira
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Mesas de madeira']);"
								href='/moveis/sala-de-jantar/mesas-de-madeira/'
								title='Mesas de madeira'> <i class="actions-bg open check">
								</i> Mesas de madeira
							</a></li>
						</ul>
					</div>
					<div class="bloco-menu-lateral">
						<h2>
							<a href="/moveis/cozinha/vitrine/"
								onclick="trackEvent(['Home','Menu Lateral','Cozinha Titulo']);"
								title="Cozinha"> <strong class="description-menu">
									<i class="actions-bg open"> </i> Cozinha
							</strong>
							</a>
						</h2>
						<ul class="lista-itens-checkbox">
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Arm&aacute;rio a&eacute;reo em madeira']);"
								href='/moveis/cozinha/armario-aereo-de-parede-em-madeira/'
								title='Arm&aacute;rio a&eacute;reo em madeira'> <i
									class="actions-bg open check"> </i> Arm&aacute;rio a&eacute;reo
									em madeira
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Balc&atilde;o em madeira']);"
								href='/moveis/cozinha/balcao-em-madeira/'
								title='Balc&atilde;o em madeira'> <i
									class="actions-bg open check"> </i> Balc&atilde;o em madeira
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Banquetas']);"
								href='/moveis/cozinha/banquetas/' title='Banquetas'> <i
									class="actions-bg open check"> </i> Banquetas
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cozinha compacta']);"
								href='/ambientes-decorados/cozinha/cozinha-compacta-e-pequena/'
								title='Cozinha compacta'> <i class="actions-bg open check">
								</i> Cozinha compacta
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Paneleiro em madeira']);"
								href='/moveis/cozinha/modulos-em-madeira/paneleiro-em-madeira/'
								title='Paneleiro em madeira'> <i
									class="actions-bg open check"> </i> Paneleiro em madeira
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Armário multiuso']);"
								href='/moveis/cozinha/armarios-multiuso/'
								title='Arm&aacute;rio multiuso'> <i
									class="actions-bg open check"> </i> Arm&aacute;rio multiuso
							</a></li>
						</ul>
					</div>
					<div class="bloco-menu-lateral">
						<h2>
							<a href="/moveis/escritorio/vitrine/"
								onclick="trackEvent(['Home','Menu Lateral','Escritório Titulo']);"
								title="Escritório"> <strong class="description-menu">
									<i class="actions-bg open"> </i> Escritório
							</strong>
							</a>
						</h2>
						<ul class="lista-itens-checkbox">
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Armários']);"
								href='/moveis/escritorio/armarios/' title='Arm&aacute;rios'>
									<i class="actions-bg open check"> </i> Arm&aacute;rios
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cadeiras']);"
								href='/moveis/escritorio/cadeiras/' title='Cadeiras'> <i
									class="actions-bg open check"> </i> Cadeiras
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Cubos e nichos']);"
								href='/moveis/escritorio/cubos-e-nichos/' title='Cubos e nichos'>
									<i class="actions-bg open check"> </i> Cubos e nichos
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Mesas para escritório']);"
								href='/moveis/escritorio/mesas/'
								title='Mesas para escrit&oacute;rio'> <i
									class="actions-bg open check"> </i> Mesas para escritório
							</a></li>
						</ul>
					</div>
					<div class="bloco-menu-lateral">
						<h2>
							<a href="/moveis/lavanderia/vitrine/"
								onclick="trackEvent(['Home','Menu Lateral','Lavanderia Titulo']);"
								title="Lavanderia"> <strong class="description-menu">
									<i class="actions-bg open"> </i> Lavanderia
							</strong>
							</a>
						</h2>
						<ul class="lista-itens-checkbox">
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Arm&aacute;rios para lavanderia']);"
								href='/moveis/lavanderia/armarios/'
								title='Arm&aacute;rios para lavanderia'> <i
									class="actions-bg open check"> </i> Arm&aacute;rios para
									lavanderia
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','T&aacute;buas de passar']);"
								href='/moveis/lavanderia/tabuas-de-passar/'
								title='T&aacute;buas de passar'> <i
									class="actions-bg open check"> </i> T&aacute;buas de passar
							</a></li>
						</ul>
					</div>
					<div class="bloco-menu-lateral">
						<h2>
							<a href="/moveis/banheiro/vitrine/"
								onclick="trackEvent(['Home','Menu Lateral','Banheiro Titulo']);"
								title="Banheiro"> <strong class="description-menu">
									<i class="actions-bg open"> </i> Banheiro
							</strong>
							</a>
						</h2>
						<ul class="lista-itens-checkbox">
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Arm&aacute;rios para banheiro']);"
								href='/moveis/banheiro/armarios-e-gabinetes-de-pia/'
								title='Arm&aacute;rios e gabientes de pia'> <i
									class="actions-bg open check"> </i> Arm&aacute;rios e gabinetes
									de pia
							</a></li>
						</ul>
					</div>
					<div class="bloco-menu-lateral">
						<h2>
							<a href="/moveis/jardim/vitrine/"
								onclick="trackEvent(['Home','Menu Lateral','Jardim Titulo']);"
								title="Banheiro"> <strong class="description-menu">
									<i class="actions-bg open"> </i> Jardim
							</strong>
							</a>
						</h2>
						<ul class="lista-itens-checkbox">
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Jardim decorado']);"
								href='/ambientes-decorados/jardim/' title='Jardim decorado'>
									<i class="actions-bg open check"> </i> Jardim decorado
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Mesas e Cadeiras']);"
								href='/ambientes-decorados/jardim/conjuntos-de-mesas-e-cadeiras/'
								title='Jardim decorado'> <i class="actions-bg open check">
								</i> Mesas e Cadeiras
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Varanda decorada']);"
								href='/ambientes-decorados/jardim/varanda-decorada/'
								title='Varanda Decorada'> <i class="actions-bg open check">
								</i> Varanda Decorada
							</a></li>
							<li><a
								onclick="trackEvent(['Home','Menu Lateral','Bancos']);"
								href='/moveis/jardim/bancos/' title='Varanda Decorada'> <i
									class="actions-bg open check"> </i> Bancos
							</a></li>
						</ul>
					</div>
					<div class="bloco-menu-lateral fretinho">
						<div class="bannersLateralFretinho">
							<a href="javascript:void(0);" data-aba-active="aba4"
								class="confira-pagamentos-prd"
								onclick="trackEvent(['sidebar_index','fretinho']);"
								title="Veja as regras aqui"> <img
								src="//assets.lojaskd.com.br/releases/production/dist/images/banners/banner-frete-lateral.png"
								alt="Fretinho LojasKD" title="Fretinho LojasKD"
								style="display: block;">
							</a>
						</div>
					</div>
				</div>
			</div>
			<div id="start-of-content" class="conteudo pagina-vitrine"
				data-ec="true">
				<div class="content-boxed__inner">
					<div id="box-viewed-items"></div>
					<div class="clearfix"></div>
					<div class="boxambitre left">
						<div class="one left">
							<a rel="nofollow"
								href="https://www.lojaskd.com.br/moveis/quarto/vitrine/"
								title="Repagine > "><div
									class="produtoSeloDesconto imagem-bg hidden-seals"
									data-departamento="1">
									<span class="valorDescontoAlonely left"> at&eacute;</span> <span
										class="desconto-precentual left"> </span> <span
										class="valorDesconto left"> desc.</span>
								</div> <img class="lazy"
								src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
								data-original="//assets.lojaskd.com.br/releases/production/dist/images/campanhas/home/quarto-agn_1.jpg"
								alt="" /> </a>
							<h2>
								<a rel="nofollow" href="/moveis/quarto/vitrine/" title="Quarto">
									Quarto</a>
							</h2>
							<ul>
								<li><a rel="nofollow"
									href="/ambientes-decorados/quarto/quartos-completos/"
									title="Quarto decorado"> Quarto decorado</a></li>
								<li><a rel="nofollow" href="/moveis/quarto/cabeceiras/"
									title="Cabeceira"> Cabeceira</a></li>
								<li><a rel="nofollow" href="/moveis/quarto/camas/"
									title="Cama"> Cama</a></li>
								<li><a rel="nofollow"
									href="/moveis/quarto/guarda-roupas-casal-e-solteiro/guarda-roupas-com-portas-de-correr/"
									title="Guarda-roupas com portas de correr"> Guarda-roupas
										com portas de correr</a></li>
								<li><a rel="nofollow"
									href="/moveis/quarto/guarda-roupas-modulados/"
									title="Guarda-roupas modulados"> Guarda-roupas modulados</a></li>
							</ul>
						</div>
						<div class="two left">
							<a rel="nofollow" href="/moveis/sala-de-estar/vitrine/"
								title="Confira > "><div
									class="produtoSeloDesconto imagem-bg hidden-seals"
									data-departamento="35">
									<span class="valorDescontoAlonely left"> at&eacute;</span> <span
										class="desconto-precentual left"> </span> <span
										class="valorDesconto left"> desc.</span>
								</div> <img class="lazy"
								src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
								data-original="//assets.lojaskd.com.br/releases/production/dist/images/campanhas/home/sala-estar-agn_1.jpg"
								alt="" /> </a>
							<h2>
								<a rel="nofollow" href="/moveis/sala-de-estar/vitrine/"
									title="Sala de Estar"> Sala de Estar</a>
							</h2>
							<ul>
								<li><a rel="nofollow"
									href="/ambientes-decorados/sala-de-estar/salas-de-estar-completas/"
									title="Sala de estar decorada"> Sala de estar decorada</a></li>
								<li><a rel="nofollow"
									href="/moveis/sala-de-estar/cubos-e-nichos/"
									title="Cubos e nichos"> Cubos e nichos</a></li>
								<li><a rel="nofollow"
									href="/moveis/sala-de-estar/estantes/estante-home/"
									title="Estante home"> Estante home</a></li>
								<li><a rel="nofollow"
									href="/moveis/sala-de-estar/mesas-para-sala/"
									title="Mesas para sala"> Mesas para sala</a></li>
								<li><a rel="nofollow"
									href="/moveis/sala-de-estar/racks/rack-com-painel/"
									title="Rack com painel"> Rack com painel</a></li>
							</ul>
						</div>
						<div class="tre left">
							<a rel="nofollow" href="/moveis/cozinha/vitrine/"
								title="Inspire-se > "><div
									class="produtoSeloDesconto imagem-bg hidden-seals"
									data-departamento="52">
									<span class="valorDescontoAlonely left"> at&eacute;</span> <span
										class="desconto-precentual left"> </span> <span
										class="valorDesconto left"> desc.</span>
								</div> <img class="lazy"
								src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
								data-original="//assets.lojaskd.com.br/releases/production/dist/images/campanhas/home/cozinha-agn_1.jpg"
								alt="" /> </a>
							<h2>
								<a rel="nofollow" href="/moveis/cozinha/vitrine/"
									title="Cozinha"> Cozinha</a>
							</h2>
							<ul>
								<li><a rel="nofollow"
									href="/ambientes-decorados/cozinha/cozinha-completa-em-madeira/"
									title="Cozinha decorada em madeira"> Cozinha decorada em
										madeira</a></li>
								<li><a rel="nofollow"
									href="/ambientes-decorados/cozinha/cozinha-completa-em-aco/"
									title="Cozinha decorada em a&ccedil;o"> Cozinha decorada em
										a&ccedil;o</a></li>
								<li><a rel="nofollow"
									href="/moveis/cozinha/armarios-multiuso/"
									title="Arm&aacute;rio multiuso"> Arm&aacute;rio multiuso</a></li>
								<li><a rel="nofollow"
									href="/moveis/cozinha/modulos-em-madeira/balcao-para-pia-em-madeira/"
									title="Balc&atilde;o de pia em madeira"> Balc&atilde;o de
										pia em madeira</a></li>
								<li><a rel="nofollow"
									href="/ambientes-decorados/cozinha/conjuntos-de-mesa-e-cadeiras/"
									title="Mesas e cadeiras"> Mesas e cadeiras</a></li>
							</ul>
						</div>
						<div class="boxambifour">
							<div class="one left">
								<a href="/moveis/quarto-do-bebe/vitrine/" title="Renove > "><div
										class="produtoSeloDesconto imagem-bg hidden-seals"
										data-departamento="300">
										<span class="valorDescontoAlonely left"> at&eacute;</span> <span
											class="desconto-precentual left"> </span> <span
											class="valorDesconto left"> desc.</span>
									</div> <img class="less lazy"
									src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
									data-original="//assets.lojaskd.com.br/releases/production/dist/images/campanhas/home/quarto-bebe-agn_1.jpg"
									alt="" /> </a>
								<h2>
									<a rel="nofollow" href="/moveis/quarto-do-bebe/vitrine/"
										title="Quarto do Beb&ecirc;"> Quarto do Beb&ecirc;</a>
								</h2>
								<ul>
									<li><a rel="nofollow"
										href="/ambientes-decorados/quarto-do-bebe/quartos-de-bebe-completos/"
										title="Quarto do Beb&ecirc; decorado"> Quarto do
											Beb&ecirc; decorado</a></li>
									<li><a rel="nofollow"
										href="/moveis/quarto-do-bebe/bercos/" title="Ber&ccedil;o">
											Ber&ccedil;o</a></li>
									<li><a rel="nofollow"
										href="/moveis/quarto-do-bebe/comoda-infantil/"
										title="C&ocirc;moda Infantil"> C&ocirc;moda Infantil</a></li>
									<li><a rel="nofollow"
										href="/moveis/quarto-do-bebe/guarda-roupas/"
										title="Guarda-roupa"> Guarda-roupa</a></li>
									<li><a rel="nofollow"
										href="/moveis/quarto-do-bebe/mini-camas/" title="Mini-cama">
											Mini-cama</a></li>
								</ul>
							</div>
							<div class="one left">
								<a rel="nofollow" href="/moveis/quarto-infantil/vitrine/"
									title="Decore > "><div
										class="produtoSeloDesconto imagem-bg hidden-seals"
										data-departamento="28">
										<span class="valorDescontoAlonely left"> at&eacute;</span> <span
											class="desconto-precentual left"> </span> <span
											class="valorDesconto left"> desc.</span>
									</div> <img class="less lazy"
									src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
									data-original="//assets.lojaskd.com.br/releases/production/dist/images/campanhas/home/quarto-infantil-agn_1.jpg"
									alt="" /> </a>
								<h2>
									<a rel="nofollow" href="/moveis/quarto-infantil/vitrine/"
										title="Quarto Infantil"> Quarto Infantil</a>
								</h2>
								<ul>
									<li><a rel="nofollow"
										href="/moveis/quarto-infantil/quartos-infantis-completos/"
										title="Quarto Infantil decorado"> Quarto Infantil decorado</a>
									</li>
									<li><a rel="nofollow" href="/moveis/quarto-infantil/cama/"
										title="Cama"> Cama</a></li>
									<li><a rel="nofollow"
										href="/moveis/quarto-infantil/comoda/" title="Cômoda">
											Cômoda</a></li>
									<li><a rel="nofollow"
										href="/moveis/quarto-infantil/criado-mudo/"
										title="Criado-mudo"> Criado-mudo</a></li>
									<li><a rel="nofollow"
										href="/moveis/quarto-infantil/guarda-roupa/"
										title="Guarda-roupa"> Guarda-roupa</a></li>
								</ul>
							</div>
							<div class="one left">
								<a rel="nofollow" href="/moveis/quarto-juvenil/vitrine/"
									title="Decore > "><div
										class="produtoSeloDesconto imagem-bg hidden-seals"
										data-departamento="28">
										<span class="valorDescontoAlonely left"> at&eacute;</span> <span
											class="desconto-precentual left"> </span> <span
											class="valorDesconto left"> desc.</span>
									</div> <img class="less lazy"
									src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
									data-original="//assets.lojaskd.com.br/releases/production/dist/images/campanhas/home/quarto-juvenil-agn_1.jpg"
									alt="" /> </a>
								<h2>
									<a rel="nofollow" href="/moveis/quarto-juvenil/vitrine/"
										title="Quarto Juvenil"> Quarto Juvenil</a>
								</h2>
								<ul>
									<li><a rel="nofollow"
										href="/ambientes-decorados/quarto-juvenil/quartos-juvenis-completos/"
										title="Quarto decorado"> Quarto Juvenil decorado</a></li>
									<li><a rel="nofollow" href="/moveis/quarto-juvenil/cama/"
										title="Cama"> Cama</a></li>
									<li><a rel="nofollow"
										href="/moveis/quarto-juvenil/bicama/" title="Bicama">
											Bicama</a></li>
									<li><a rel="nofollow"
										href="/moveis/quarto-juvenil/beliche/" title="Beliche">
											Beliche</a></li>
									<li><a rel="nofollow"
										href="/moveis/quarto-juvenil/guarda-roupas/"
										title="Guarda-roupa"> Guarda-roupa</a></li>
								</ul>
							</div>
							<div class="tre left">
								<a rel="nofollow" href="/moveis/sala-de-jantar/vitrine/"
									title="Veja + > "><div
										class="produtoSeloDesconto imagem-bg hidden-seals"
										data-departamento="43">
										<span class="valorDescontoAlonely left"> at&eacute;</span> <span
											class="desconto-precentual left"> </span> <span
											class="valorDesconto left"> desc.</span>
									</div> <img class="less lazy"
									src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
									data-original="//assets.lojaskd.com.br/releases/production/dist/images/campanhas/home/sala-jantar-agn_1.jpg"
									alt="" /> </a>
								<h2>
									<a rel="nofollow" href="/moveis/sala-de-jantar/vitrine/"
										title="Sala de Estar"> Sala de Jantar</a>
								</h2>
								<ul>
									<li><a rel="nofollow"
										href="/ambientes-decorados/sala-de-jantar/mesas-e-cadeiras/"
										title="Mesas e cadeiras"> Mesas e cadeiras</a></li>
									<li><a rel="nofollow"
										href="/moveis/sala-de-jantar/aparadores/" title="Aparadores">
											Aparadores</a></li>
									<li><a rel="nofollow"
										href="/moveis/sala-de-jantar/cadeiras/" title="Cadeiras">
											Cadeiras</a></li>
									<li><a rel="nofollow"
										href="/moveis/sala-de-jantar/cristaleira/" title="Cristaleira">
											Cristaleira</a></li>
									<li><a rel="nofollow"
										href="/moveis/sala-de-jantar/mesas-de-madeira/"
										title="Mesa de madeira"> Mesa de madeira</a></li>
								</ul>
							</div>
						</div>
						<div class="boxambifour">
							<div class="one left">
								<a href="/moveis/escritorio/vitrine/" title="Confira > "><div
										class="produtoSeloDesconto imagem-bg hidden-seals"
										data-departamento="47">
										<span class="valorDescontoAlonely left"> at&eacute;</span> <span
											class="desconto-precentual left"> </span> <span
											class="valorDesconto left"> desc.</span>
									</div> <img class="less lazy"
									src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
									data-original="//assets.lojaskd.com.br/releases/production/dist/images/campanhas/home/escritorio-agn_1.jpg"
									alt="" /> </a>
								<h2>
									<a href="/moveis/escritorio/vitrine/" title="Escrit&oacute;rio">
										Escrit&oacute;rio</a>
								</h2>
								<ul>
									<li><a
										href="/ambientes-decorados/escritorio/escritorios-completos/"
										title="Escrit&oacute;rio completo" rel="nofollow">
											Escrit&oacute;rio decorado</a></li>
									<li><a href="/moveis/escritorio/armarios-com-portas/"
										title="Arm&aacute;rios" rel="nofollow"> Arm&aacute;rios</a></li>
									<li><a href="/moveis/escritorio/cadeiras/"
										title="Cadeiras" rel="nofollow"> Cadeiras</a></li>
									<li><a href="/moveis/escritorio/gaveteiros/"
										title="Gaveteiros" rel="nofollow"> Gaveteiros</a></li>
									<li><a href="/moveis/escritorio/mesas/" title="Mesas"
										rel="nofollow"> Mesas</a></li>
								</ul>
							</div>
							<div class="one left">
								<a rel="nofollow" href="/moveis/lavanderia/vitrine/"
									title="Veja + > "><div
										class="produtoSeloDesconto imagem-bg hidden-seals"
										data-departamento="58">
										<span class="valorDescontoAlonely left"> at&eacute;</span> <span
											class="desconto-precentual left"> </span> <span
											class="valorDesconto left"> desc.</span>
									</div> <img class="less lazy"
									src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
									data-original="//assets.lojaskd.com.br/releases/production/dist/images/campanhas/home/lavanderia-agn_1.jpg"
									alt="" /> </a>
								<h2>
									<a rel="nofollow" href="/moveis/lavanderia/vitrine/"
										title="Lavanderia"> Lavanderia</a>
								</h2>
								<ul>
									<li><a rel="nofollow"
										href="/ambientes-decorados/lavanderia/"
										title="Lavanderia decorada"> Lavanderia decorada</a></li>
									<li><a rel="nofollow"
										href="/moveis/lavanderia/armarios/armarios-aereos/"
										title="Arm&aacute;rio a&eacute;reo"> Arm&aacute;rio
											a&eacute;reo</a></li>
									<li><a rel="nofollow"
										href="/moveis/lavanderia/armarios/armarios-multiuso/"
										title="Arm&aacute;rio multiuso"> Arm&aacute;rio multiuso</a></li>
									<li><a rel="nofollow"
										href="/moveis/lavanderia/tabuas-de-passar/"
										title="T&aacute;bua de passar"> T&aacute;bua de passar</a></li>
								</ul>
							</div>
							<div class="one left">
								<a rel="nofollow" href="/moveis/banheiro/vitrine/"
									title="Inspire-se > "><div
										class="produtoSeloDesconto imagem-bg hidden-seals"
										data-departamento="392">
										<span class="valorDescontoAlonely left"> at&eacute;</span> <span
											class="desconto-precentual left"> </span> <span
											class="valorDesconto left"> desc.</span>
									</div> <img class="less lazy"
									src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
									data-original="//assets.lojaskd.com.br/releases/production/dist/images/campanhas/home/banheiro-agn_1.jpg"
									alt="" /> </a>
								<h2>
									<a rel="nofollow" href="/moveis/banheiro/vitrine/"
										title="Banheiro"> Banheiro</a>
								</h2>
								<ul>
									<li><a rel="nofollow"
										href="/ambientes-decorados/banheiro/"
										title="Banheiro decorado"> Banheiro decorado</a></li>
									<li><a rel="nofollow" href="/moveis/banheiro/armarios/"
										title="Arm&aacute;rio"> Arm&aacute;rio</a></li>
									<li><a rel="nofollow"
										href="/moveis/banheiro/cubos-e-nichos/" title="Cubos e nichos">
											Cubos e nichos</a></li>
								</ul>
							</div>
							<div class="tre left">
								<a rel="nofollow" href="/moveis/jardim/vitrine/"
									title="Repagine > "><div
										class="produtoSeloDesconto imagem-bg hidden-seals"
										data-departamento="108">
										<span class="valorDescontoAlonely left"> at&eacute;</span> <span
											class="desconto-precentual left"> </span> <span
											class="valorDesconto left"> desc.</span>
									</div> <img class="less lazy"
									src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
									data-original="//assets.lojaskd.com.br/releases/production/dist/images/campanhas/home/jardim-agn_1.jpg"
									alt="" /> </a>
								<h2>
									<a rel="nofollow" href="/moveis/jardim/vitrine/" title="Jardim">
										Jardim</a>
								</h2>
								<ul>
									<li><a rel="nofollow"
										href="/ambientes-decorados/jardim/mesas-e-cadeiras/"
										title="Mesas e cadeiras"> Mesas e cadeiras</a></li>
									<li><a rel="nofollow"
										href="/moveis/jardim/bancos-de-madeira/"
										title="Banco de madeira"> Banco de madeira</a></li>
									<li><a rel="nofollow" href="/moveis/jardim/cadeiras/"
										title="Cadeiras"> Cadeiras</a></li>
									<li><a rel="nofollow"
										href="/moveis/jardim/espreguicadeiras/"
										title="Espregui&ccedil;adeiras"> Espregui&ccedil;adeiras</a></li>
									<li><a rel="nofollow"
										href="/moveis/jardim/jardim-vertical/" title="Jardim vertical">
											Jardim vertical</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="caixa" id="bannerShoppingsVitrine">
				<a id="bannerShoppingsVitrine-btn-left"> </a> <a
					id="bannerShoppingsVitrine-btn-right"> </a>
				<div id="bannerShoppingsVitrine-container">
					<a href="/moveis/marca-santos-andira/"
						onclick="trackEvent(['Barra de fornecedores','Index','Santos Andirá']);"
						title="Santos Andirá"> <span class="kr-visually-hidden">
							Móveis do fornecedor Santos Andirá</span>
					</a> <a href="/moveis/marca-henn/"
						onclick="trackEvent(['Barra de fornecedores','Index','Henn']);"
						title="Henn"> <span class="kr-visually-hidden"> Móveis
							do fornecedor Henn</span>
					</a> <a href="/moveis/marca-moveis-estrela/"
						onclick="trackEvent(['Barra de fornecedores','Index','Móveis Estrela']);"
						title="Móveis Estrela"> <span class="kr-visually-hidden">
							Móveis do fornecedor Móveis Estrela</span>
					</a> <a href="/moveis/marca-pura-magia/"
						onclick="trackEvent(['Barra de fornecedores','Index','Pura Magia']);"
						title="Pura Magia"> <span class="kr-visually-hidden">
							Móveis do fornecedor Pura Magia</span>
					</a> <a href="/moveis/marca-kappesberg/"
						onclick="trackEvent(['Barra de fornecedores','Index','Móveis Kappersberg']);"
						title="Móveis Kappersberg"> <span class="kr-visually-hidden">
							Móveis do fornecedor Móveis Kappersberg</span>
					</a> <a href="/moveis/marca-moveis-europa/"
						onclick="trackEvent(['Barra de fornecedores','Index','Móveis Europa']);"
						title="Móveis Europa"> <span class="kr-visually-hidden">
							Móveis do fornecedor Móveis Europa</span>
					</a> <a href="/moveis/marca-dalla-costa/"
						onclick="trackEvent(['Barra de fornecedores','Index','Dalla Costa']);"
						title="Dalla Costa"> <span class="kr-visually-hidden">
							Móveis do fornecedor Dalla Costa</span>
					</a> <a href="/moveis/marca-weihermann/"
						onclick="trackEvent(['Barra de fornecedores','Index','Móveis Weihermann']);"
						title="Móveis Weihermann"> <span class="kr-visually-hidden">
							Móveis do fornecedor Móveis Weihermann</span>
					</a> <a href="/moveis/marca-fiasini/"
						onclick="trackEvent(['Barra de fornecedores','Index','Fiasini']);"
						title="Fiasini"> <span class="kr-visually-hidden">
							Móveis do fornecedor Fiasini</span>
					</a> <a href="/moveis/marca-politorno/"
						onclick="trackEvent(['Barra de fornecedores','Index','Politorno']);"
						title="Politorno"> <span class="kr-visually-hidden">
							Móveis do fornecedor Politorno</span>
					</a> <a href="/moveis/marca-carraro/"
						onclick="trackEvent(['Barra de fornecedores','Index','Carraro']);"
						title="Carraro"> <span class="kr-visually-hidden">
							Móveis do fornecedor Carraro</span>
					</a> <a href="/busca/brv/"
						onclick="trackEvent(['Barra de fornecedores','Index','BRV Móveis']);"
						title="BRV Móveis"> <span class="kr-visually-hidden">
							Móveis do fornecedor BRV Móveis</span>
					</a> <a href="/moveis/marca-visao-moveis/"
						onclick="trackEvent(['Barra de fornecedores','Index','Visão Móveis']);"
						title="Visão Movéis"> <span class="kr-visually-hidden">
							Móveis do fornecedor Visão Movéis</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="englobafooter left">
		<div class="wrap-footer wrap-atendimento">
			<div class="footer">
				<a class="topomaster right imagem-bg hidden-text" href="#header"
					data-speed="500" data-goto> goTo top</a>
				<div class="pagamento-atendimento">
					<div class="box_left">
						<div class="titulos">
							<p>Você sabia?</p>
							<p>
								Aceitamos várias <strong> formas de pagamento</strong> .
								Escolha a sua:
							</p>
						</div>
						<div class="pagtos left">
							<ul>
								<li class="confira-pagamentos-prd" data-aba-active="aba2">
									Cartões de crédito</li>
								<li class="cdcs imagem-bg confira-pagamentos-prd"
									data-aba-active="aba2"></li>
							</ul>
							<ul>
								<li class="boleto imagem-bg confira-pagamentos-prd"
									data-aba-active="aba2"></li>
								<li class="composto imagem-bg confira-pagamentos-prd"
									data-aba-active="aba2"></li>
								<li class="deposito imagem-bg confira-pagamentos-prd"
									data-aba-active="aba2"></li>
							</ul>
						</div>
					</div>
					<div class="assinatura left">
						<ul>
							<div class="box_selos_top">
								<li class="compra_segural_selo"><a
									href="https://www.lojaskd.com.br/seguranca-e-privacidade/"
									class="comprasegura imagem-bg" title="Compra Segura"
									data-event-category="Segurança" data-event-action="Rodapé"
									data-event-label="Cadeado" data-event> </a></li>
								<li class="selo_right" data-event-category="Segurança"
									data-event-action="Rodapé"
									data-event-label="Google Avaliações Consumidor" data-event>
								</li>
							</div>
							<li class="selo-ebit"><a id="seloEbit"
								href="https://www.ebit.com.br/#lojas-kd" target="_blank"
								onclick="redir(this.href);"> </a> <script type="text/javascript"
									id="getSelo"
									src="https://imgs.ebit.com.br/ebitBR/selo-ebit/js/getSelo.js?2305"> </script>
							</li>
							<li title="Navegação Segura Google"
								class="sfg imagem-bg selo_right"
								onclick="window.open('https://google.com/safebrowsing/diagnostic?hl=pt-PT&site=lojaskd.com.br');"
								data-event-category="Segurança" data-event-action="Rodapé"
								data-event-label="Google" data-event></li>
							<li><a title="Loja 100% Segura"
								class="selo-certificado imagem-bg selo_right"
								href="https://www.lojaskd.com.br/seguranca-e-privacidade/"
								data-event-category="Segurança" data-event-action="Rodapé"
								data-event-label="Certificado" data-event> <span
									class="kr-visually-hidden"> Selo certificado - Loja 100%
										Segura</span>
							</a></li>
						</ul>
					</div>
					<div class="midias right">
						<div class="televendas">
							<p class="atendimento-title">Central de atendimento</p>
							<p class="atendimento-sub-title">
								<a href="https://www.lojaskd.com.br/atendimento/">
									Autoatendimento 24 Horas</a>
							</p>
							<p class="atendimento-chat">Chat Online</p>
							<div class="horario-atendimento">
								<p>Segunda a sexta-feira das 8h30 às 18h.</p>
								<p>(exceto feriados)</p>
							</div>
						</div>
						<ul>
							<li class="left face imagem-bg" title="Curta nosso Facebook"
								onclick="window.open('https://www.facebook.com/LojasKD.com.br')">
							</li>
							<li class="left twitter imagem-bg" title="Siga nosso Twitter"
								onclick="window.open('https://twitter.com/lojaskd')"></li>
							<li class="left gmais imagem-bg"
								title="Acompanhe a gente no Google +"
								onclick="window.open('https://plus.google.com/+lojaskd')">
							</li>
							<li class="left pint imagem-bg"
								title="Inspire-se no nosso Pinterest"
								onclick="window.open('https://pinterest.com/lojaskd/')"></li>
							<li class="left instagram imagem-bg" title="Siga nosso Instagram"
								onclick="window.open('https://www.instagram.com/lojaskd.com.br/')">
							</li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="wrap-footer wrap-links">
			<div class="footer">
				<div class="links left">
					<ul>
						<li>
							<p class="title">A LojasKD:</p>
						</li>
						<li><a href="https://www.lojaskd.com.br/sobre/"
							title="Sobre a LojasKD"> Sobre a LojasKD</a></li>
						<li><a
							href="https://www.lojaskd.com.br/responsabilidade-ambiental/"
							title="Meio ambiente"> Meio ambiente</a></li>
						<li><a href="https://www.lojaskd.com.br/atendimento/"
							title="Contato"> Central de Atendimento</a></li>
					</ul>
					<ul>
						<li>
							<p class="title">Para comprar:</p>
						</li>
						<li><a href="https://www.lojaskd.com.br/atendimento/"
							title="Dúvidas mais comuns"> Dúvidas mais comuns</a></li>
						<li><a href="https://www.lojaskd.com.br/pagamentos/"
							title="Formas de pagamento"> Formas de pagamento</a></li>
						<li><a
							href="https://www.lojaskd.com.br/seguranca-e-privacidade/"
							title="Segurança e Privacidade"> Segurança e Privacidade</a></li>
						<li class="compravende"><a
							href="https://www.lojaskd.com.br/contrato-compra-venda/"
							class="fancybox fancybox.iframe"
							title="Contrato de Compra e Venda"
							data-event-category="Contrato de Compra e Venda"
							data-event-action="Rodapé" data-event> Contrato de Compra e
								Venda</a></li>
						<li><a href="javascript:void(0);" rel='aba2'
							class="confira-pagamentos confira-pagamentos-prd entenda-prazo-prd"
							title="Veja as regras aqui"> </a></li>
						<li><a href="javascript:void(0);" class="floater-full"> </a>
						</li>
					</ul>
					<ul>
						<li>
							<p class="title">Após sua compra:</p>
						</li>
						<li><a href="https://www.lojaskd.com.br/areavip/"
							title="Acompanhe seu pedido"> Acompanhe seu pedido</a></li>
						<li><a href="https://www.lojaskd.com.br/montagem/"
							title="Montagem"> Montagem</a></li>
						<li><a href="https://www.lojaskd.com.br/atendimento/"
							title="Troca ou devolução"> Troca ou devolução</a></li>
						<li><a
							href="https://www.lojaskd.com.br/comentarios-de-produtos/"
							title="Comentar sobre seu móvel"> Comentar sobre seu móvel</a>
						</li>
					</ul>
					<ul class="vejatambem">
						<li>
							<p class="title">Veja também:</p>
						</li>
						<li><a href="https://www.lojaskd.com.br/trabalhe-conosco/"
							title="Trabalhe conosco"> Trabalhe conosco</a></li>
						<li><a href="javascript:void(0);"
							onclick="openPopChat('https://fs24.formsite.com/lojaskd/trabalhe/', 430, 640);"
							title="Seja nosso fornecedor"> Seja nosso fornecedor</a></li>
						<li><a href="javascript:void(0);"
							onclick="openPopChat('https://fs24.formsite.com/lojaskd/trabalhe/', 430, 640);"
							title="Seja um montador"> Seja um montador</a></li>
						<li><a href="https://www.lojaskd.com.br/blackfriday/"
							title="Novas Campanhas" data-event-category="Veja Também"
							data-event-action="Rodapé" data-event-label="Black Friday"
							data-event> Black Friday</a></li>
						<li><a href="https://www.lojaskd.com.br/econfiavel/"
							title="Posso confiar" target="_blank"
							data-event-category="Veja Também" data-event-action="Rodapé"
							data-event-label="Posso confiar" data-event> Posso confiar?</a></li>
					</ul>
					<div id='frm-footer-site' class='lkd-form lkd-vertical-form'>
						<div>
							<p>
								<i class="lkd-newsletter__icon"> </i> <span
									class='lkd-form-message'> Cadastre-se e receba nossas
									Dicas de Decoração e Promoções :)</span>
							</p>
						</div>
						<div>
							<form id="form-footer-site"
								class="lkd-form-newsletter js-newsletter"
								data-origin="rodape desktop"
								data-url="www.lojaskd.com.br/?gclid=Cj0KCQjwgb3OBRDNARIsAOyZbxAz-6kTzcuycj_CQlqVLZI9zeyMsQbl8xNoIq2cyyJApT1w2G9oVjsaAsKvEALw_wcB">
								<label class="kr-visually-hidden" for="newsletterInputNome">
									Digite seu nome completo</label> <input type="text" maxlength="100"
									name="name" placeholder="Nome" id="newsletterInputNome">
								<label class="kr-visually-hidden" for="newsletterInputEmail">
									Digite seu Email</label> <input type="text" maxlength="100" name="mail"
									placeholder="E-mail" id="newsletterInputEmail"> <input
									type="hidden" name="local" value="newsletter_mobile"> <input
									name="submit" type="submit" value="Cadastrar" title="Cadastrar"
									role="button">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="wrap-footer">
			<div class="footer">
				<div class="bloco-links">
					<p>Mais buscados</p>
					<ul>
						<li>
							<ul>
								<li><a href="/moveis/sala-de-estar/racks-para-tv/"
									title="Rack para TV"> Rack para TV</a></li>
								<li><a
									href="/moveis/sala-de-estar/racks-para-tv/racks-com-painel-para-tv/"
									title="Racks com Painel"> Racks com Painel</a></li>
							</ul>
						</li>
						<li>
							<ul>
								<li><a
									href="/moveis/quarto/guarda-roupas-casal-e-solteiro/"
									title="Guarda-Roupa"> Guarda-Roupa</a></li>
								<li><a href="/moveis/sala-de-estar/cubos-e-nichos/"
									title="Cubos e Nichos"> Cubos e Nichos</a></li>
							</ul>
						</li>
						<li>
							<ul>
								<li><a href="/moveis/escritorio/mesas/"
									title="Mesa para Escritório"> Mesa para Escritório</a></li>
								<li><a href="/moveis/escritorio/mesas/"
									title="Mesas e cadeiras"> Mesas e cadeiras</a></li>
							</ul>
						</li>
						<li>
							<ul>
								<li><a href="/busca/treliche/" title="Cama"> Cama</a></li>
								<li><a href="/busca/treliche/" title="Treliche">
										Treliche</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="wrap-footer wrap-infoshomegeral">
			<div class="footer">
				<div class="infoshomegeral left">
					<div class="infoshome left">
						<h1>LojasKD: Sua Loja de Móveis Online!</h1>
						<p>Mobiliar a casa toda nunca foi tão fácil. Não somos
							apenas uma Loja de Móveis Online. Somos uma Loja de Decoração
							especializada em móveis e 100% digital. Isso quer dizer que,
							não importa onde você esteja, o melhor lugar no Brasil inteiro
							para encontrar o móvel perfeito para sua decoração é aqui ;)</p>
						<p>
							<strong> Somos motivados pela sua decoração!</strong> <br />
							Queremos fazer parte da sua vida e deixar sua casa mais feliz!
							Nosso segredo? Decoração! Tudo para criar o cenário ideal para
							os bons momentos da sua família e amigos.
						</p>
						<p>
							<strong> Por isso, todos os dias criamos dezenas de
								ambientes decorados pensando em você. </strong> Atualmente, são mais de
							5000 ambientes completinhos, desde <a
								href="/ambientes-decorados/banheiro/"
								title="Banheiros decorados"> Banheiros decorados</a> até <a
								href="/ambientes-decorados/quarto/" title="Quartos decorados">
								Quartos decorados</a> para transformar sua casa em um sonho.
						</p>
					</div>
					<div class="infoshome left">
						<p>
							Assim, você vê como seu cantinho vai ficar, não importa se é
							a Sala ou a <a href="/ambientes-decorados/cozinha/"
								title="Cozinha decorada"> Cozinha decorada</a> . Pode retirar ou
							incluir móveis de acordo com a sua necessidade e criar o
							ambiente perfeito!
						</p>
						<p>Inspire-se e aproveite toda essa praticidade para renovar
							sua casa.</p>
						<h2>Uma loja de móveis online pra decorar de verdade.</h2>
						<p>Decorar a casa exige criatividade e estamos aqui para
							facilitar seu trabalho ;)</p>
						<p>Precisa de ajuda para escolher cor, material, acertar as
							dimensões corretas e resolver qualquer outra dúvida? Conte com
							a nossa equipe de atendimento.</p>
						<h2>Que tal uma loja de decoração especializada em móveis?</h2>
					</div>
					<div class="infoshome right">
						<p>Com milhares de produtos fica fácil encontrar o móvel que
							completa sua decoração.</p>
						<div class="moveisdeco left">
							<ul class="left">
								<li>- <a href="https://www.lojaskd.com.br/moveis/quarto/"
									title="Móveis para Quarto"> Móveis para Quarto</a>
								</li>
								<li>- <a
									href="https://www.lojaskd.com.br/moveis/quarto-do-bebe/"
									title="Móveis para Quarto do Bebê"> Móveis para Quarto
										do Bebê</a>
								</li>
								<li>- <a
									href="https://www.lojaskd.com.br/moveis/quarto-infantil/"
									title="Móveis para Quarto Infantil"> Móveis para Quarto
										Infantil</a>
								</li>
								<li>- <a
									href="https://www.lojaskd.com.br/moveis/quarto-juvenil/"
									title="Móveis para Quarto Juvenil"> Móveis para Quarto
										Juvenil</a>
								</li>
								<li>- <a
									href="https://www.lojaskd.com.br/moveis/sala-de-estar/"
									title="Móveis para Sala de Estar"> Móveis para Sala de
										Estar</a>
								</li>
								<li>- <a
									href="https://www.lojaskd.com.br/moveis/sala-de-jantar/"
									title="Móveis para Sala de Jantar"> Móveis para Sala de
										Jantar</a>
								</li>
							</ul>
							<ul class="right direita">
								<li>- <a href="https://www.lojaskd.com.br/moveis/cozinha/"
									title="Móveis para Cozinha"> Móveis para Cozinha</a>
								</li>
								<li>- <a
									href="https://www.lojaskd.com.br/moveis/escritorio/"
									title="Móveis para Escritório"> Móveis para Escritório</a>
								</li>
								<li>- <a
									href="https://www.lojaskd.com.br/moveis/lavanderia/"
									title="Móveis para Lavanderia"> Móveis para Lavanderia</a>
								</li>
								<li>- <a href="https://www.lojaskd.com.br/moveis/banheiro/"
									title="Móveis para Banheiro"> Móveis para Banheiro</a>
								</li>
								<li>- <a href="https://www.lojaskd.com.br/moveis/jardim/"
									title="Móveis para Jardim"> Móveis para Jardim</a>
								</li>
							</ul>
						</div>
						<div class="clearfix"></div>
						<p>
							Não deixe de conferir a seção especial de <a
								href="https://www.lojaskd.com.br/modulados/vitrine/"
								title="Móveis Modulados"> Móveis Modulados</a> , feita
							especialmente para você aproveitar cada cantinho da sua casa ;)
						</p>
						<p>Queremos fazer parte da sua vida, decorar sua casa com seu
							estilo e com a sua cara.</p>
						<p class="title-style">
							<strong> Vem decorar com a gente!</strong>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="wrap-footer">
			<div class="footer">
				<div class="detalhesEndereco left">
					<div class="detalhesConteudoTexto">
						<p class="ae font9">
							&reg 2017 LKD Comércio Eletrônico S/A / www.lojaskd.com.br /
							CNPJ: 10.979.023/0001-43 / Inscrição Estadual: 90.488.160-00<br />
							Caixa postal exclusiva da loja virtual: Rua Wanda Santos
							Mullmann, 1373 - Pinhais - PR / CEP 83323-123 / Vendas realizadas
							somente pela internet / sac@lojaskd.com.br / Telefone: (41)
							3059-4200 / Atendimento: Dias úteis das 8h30 às 18h.
						</p>
					</div>
				</div>
			</div>
		</div>
		<script type='text/javascript'
			src='//www.lightboxcdn.com/vendor/499f5fae-d1a9-43ab-8233-95c386d8e8aa/lightbox_inline.js'> </script>
		<div id='499f5fae-d1a9-43ab-8233-95c386d8e8aa'
			class='lightbox-container'></div>
		<script type="text/javascript"> 
if (document.getElementById('499f5fae-d1a9-43ab-8233-95c386d8e8aa') != null){
document.getElementById('499f5fae-d1a9-43ab-8233-95c386d8e8aa').style.display = 'none';
}</script>
	</div>
	<link rel="stylesheet" type="text/css"
		href="//assets.lojaskd.com.br/releases/production/dist/stylesheets/desktop-footer.min.css?v=29092017043322">
	<script type="text/javascript"
		src="//assets.lojaskd.com.br/releases/production/dist/javascripts/bundle-utils.min.js?v=29092017043322"> </script>
	<script type="text/javascript"
		src="//assets.lojaskd.com.br/releases/production/dist/javascripts/desktop.min.js?v=29092017043322"> </script>
	<script> 
//integracao com a exacttarget (OPTIN)
jQuery('.frm_news_banner').on('submit', function (e) {
e.preventDefault();
var parent = jQuery(this).attr('id');
var nome = jQuery('#' + parent + '').find('[name="nome"]');
var email = jQuery('#' + parent + '').find('[name="email"]');
var url = jQuery('#' + parent + '').find('[name="url"]');
var ip = jQuery('#' + parent + '').find('[name="ip"]');
var local = jQuery('#' + parent + '').find('[name="local"]');
if (!validation(email)) {
e.preventDefault();
return false;
} else {
jQuery.ajax({
url: 'https://www.lojaskd.com.br/cad-newsletter',
type: 'POST',
data: {
nome: nome.val(),
email: email.val(),
url: url.val(),
ip: ip.val(),
local: local.val()
},
success: function (result) {
if (result == 'true') {
jQuery('#frm_bnr_submit').prop('disabled', true);
jQuery('#frm_news_banner').css('display', 'none');
jQuery('#banner_form_exito').css('display', 'block');
jQuery('.presente').addClass('is-open');
}
},
error: function () {
jQuery('#frm_news_banner').css('display', 'none');
jQuery('#banner_form_email_problem').css('display', 'block');
setTimeout(function () {
jQuery('#frm_news_banner').css('display', 'block');
jQuery('#banner_form_email_problem').css('display', 'none');
jQuery('.presente').addClass('is-open');
}, 5000);
}
});
}
});
function validation(email) {
var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
if (email.val() == 'Email' || email.val() == '' || (pattern.test(email.val()) == false)) {
jQuery('#banner_inp_mail').css('borderColor', '#EE826F')
return false;
}
return true;
}</script>

	<script src="<c:url value="/resources/js/jquery.inview.min.js" />"></script>
	<script>
        $(function () {

            $('#mi-slider').catslider();

        });
	</script>
	<script>
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

		function navegacao(info) {
			this.user = getCookie('Username');
			this.tipo = "navegacao";
			this.horario = new Date();
			this.tipoDispositivo = getTipoDispositivo();
			this.browser = getBrowser();
			this.pagina = location.pathname != "" ? location.pathname : "/home";
		}
		
		function eventos() {
			this.tempoEmTela = {};
			this.hovers = [];
			this.cliques = [];
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
		
		function getTipoDispositivo() {
			let ua = navigator.userAgent;

		    mobile = /IEMobile|Windows Phone|Lumia/i.test(ua) ? 1 : /iPhone|iP[oa]d/.test(ua) ? 1 : /Android/.test(ua) ? 1 :
		    	/BlackBerry|PlayBook|BB10/.test(ua) ? 1 : /Mobile Safari/.test(ua) ? 1 : /webOS|Mobile|Tablet|Opera Mini|\bCrMo\/|Opera Mobi/i.test(ua) ? 1 : 0;

		    tablet = /Tablet|iPad/i.test(ua);
			
		    if (tablet) {
		    	return 'TABLET';
		    } else if(mobile) {
		    	return 'CELULAR';
		    } else {
		    	return 'DESKTOP';
		    }
		}

		
		function getPosition() {
			let posicaoGeo;
			if (navigator.geolocation){
		    	navigator.geolocation.getCurrentPosition( function(posicao) {
		    		posicaoGeo = { 
		    				latitude: posicao.coords.latitude, 
		    				longitude: posicao.coords.longitude
		    		};
			    });
			}
			return posicaoGeo;
		}
		
		$(document).ready(function(){ 
			var browser_version= parseInt(navigator.appVersion);
			var browser_type = navigator.appCodeName;
			var user = getCookie('Username');
			getPosition();
			
			if (user == ''){
				var d = new Date();
				var date = d.getTime();
				d.setTime(d.getTime() + (60*24*60*60*1000));
				var expires = "expires="+ d.toUTCString();
				document.cookie = "Username=" + date + ";" + expires + ";path=/";
				user = date;
			}
			
			// salvar navegacao inicial 
			let infoNavegacao = new navegacao(browser_type + browser_version);
			salvar(infoNavegacao, "navegacao");
			
			
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
				salvar(eventosASalvar.tempoEmPagina, "tempoEmPagina");
				
				eventosASalvar = new eventos();
				
				nomeElementosVisiveis.forEach(function(nomeElemento) {
					eventosASalvar.tempoEmTela[nomeElemento] = new inview(nomeElemento);
					iniciarContagemInview(eventosASalvar.tempoEmTela[nomeElemento]);
				});
			}
			setInterval(salvarEventos, 60000);


			// tempo de navega��o
			let tempoEmPagina = new tempoNavegacao();
			
			$( window ).on('unload', function() {
				eventosASalvar.tempoEmPagina.tempoTotal = Date.now() - eventosASalvar.tempoEmPagina.tempoInicio;
				salvarEventos();
			});
			
			// secao para salvar elementos clicados/hover
			$(".produto").click(function() { eventosASalvar.cliques.push(new clique($(this).attr('id'))) });
			
			$(".produto").hover(
				function() {
					let nomeElemento = $(this).attr('id');
					setTimeoutConst = setTimeout(function() {
						eventosASalvar.hovers.push(new hover(nomeElemento));
					}, 5000);
				},function(){
					clearTimeout(setTimeoutConst);
			   	}
			);
			

			// se��o para salvar elementos que est�o sendo vistos
			function iniciarContagemInview(elemento) {
				elemento["horarioInicioInview"] = Date.now();
				elemento["inview"] = true;
			}
			
			function pararContagemInview(elemento) {
				elemento["tempoTotal"] += Date.now() - elemento["horarioInicioInview"];
				elemento["horarioInicioInview"] = undefined;
			}
		
			$(".produto").on("inview", function(event, isInView) {
				let nomeElemento = $(this).attr("id");
				
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
		
			// voltar contagem quando pagina sair de foco
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
	</script>


	<script type="text/javascript"
		src="https://apis.google.com/js/plusone.js"> </script>
	<script type="text/javascript"> 
var google_conversion_id = 1025888382;
var google_conversion_language = "en";
var google_conversion_format = "3";
var google_conversion_color = "ffffff";
var google_conversion_label = "xQxGCLLPxAIQ_qCX6QM";
var google_conversion_value = 0;
var google_custom_params = {
};
var google_remarketing_only = true;</script>
	<script type="text/javascript"
		src="//www.googleadservices.com/pagead/conversion.js"> </script>
	<noscript>
		<div style="display: inline;">
			<img height="1" width="1" style="border-style: none;" alt=""
				src="//www.googleadservices.com/pagead/conversion/1025888382/?label=xQxGCLLPxAIQ_qCX6QM&amp;guid=ON&amp;script=0" />
		</div>
	</noscript>
	<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"aa62a0219f","applicationID":"32273587,32273588","transactionName":"MVABZxcDChIEUkBRCwgaIlARCwsPSnlbVQFJXA1XABo=","queueTime":0,"applicationTime":46,"atts":"HRcCEV8ZGRw=","errorBeacon":"bam.nr-data.net","agent":""}</script>
</body>
</html>

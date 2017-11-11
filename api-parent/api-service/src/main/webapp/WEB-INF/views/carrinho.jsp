<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <meta charset="UTF-8">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VQIBUFdWCRADVlNVBAQPUQ=="};window.NREUM||(NREUM={}),__nr_require=function(t,n,e){function r(e){if(!n[e]){var o=n[e]={exports:{}};t[e][0].call(o.exports,function(n){var o=t[e][1][n];return r(o||n)},o,o.exports)}return n[e].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<e.length;o++)r(e[o]);return r}({1:[function(t,n,e){function r(t){try{s.console&&console.log(t)}catch(n){}}var o,i=t("ee"),a=t(15),s={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,o.indexOf("dev")!==-1&&(s.dev=!0),o.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&i.on("internal-error",function(t){r(t.stack)}),s.dev&&i.on("fn-err",function(t,n,e){r(e.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,n){return t}).join(", ")))},{}],2:[function(t,n,e){function r(t,n,e,r,o){try{d?d-=1:i("err",[o||new UncaughtException(t,n,e)])}catch(s){try{i("ierr",[s,c.now(),!0])}catch(u){}}return"function"==typeof f&&f.apply(this,a(arguments))}function UncaughtException(t,n,e){this.message=t||"Uncaught error with no additional information",this.sourceURL=n,this.line=e}function o(t){i("err",[t,c.now()])}var i=t("handle"),a=t(16),s=t("ee"),c=t("loader"),f=window.onerror,u=!1,d=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(l){"stack"in l&&(t(8),t(7),"addEventListener"in window&&t(5),c.xhrWrappable&&t(9),u=!0)}s.on("fn-start",function(t,n,e){u&&(d+=1)}),s.on("fn-err",function(t,n,e){u&&(this.thrown=!0,o(e))}),s.on("fn-end",function(){u&&!this.thrown&&d>0&&(d-=1)}),s.on("internal-error",function(t){i("ierr",[t,c.now(),!0])})},{}],3:[function(t,n,e){t("loader").features.ins=!0},{}],4:[function(t,n,e){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(8),s=t(7),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",y="pushState",g=t("loader");g.features.stn=!0,t(6);var b=NREUM.o.EV;o.on(m,function(t,n){var e=t[0];e instanceof b&&(this.bstStart=g.now())}),o.on(w,function(t,n){var e=t[0];e instanceof b&&i("bst",[e,n,this.bstStart,g.now()])}),a.on(m,function(t,n,e){this.bstStart=g.now(),this.bstType=e}),a.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),this.bstType])}),s.on(m,function(){this.bstStart=g.now()}),s.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),"requestAnimationFrame"])}),o.on(y+p,function(t){this.time=g.now(),this.startPath=location.pathname+location.hash}),o.on(y+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,n,e){function r(t){for(var n=t;n&&!n.hasOwnProperty(u);)n=Object.getPrototypeOf(n);n&&o(n)}function o(t){s.inPlace(t,[u,d],"-",i)}function i(t,n){return t[1]}var a=t("ee").get("events"),s=t(18)(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";n.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,n){var e=t[1],r=c(e,"nr@wrapped",function(){function t(){if("function"==typeof e.handleEvent)return e.handleEvent.apply(e,arguments)}var n={object:t,"function":e}[typeof e];return n?s(n,"fn-",null,n.name||"anonymous"):e});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,n,e){var r=t("ee").get("history"),o=t(18)(r);n.exports=r,o.inPlace(window.history,["pushState","replaceState"],"-")},{}],7:[function(t,n,e){var r=t("ee").get("raf"),o=t(18)(r),i="equestAnimationFrame";n.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],8:[function(t,n,e){function r(t,n,e){t[0]=a(t[0],"fn-",null,e)}function o(t,n,e){this.method=e,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,e)}var i=t("ee").get("timer"),a=t(18)(i),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";n.exports=i,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(c+u,r),i.on(s+u,o)},{}],9:[function(t,n,e){function r(t,n){d.inPlace(n,["onreadystatechange"],"fn-",s)}function o(){var t=this,n=u.context(t);t.readyState>3&&!n.resolved&&(n.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,y,"fn-",s)}function i(t){g.push(t),h&&(x?x.then(a):w?w(a):(E=-E,O.data=E))}function a(){for(var t=0;t<g.length;t++)r([],g[t]);g.length&&(g=[])}function s(t,n){return n}function c(t,n){for(var e in t)n[e]=t[e];return n}t(5);var f=t("ee"),u=f.get("xhr"),d=t(18)(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",y=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],g=[];n.exports=u;var b=window.XMLHttpRequest=function(t){var n=new p(t);try{u.emit("new-xhr",[n],n),n.addEventListener(v,o,!1)}catch(e){try{u.emit("internal-error",[e])}catch(r){}}return n};if(c(p,b),b.prototype=p.prototype,d.inPlace(b.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,n){r(t,n),i(n)}),u.on("open-xhr-start",r),h){var x=m&&m.resolve();if(!w&&!m){var E=1,O=document.createTextNode(E);new h(a).observe(O,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],10:[function(t,n,e){function r(t){var n=this.params,e=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<d;r++)t.removeEventListener(u[r],this.listener,!1);if(!n.aborted){if(e.duration=a.now()-this.startTime,4===t.readyState){n.status=t.status;var i=o(t,this.lastSize);if(i&&(e.rxSize=i),this.sameOrigin){var c=t.getResponseHeader("X-NewRelic-App-Data");c&&(n.cat=c.split(", ").pop())}}else n.status=0;e.cbTime=this.cbTime,f.emit("xhr-done",[t],t),s("xhr",[n,e,this.startTime])}}}function o(t,n){var e=t.responseType;if("json"===e&&null!==n)return n;var r="arraybuffer"===e||"blob"===e||"json"===e?t.response:t.responseText;return h(r)}function i(t,n){var e=c(n),r=t.params;r.host=e.hostname+":"+e.port,r.pathname=e.pathname,t.sameOrigin=e.sameOrigin}var a=t("loader");if(a.xhrWrappable){var s=t("handle"),c=t(11),f=t("ee"),u=["load","error","abort","timeout"],d=u.length,l=t("id"),p=t(14),h=t(13),m=window.XMLHttpRequest;a.features.xhr=!0,t(9),f.on("new-xhr",function(t){var n=this;n.totalCbs=0,n.called=0,n.cbTime=0,n.end=r,n.ended=!1,n.xhrGuids={},n.lastSize=null,p&&(p>34||p<10)||window.opera||t.addEventListener("progress",function(t){n.lastSize=t.loaded},!1)}),f.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),f.on("open-xhr-end",function(t,n){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&n.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),f.on("send-xhr-start",function(t,n){var e=this.metrics,r=t[0],o=this;if(e&&r){var i=h(r);i&&(e.txSize=i)}this.startTime=a.now(),this.listener=function(t){try{"abort"===t.type&&(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof n.onload))&&o.end(n)}catch(e){try{f.emit("internal-error",[e])}catch(r){}}};for(var s=0;s<d;s++)n.addEventListener(u[s],this.listener,!1)}),f.on("xhr-cb-time",function(t,n,e){this.cbTime+=t,n?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof e.onload||this.end(e)}),f.on("xhr-load-added",function(t,n){var e=""+l(t)+!!n;this.xhrGuids&&!this.xhrGuids[e]&&(this.xhrGuids[e]=!0,this.totalCbs+=1)}),f.on("xhr-load-removed",function(t,n){var e=""+l(t)+!!n;this.xhrGuids&&this.xhrGuids[e]&&(delete this.xhrGuids[e],this.totalCbs-=1)}),f.on("addEventListener-end",function(t,n){n instanceof m&&"load"===t[0]&&f.emit("xhr-load-added",[t[1],t[2]],n)}),f.on("removeEventListener-end",function(t,n){n instanceof m&&"load"===t[0]&&f.emit("xhr-load-removed",[t[1],t[2]],n)}),f.on("fn-start",function(t,n,e){n instanceof m&&("onload"===e&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),f.on("fn-end",function(t,n){this.xhrCbStart&&f.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,n],n)})}},{}],11:[function(t,n,e){n.exports=function(t){var n=document.createElement("a"),e=window.location,r={};n.href=t,r.port=n.port;var o=n.href.split("://");!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=n.hostname||e.hostname,r.pathname=n.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname);var i=!n.protocol||":"===n.protocol||n.protocol===e.protocol,a=n.hostname===document.domain&&n.port===e.port;return r.sameOrigin=i&&(!n.hostname||a),r}},{}],12:[function(t,n,e){function r(){}function o(t,n,e){return function(){return i(t,[f.now()].concat(s(arguments)),n?null:this,e),n?void 0:this}}var i=t("handle"),a=t(15),s=t(16),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,n){u[n]=o(l+n,!0,"api")}),u.addPageAction=o(l+"addPageAction",!0),u.setCurrentRouteName=o(l+"routeName",!0),n.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,n){var e={},r=this,o="function"==typeof n;return i(p+"tracer",[f.now(),t,e],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],e),o)try{return n.apply(this,arguments)}finally{c.emit("fn-end",[f.now()],e)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,n){h[n]=o(p+n)}),newrelic.noticeError=function(t){"string"==typeof t&&(t=new Error(t)),i("err",[t,f.now()])}},{}],13:[function(t,n,e){n.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(n){return}}}},{}],14:[function(t,n,e){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),n.exports=r},{}],15:[function(t,n,e){function r(t,n){var e=[],r="",i=0;for(r in t)o.call(t,r)&&(e[i]=n(r,t[r]),i+=1);return e}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],16:[function(t,n,e){function r(t,n,e){n||(n=0),"undefined"==typeof e&&(e=t?t.length:0);for(var r=-1,o=e-n||0,i=Array(o<0?0:o);++r<o;)i[r]=t[n+r];return i}n.exports=r},{}],17:[function(t,n,e){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],18:[function(t,n,e){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(16),a="nr@original",s=Object.prototype.hasOwnProperty,c=!1;n.exports=function(t,n){function e(t,n,e,o){function nrWrapper(){var r,a,s,c;try{a=this,r=i(arguments),s="function"==typeof e?e(r,a):e||{}}catch(f){l([f,"",[r,a,o],s])}u(n+"start",[r,a,o],s);try{return c=t.apply(a,r)}catch(d){throw u(n+"err",[r,a,d],s),d}finally{u(n+"end",[r,a,c],s)}}return r(t)?t:(n||(n=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,n,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<n.length;c++)s=n[c],a=t[s],r(a)||(t[s]=e(a,f?s+o:o,i,s))}function u(e,r,o){if(!c||n){var i=c;c=!0;try{t.emit(e,r,o,n)}catch(a){l([a,e,r,o])}c=i}}function d(t,n){if(Object.defineProperty&&Object.keys)try{var e=Object.keys(t);return e.forEach(function(e){Object.defineProperty(n,e,{get:function(){return t[e]},set:function(n){return t[e]=n,n}})}),n}catch(r){l([r])}for(var o in t)s.call(t,o)&&(n[o]=t[o]);return n}function l(n){try{t.emit("internal-error",n)}catch(e){}}return t||(t=o),e.inPlace=f,e.flag=a,e}},{}],ee:[function(t,n,e){function r(){}function o(t){function n(t){return t&&t instanceof r?t:t?c(t,s,i):i()}function e(e,r,o,i){if(!l.aborted||i){t&&t(e,r,o);for(var a=n(o),s=h(e),c=s.length,f=0;f<c;f++)s[f].apply(a,r);var d=u[y[e]];return d&&d.push([g,e,r,a]),a}}function p(t,n){v[t]=h(t).concat(n)}function h(t){return v[t]||[]}function m(t){return d[t]=d[t]||o(e)}function w(t,n){f(t,function(t,e){n=n||"feature",y[e]=n,n in u||(u[n]=[])})}var v={},y={},g={on:p,emit:e,get:m,listeners:h,context:n,buffer:w,abort:a,aborted:!1};return g}function i(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var s="nr@context",c=t("gos"),f=t(15),u={},d={},l=n.exports=o();l.backlog=u},{}],gos:[function(t,n,e){function r(t,n,e){if(o.call(t,n))return t[n];var r=e();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(t,n,e){function r(t,n,e,r){o.buffer([t],r),o.emit(t,n,e)}var o=t("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(t,n,e){function r(t){var n=typeof t;return!t||"object"!==n&&"function"!==n?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");n.exports=r},{}],loader:[function(t,n,e){function r(){if(!x++){var t=b.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&n))return u.abort();f(y,function(n,e){t[n]||(t[n]=e)}),c("mark",["onload",a()+b.offset],null,"api");var e=l.createElement("script");e.src="https://"+t.agent,n.parentNode.insertBefore(e,n)}}function o(){"complete"===l.readyState&&i()}function i(){c("mark",["domContent",a()+b.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(s=Math.max((new Date).getTime(),s))-b.offset}var s=(new Date).getTime(),c=t("handle"),f=t(15),u=t("ee"),d=window,l=d.document,p="addEventListener",h="attachEvent",m=d.XMLHttpRequest,w=m&&m.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:m,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1044.min.js"},g=m&&w&&w[p]&&!/CriOS/.test(navigator.userAgent),b=n.exports={offset:s,now:a,origin:v,features:{},xhrWrappable:g};t(12),l[p]?(l[p]("DOMContentLoaded",i,!1),d[p]("load",r,!1)):(l[h]("onreadystatechange",o),d[h]("onload",r)),c("mark",["firstbyte",s],null,"api");var x=0,E=t(17)},{}]},{},["loader",2,10,4,3]);</script>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

    <link rel="icon" type="image/png" sizes="32x32" href="/favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicons/favicon-16x16.png">
<link rel="manifest" href="/favicons/manifest.json">
<link rel="mask-icon" href="/favicons/safari-pinned-tab.svg" color="#5bbad5">
<link rel="shortcut icon" href="/favicons/favicon.ico">
<meta name="msapplication-config" content="/favicons/browserconfig.xml">
<meta name="theme-color" content="#ffffff">
<!-- iPad iOS7+ com Retina Display -->
<link rel="apple-touch-icon" sizes="152x152" href="/favicons/apple-touch-icon-152x152.png">
<!-- iPad iOS7- com Retina Display -->
<link rel="apple-touch-icon" sizes="144x144" href="/favicons/apple-touch-icon-144x144.png">
<!-- iPhone iOS7+ com Retina Display -->
<link rel="apple-touch-icon" sizes="120x120" href="/favicons/apple-touch-icon-120x120.png">
<!-- iPhone iOS7- com Retina Display -->
<link rel="apple-touch-icon" sizes="114x114" href="/favicons/apple-touch-icon-114x114.png">
<!-- iPad iOS7+ sem retina display e iPad Mini-->
<link rel="apple-touch-icon" sizes="76x76" href="/favicons/apple-touch-icon-76x76.png">
<!-- iPad iOS7- sem retina display  -->
<link rel="apple-touch-icon" sizes="72x72" href="/favicons/apple-touch-icon-72x72.png">
<!-- iPhone iOS7-, iPod Touch e Android 2.2+  -->
<link rel="apple-touch-icon" sizes="180x180" href="/favicons/apple-touch-icon.png">
<meta http-equiv="Content-Language" content="pt-br">
<meta http-equiv="expires" content="Mon, 09 Oct 2017 19:13:08 GMT">

<meta name="p:domain_verify" content="25e4cb5934662231a559341cb54eac02">
<meta name="abstract" content="Loja Virtual, móveis online">
<meta name="classification" content="online store">
<meta name="country" content="Brazil">

	<title>Meu Carrinho na LojasKD Móveis</title>
	<meta name="description" content="" />
<!--Teste AB Vitrine QUARTO_inicio-->
<!--Teste AB Vitrine QUARTO_final-->

<!--Teste AB BOTÃO COMPRAR 10 produtos_inicio-->
<!--Teste AB BOTÃO COMPRAR 10 produtos_final--><script type="text/javascript">
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
</script>

<script>
    /** Function of Google Analytics */
    (function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');


            ga('create', 'UA-8194194-1', {'siteSpeedSampleRate': 10});
    

            ga('set', 'userId', 40868366);

    
    ga('require', 'displayfeatures');
    ga('require', 'ec');

</script>


<script>
                            ga('send', 'pageview');
                    </script>
<!-- End Google Analytics -->

                    
    <link rel="stylesheet" type="text/css" href="//assets.lojaskd.com.br/releases/production/dist/stylesheets/lkd-icons.min.css?v=09102017041541">
    <link rel="stylesheet" type="text/css" href="//assets.lojaskd.com.br/releases/production/dist/stylesheets/fechamento.min.css?v=09102017041541">

    <script>
        var facebook_id = '1805557119678625';
        var assets_cdn = '//assets.lojaskd.com.br/releases/production/';
        var deploy_version = '09102017041541';
        var deviceType = 'desktop';
    </script>
    <script language="javascript" type="text/javascript" src="//assets.lojaskd.com.br/releases/production/dist/javascripts/jquery.min.js?v=09102017041541"></script>
    <script language="javascript" type="text/javascript" src="//assets.lojaskd.com.br/releases/production/dist/javascripts/bundle-utils.min.js?v=09102017041541"></script>
    <script language="javascript" type="text/javascript" src="//assets.lojaskd.com.br/releases/production/dist/javascripts/jquery-migrate.min.js?v=09102017041541"></script>

    
        <!--Force facebok share image -->
    <!-- <meta itemprop="name" property="og:title" content="Meu Carrinho na LojasKD Móveis" /> -->
    <meta itemprop="description" property="og:description" content=""/>
    <meta property="og:image" content="//assets.lojaskd.com.br/releases/production/dist/images/lkd-share.jpg"/>
    <meta property="og:image:secure_url"
          content="//assets.lojaskd.com.br/releases/production/dist/images/lkd-share.jpg"/>
    <!--end Force facebok share image -->

<meta property="og:site_name" content="LojasKD"/>
<!-- Insights http://developers.facebook.com/docs/insights/ -->
<meta property="fb:page_id" content="338338485395"/>
    <!-- Inicio Codigo do Publisher -->
    <link rel="author" href="109593410169386975118" />
    <link rel="Publisher" href="https://plus.google.com/+lojaskd/" />
    <!-- Fim Codigo do Publisher -->

    
    
        
               <script sync type="text/javascript" id="data-layer">

       dataLayer = [{
           /*Detalhes*/
           'produtoDesc': '',

           /*Listagem*/
           'produtosLista': '',
           /*Carrinho*/
           'idProdutos': '73446|73472|73473|73474|73469|73477|73476|73448',
           'valorProdutos': '230.39|498.64|869.82|1120.52|214.23|217.4|348.39|106.11',
           'qtdProdutos': '2|1|1|1|2|2|1|1',
           'nomeProdutos': 'Cantoneira Modulada A548 Smart  100% MDF Branco - Kappesberg|Guarda-roupa Modulado 2 Portas A532 Smart 100% MDF Com 2 Prateleiras e 1 Cabideiro Branco - Kappesberg|Guarda-roupa Modulado 2 Portas A533 Smart 100% MDF com 4 Gavetas e 6 Nichos Branco - Kappesberg|Guarda-roupa Modulado 4 Portas A534 Smart 100% MDF Branco - Kappesberg|Criado-mudo 3 Gavetas A203 Smart  100% MDF Branco - Kappesberg|Ponte Aérea Modulada 1 Porta A541 Smart  100% MDF Branco - Kappesberg|Ponte Modulada 4 Portas A540 Smart  100% MDF 72 x 156 x 47 Branco - Kappesberg|Painel/Cabeceira de Casal A901 Smart  100% MDF 60 x 156 x 2 Branco - Kappesberg',
           'categoriaProdutos': 'Cantoneiras|Guarda-roupas modulados|Guarda-roupas modulados|Guarda-roupas modulados|Criados-mudos|Pontes moduladas|Pontes moduladas|Painéis decorativos',
           'valorTotalProdutos': '4433.26',
           'condicaoProdutos': '',
           'productsURL': 'https://www.lojaskd.com.br/cantoneira-modulada-a548-smart-100-mdf-branco-kappesberg-73446.html|https://www.lojaskd.com.br/guarda-roupa-modulado-2-portas-a532-smart-100-mdf-branco-kappesberg-73472.html|https://www.lojaskd.com.br/guarda-roupa-modulado-2-portas-a533-smart-100-mdf-branco-kappesberg-73473.html|https://www.lojaskd.com.br/guarda-roupa-modulado-4-portas-a534-smart-100-mdf-branco-kappesberg-73474.html|https://www.lojaskd.com.br/criado-mudo-3-gavetas-a203-smart-100-mdf-branco-kappesberg-73469.html|https://www.lojaskd.com.br/ponte-aerea-modulada-1-porta-a541-smart-100-mdf-branco-kappesberg-73477.html|https://www.lojaskd.com.br/ponte-modulada-4-portas-a540-smart-100-mdf-branco-kappesberg-73476.html|https://www.lojaskd.com.br/painel-cabeceira-de-casal-a901-smart-100-mdf-branco-kappesberg-73448.html',

                                 'google_tag_params': {
               'ecomm_pagetype' :'cart',
               'ecomm_prodid' : ['73446','73472','73473','73474','73469','73477','73476','73448'],
               'ecomm_totalvalue' : '4433.26',
               'ecomm_category' : ['Cantoneiras','Guarda-roupas modulados','Guarda-roupas modulados','Guarda-roupas modulados','Criados-mudos','Pontes moduladas','Pontes moduladas','Painéis decorativos'],
               'prodId':    ['73446','73472','73473','73474','73469','73477','73476','73448'],
               'pname':    ['Cantoneira Modulada A548 Smart  100% MDF Branco - Kappesberg Branco Kappesberg','Guarda-roupa Modulado 2 Portas A532 Smart 100% MDF Com 2 Prateleiras e 1 Cabideiro Branco - Kappesberg Branco Com 2 Prateleiras e 1 Cabideiro Kappesberg','Guarda-roupa Modulado 2 Portas A533 Smart 100% MDF com 4 Gavetas e 6 Nichos Branco - Kappesberg Branco com 4 Gavetas e 6 Nichos Kappesberg','Guarda-roupa Modulado 4 Portas A534 Smart 100% MDF Branco - Kappesberg Branco Kappesberg','Criado-mudo 3 Gavetas A203 Smart  100% MDF Branco - Kappesberg Branco Kappesberg','Ponte Aérea Modulada 1 Porta A541 Smart  100% MDF Branco - Kappesberg Branco Kappesberg','Ponte Modulada 4 Portas A540 Smart  100% MDF 72 x 156 x 47 Branco - Kappesberg Branco 72 x 156 x 47 Kappesberg','Painel/Cabeceira de Casal A901 Smart  100% MDF 60 x 156 x 2 Branco - Kappesberg Branco 60 x 156 x 2 Kappesberg'],
                'pcat':    ['Cantoneiras','Guarda-roupas modulados','Guarda-roupas modulados','Guarda-roupas modulados','Criados-mudos','Pontes moduladas','Pontes moduladas','Painéis decorativos'],
                'pvalues':  [4433.26],
                'et':     'carrinho',
                'g':       '',
                'age':    '',
                    },
        
  }];

</script>

        <!-- Google Tag Manager -->
        <script>
            (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-D5WF');
        </script>
        <!-- End Google Tag Manager -->
    </head>
<body id="lkdAreavip" itemscope itemtype="http://schema.org/WebPage" class="carrinho checkout">

    
        <!-- Google Tag Manager (noscript) -->
        <noscript>
            <iframe src="//www.googletagmanager.com/ns.html?id=GTM-D5WF" height="0" width="0" style="display:none;visibility:hidden"></iframe>
        </noscript>
        <!-- End Google Tag Manager (noscript) -->
                <div id="floaterCompraSegura">
  <div id="regrasCampanha">
    <div class="flt_container">
        <div class="flt_back_container">
            <div class="flt_menu">
                <ul>
                    <li title="Loja 100% Segura"><span class="selo-certificado imagem-bg" onclick="trackEvent(['Segurança','Rodapé','Certificado']); window.location.href = 'http://www.lojaskd.com.br/portal/seguranca-e-privacidade';"></span>Certificado <br> AlphaSSL</li>

                    
                    <li title="Navegação Segura Google"><span class="sfg imagem-bg" onclick="window.open('http://google.com/safebrowsing/diagnostic?hl=pt-PT&amp;site=lojaskd.com.br'); trackEvent(['Segurança','Rodapé','Google']);"></span>Google Safe <br>Browsing</li>
                </ul>
            </div>
            <a href="#close-modal" rel="modal:close">
                <div class="flt_close"><i></i></div>
            </a>
        </div>
        <div class="flt_table">
            <div id="flt_dv_1" class="flt_content ct_1">
                <div class="flt_column_vrt_2 flt_border_column">
                    <h2 class="flt_h2_ico flt_fp_ts flt_fp_ts_1">Compra 100% segura LojasKD</h2>
                  <p>Não tem nada melhor do que <strong>decorar</strong> a sua casa de <strong>maneira prática, rápida e segura.</strong><br>

                     Aqui na <strong>LojasKD,</strong> nos preocupamos com nossos clientes em todas as etapas do processo de Compra! Pode ter certeza, você esté em um <strong>site totalmente seguro!</strong>
                     Possuímos o <strong>AlphaSSL da Global Sign®</strong>, um certificado de segurança internacional que utiliza avançadas tecnologias para garantir a sua segurança. A partir do fechamento, todas as informações </strong>são criptografadas em HTTPS</strong> e enviadas por meio de códigos que não podem ser interpretados, deixando os seus dados blindados.</p>

                </div>
                <div class="flt_column_vrt_2">
                  <p>Também possuímos <strong>avaliações do consumidor no Google</strong>, o que demonstra a <strong>confiança e o comprometimento</strong> entre a <strong>LojasKD</strong> e os clientes. O <strong>Google Safe Browsing</strong>, selo de navegação de segurançaa, é outro elemento que garante que você está em um site seguro.</p>
                  <br>
                  <h2 class="flt_h2_ico flt_fp_ts flt_fp_ts_2">Como identificar a segurança?</h2>
                  <p>
                  A <strong>melhor forma</strong> de identificar a segurança é <strong>através do seu navegador</strong> (browser), ele indica se você está em uma <strong>página HTTPS</strong> totalmente segura. <br>Disponibilizar um site seguro é o mínimo que podemos oferecer para você :)
                  </p>
                </div>
            </div>
        </div>
    </div>
  </div>
</div>    
            <header id="header" class="lkd-header lkd-header__flex" data-stickyheader>
    <nav class="lkd-navbar lkd-navbar--top">
        <div class="lkd-container">
            <ul class="lkd-nav lkd-nav--left">
                <li class="lkd-nav__item">
                    <i class="lkd-icon lkd-icon--location"></i> Qual o destino do seu móvel?
                    <a href="#" class="lkd-nav__link" onclick="trackEvent(['Topo','Barra topo','Alterar Região']);" data-change-region>
                        <strong data-regionalism-local>Buscando sua região...</strong>
                    </a>
                </li>
            </ul>

            <ul class="lkd-nav lkd-nav--right">
                <li class="lkd-nav__item">
                    <a href="https://www.lojaskd.com.br/sobre" title="Sobre a LojasKD" class="lkd-nav__link" onclick="trackEvent(['Topo','Barra topo','Quem somos']);">Quem somos</a>
                </li>
                <li class="lkd-nav__item lkd-nav__item--dropdown">
                    <a href="https://www.lojaskd.com.br/atendimento" title="Central de Atendimento" class="lkd-nav__link" onclick="trackEvent(['Topo','Barra topo','Atendimento']);">Atendimento</a>
                </li>
                <li class="lkd-nav__item">
                    <a href="/blog?utm_source=lojaskd&amp;utm_medium=loja" target="_blank" title="Blog de decoração" class="lkd-nav__link" onclick="trackEvent(['Topo','Barra topo','Blog de decoração']);">Blog de decoração</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="lkd-header__inner">
        <div class="lkd-container">
            <h1 class="lkd-header__logo">
                <a href="https://www.lojaskd.com.br" title="LojasKD.com.br - Procurou móveis, encontrou aqui!" class="logo" onclick="trackEvent(['Topo','Logotipo','Logotipo']);">
                        
<img src="//assets-cms.lojaskd.com.br/production/da6280e0-aa00-11e7-abfe-69e7d999ff29.png" alt="LojasKD.com.br - Procurou móveis, encontrou aqui!" width="185">                </a>
            </h1>

            <form action="https://www.lojaskd.com.br/busca/" target="_top"  method="get" class="lkd-search-form lkd-header__search">
    <input type="text" name="pesquisa" class="lkd-search-form__input" placeholder="Encontre os móveis para sua decoração">
    <button class="lkd-search-form__icon-button" type="submit"><i class="lkd-icon lkd-icon--search"></i></button>
</form>
            <nav class="lkd-customer-navbar is-loading" data-customer-navbar>
    <span class="lkd-customer-navbar__button" role="button">
        <span class="hidden" data-logged="true">
            <span data-user-name></span>
            Meus pedidos <i class="lkd-icon lkd-icon--chevron-down"></i>
        </span>
        <span class="hidden" data-logged="false">
            Olá, faça seu <a href="https://www.lojaskd.com.br/login" data-floater-form="#floater_form_login" onclick="trackEvent(['Topo','Área do Cliente','Login']);">login</a> ou <a href="https://www.lojaskd.com.br/login" data-floater-form="#floater_form_signup" onclick="trackEvent(['Topo','Área do Cliente','Cadastro']);">cadastre-se</a> :)
        </span>
    </span>
    <ul class="lkd-dropdown list-unstyled">
        <li class="lkd-dropdown__item">
            <a href="https://www.lojaskd.com.br/areavip/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Área do Cliente','Acompanhar Pedido']);">Acompanhar Pedido</a>
        </li>
        <li class="lkd-dropdown__item">
            <a href="javascript:void(0)" onclick="openPopChat('https://fs24.formsite.com/lojaskd/assis/', 430, 640);trackEvent(['Topo','Área do Cliente','Assistência Técnica']);" class="lkd-dropdown__link">Assistência Técnica</a>
        </li>
        <li class="lkd-dropdown__item">
            <a href="https://www.lojaskd.com.br/areavip/informacoes?acao=alterar_cadastro" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Área do Cliente','Alterar Dados']);">Alterar Dados</a>
        </li>
        <li class="lkd-dropdown__item">
            <a href="https://www.lojaskd.com.br/areavip/listas" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Área do Cliente','Lista de Desejos']);">Lista de Desejos</a>
        </li>
        <li class="lkd-dropdown__footer">
            <a href="https://www.lojaskd.com.br/sair" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Área do Cliente','Sair']);">
                <i class="lkd-icon lkd-icon--power"></i> Sair
            </a>
        </li>
    </ul>
</nav>
            <div class="lkd-header__icons">
    <a href="https://www.lojaskd.com.br/areavip/listas" class="lkd-badge lkd-count-heart" data-noty-count="0" data-wishlist-count onclick="trackEvent(['Topo','Lista de desejos','Lista de desejos']);">
        <span class="kr-visually-hidden">Ir para lista de desejos</span>
        <i class="lkd-header__icon lkd-icon lkd-icon--heart"></i>
    </a>
    <a href="https://www.lojaskd.com.br/carrinho" onclick="trackEvent(['Topo','Carrinho','Carrinho']);" class="lkd-badge" data-noty-count="0" data-cart-count>
        <span class="kr-visually-hidden">Ir para lista de desejos</span>
        <i class="lkd-header__icon lkd-icon lkd-icon--cart"></i>
    </a>
</div>        </div>
    </div>

    
<nav class="lkd-navbar lkd-navbar--primary">
    <ul class="lkd-nav">
        <li class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown">
            <a href="https://www.lojaskd.com.br/moveis/quarto/vitrine/" title="Quarto" class="lkd-nav__link" onclick="trackEvent(['Topo','Quarto','Quarto']);">
                <span>Quarto <i class="lkd-icon lkd-icon--chevron-down"></i></span>
            </a>

            <div class="lkd-dropdown lkd-dropdown--banners">
                <div class="lkd-container">
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/modulados/quarto/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto','Móveis']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/2b19e190-c136-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/ambientes-decorados/quarto/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto','Ambientes']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/66d5a390-bb00-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/moveis/quarto/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto','Modulados']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/496ad0f0-bb00-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                </div>
            </div>
        </li>
        <li class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown">
            <a href="https://www.lojaskd.com.br/moveis/quarto-do-bebe/vitrine/" title="Quarto do Bebê" class="lkd-nav__link" onclick="trackEvent(['Topo','Quarto do Bebê','Quarto do Bebê']);">
                <span>Quarto do Bebê <i class="lkd-icon lkd-icon--chevron-down lkd-nav__icon--position"></i></span>
            </a>

            <div class="lkd-dropdown lkd-dropdown--banners">
                <div class="lkd-container">
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/modulados/quarto-do-bebe/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto do Bebê','Móveis']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/372c8c80-c136-11e6-842e-1dee3bed14f1.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/ambientes-decorados/quarto-do-bebe/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto do Bebê','Ambientes']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/c50fa5f0-bb00-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/moveis/quarto-do-bebe/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto do Bebê','Modulados']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/ab6b0310-bb00-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                </div>
            </div>
        </li>
        <li class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown">
            <a href="https://www.lojaskd.com.br/moveis/quarto-infantil/vitrine/" title="Quarto Infantil" class="lkd-nav__link" onclick="trackEvent(['Topo','Quarto Infantil','Quarto Infantil']);">
                <span>Quarto Infantil <i class="lkd-icon lkd-icon--chevron-down lkd-nav__icon--position"></i></span>
            </a>

            <div class="lkd-dropdown lkd-dropdown--banners">
                <div class="lkd-container">
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/modulados/quarto-infantil/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto Infantil','Móveis']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/5a1502e0-c136-11e6-842e-1dee3bed14f1.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/ambientes-decorados/quarto-infantil/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto Infantil','Ambientes']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/4674f410-bb01-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/moveis/quarto-infantil/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto Infantil','Modulados']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/0cb52ba0-bb01-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                </div>
            </div>
        </li>
        <li class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown">
            <a href="https://www.lojaskd.com.br/moveis/quarto-juvenil/vitrine/" title="Quarto Juvenil" class="lkd-nav__link" onclick="trackEvent(['Topo','Quarto Juvenil','Quarto Juvenil']);">
                <span>Quarto Juvenil <i class="lkd-icon lkd-icon--chevron-down lkd-nav__icon--position"></i></span>
            </a>

            <div class="lkd-dropdown lkd-dropdown--banners">
                <div class="lkd-container">
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/modulados/quarto-juvenil/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto Juvenil','Móveis']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/664a02e0-c136-11e6-842e-1dee3bed14f1.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/ambientes-decorados/quarto-juvenil/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto Juvenil','Ambientes']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/a8bfead0-bb01-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/moveis/quarto-juvenil/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Quarto Juvenil','Modulados']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/8cf3ad00-bb01-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                </div>
            </div>
        </li>
        <li class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown">
            <a href="https://www.lojaskd.com.br/moveis/sala-de-estar/vitrine/" title="Sala de Estar" class="lkd-nav__link" onclick="trackEvent(['Topo','Sala de Estar','Sala de Estar']);">
                <span>Sala de Estar <i class="lkd-icon lkd-icon--chevron-down lkd-nav__icon--position"></i></span>
            </a>

            <div class="lkd-dropdown lkd-dropdown--banners">
                <div class="lkd-container">
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/modulados/sala-de-estar/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Sala de Estar','Móveis']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/71fc6560-c136-11e6-842e-1dee3bed14f1.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/ambientes-decorados/sala-de-estar/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Sala de Estar','Ambientes']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/45e20d70-bb02-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/moveis/sala-de-estar/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Sala de Estar','Modulados']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/15452300-bb02-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                </div>
            </div>
        </li>
        <li class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown">
            <a href="https://www.lojaskd.com.br/moveis/sala-de-jantar/vitrine/" title="Sala de Jantar" class="lkd-nav__link" onclick="trackEvent(['Topo','Sala de Jantar','Sala de Jantar']);">
                <span>Sala de Jantar <i class="lkd-icon lkd-icon--chevron-down lkd-nav__icon--position"></i></span>
            </a>

            <div class="lkd-dropdown lkd-dropdown--banners">
                <div class="lkd-container">
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/lancamentos/sala-de-jantar/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Sala de Jantar','Móveis']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/b4acc030-bbaf-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/ambientes-decorados/sala-de-jantar/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Sala de Jantar','Ambientes']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/cf4baa30-bb02-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/moveis/sala-de-jantar/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Sala de Jantar','Modulados']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/89aec5c0-bb02-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                </div>
            </div>
        </li>
        <li class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown">
            <a href="https://www.lojaskd.com.br/moveis/cozinha/vitrine/" title="Cozinha" class="lkd-nav__link" onclick="trackEvent(['Topo','Cozinha','Cozinha']);">
                <span>Cozinha <i class="lkd-icon lkd-icon--chevron-down"></i></span>
            </a>

            <div class="lkd-dropdown lkd-dropdown--banners">
                <div class="lkd-container">
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/modulados/cozinha/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Cozinha','Móveis']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/7ecedde0-c136-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/ambientes-decorados/cozinha/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Cozinha','Ambientes']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/7fdb6700-bb03-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/moveis/cozinha/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Cozinha','Modulados']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/3b369e30-bb03-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                </div>
            </div>
        </li>
        <li class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown">
            <a href="https://www.lojaskd.com.br/moveis/escritorio/vitrine/" title="Escritório" class="lkd-nav__link" onclick="trackEvent(['Topo','Escritório','Escritório']);">
                <span>Escritório <i class="lkd-icon lkd-icon--chevron-down"></i></span>
            </a>

            <div class="lkd-dropdown lkd-dropdown--banners">
                <div class="lkd-container">
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/modulados/escritorio/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Escritório','Móveis']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/894e8cc0-c136-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/ambientes-decorados/escritorio/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Escritório','Ambientes']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/06821330-bb04-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/moveis/escritorio/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Escritório','Modulados']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/e981c230-bb03-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                </div>
            </div>
        </li>
        <li class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown">
            <a href="https://www.lojaskd.com.br/moveis/lavanderia/vitrine/" title="Lavanderia" class="lkd-nav__link" onclick="trackEvent(['Topo','Lavanderia','Lavanderia']);">
                <span>Lavanderia <i class="lkd-icon lkd-icon--chevron-down"></i></span>
            </a>

            <div class="lkd-dropdown lkd-dropdown--banners">
                <div class="lkd-container">
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/modulados/lavanderia/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Lavanderia','Móveis']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/95630c70-c136-11e6-842e-1dee3bed14f1.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/ambientes-decorados/lavanderia/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Lavanderia','Ambientes']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/676abad0-bb04-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/moveis/lavanderia/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Lavanderia','Modulados']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/49401aa0-bb04-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                </div>
            </div>
        </li>
        <li class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown">
            <a href="https://www.lojaskd.com.br/moveis/banheiro/vitrine/" title="Banheiro" class="lkd-nav__link" onclick="trackEvent(['Topo','Banheiro','Banheiro']);">
                <span>Banheiro <i class="lkd-icon lkd-icon--chevron-down"></i></span>
            </a>

            <div class="lkd-dropdown lkd-dropdown--banners">
                <div class="lkd-container">
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/modulados/banheiro/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Banheiro','Móveis']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/47905430-a948-11e7-abfe-69e7d999ff29.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/ambientes-decorados/banheiro/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Banheiro','Ambientes']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/36db4a50-a948-11e7-abfe-69e7d999ff29.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/moveis/banheiro/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Banheiro','Modulados']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/3c322c30-a948-11e7-abfe-69e7d999ff29.png" alt="">
        </figure>
    </a>
                    </div>
                </div>
            </div>
        </li>
        <li class="lkd-nav__item lkd-nav__item--fixed-width lkd-nav__item--dropdown">
            <a href="https://www.lojaskd.com.br/moveis/jardim/vitrine/" title="Jardim" class="lkd-nav__link" onclick="trackEvent(['Topo','Jardim','Jardim']);">
                <span>Jardim <i class="lkd-icon lkd-icon--chevron-down"></i></span>
            </a>

            <div class="lkd-dropdown lkd-dropdown--banners">
                <div class="lkd-container">
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/lancamentos/jardim/?tipo=moveis" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Jardim','Móveis']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/a32e4bd0-bbaf-11e6-8ff9-d397c3f5e037.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/ambientes-decorados/jardim/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Jardim','Ambientes']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/8a23c750-bb05-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                    <div class="lkd-dropdown__item">
                            <a href="https://www.lojaskd.com.br/moveis/jardim/" class="lkd-dropdown__link" onclick="trackEvent(['Topo','Jardim','Modulados']);">
                <figure class="lkd-dropdown__image">
            <img src="//assets-cms.lojaskd.com.br/production/95b951c0-bbaf-11e6-a01a-61451d04e792.png" alt="">
        </figure>
    </a>
                    </div>
                </div>
            </div>
        </li>
        <li class="lkd-nav__item lkd-nav__item--highlights">
            <a href="https://www.lojaskd.com.br/ambientes-e-moveis-em-promocao/" class="lkd-nav__link" onclick="trackEvent(['Topo','Ofertas','Ofertas']);">Ofertas</a>
        </li>
    </ul>
</nav></header>    
    <header class="lkd-areavip-header">
        <a href="#lateral" role="button" class="lkd-menu-hamburger">
            <span class="kr-visually-hidden">Abrir menu lateral</span>
            <i class="lkd-menu-hamburger__icon"></i>
        </a>
        <a href="/" class="lkd-logo">
                
<img src="//assets-cms.lojaskd.com.br/production/da6280e0-aa00-11e7-abfe-69e7d999ff29.png" alt="LojasKD.com.br - Procurou móveis, encontrou aqui!" width="185">        </a>
    </header>

    <div id="wrap" class="lkd-container">
    
<div id="content" data-ec data-ec-type="cart">
            <div class="banner-admanager-topo">
        <div class='banner-conteudo-vitrine'>
                <script>
function onClickBanner(){

var eventName = 'banners';
var eventBannerName = 'D:D_B:Index_C:fretinho-tudo-agora_P:/toda-loja'; // nome do banner
var eventUrl = 'moveis'; // url da página

ga('send', 'event', eventName, eventBannerName, eventUrl, {
'transport': 'beacon',
'hitCallback': function()
{ document.location = 'http://www.lojaskd.com.br/' + eventUrl; }
});
// NÃO ALTERAR //
}
</script>

<style>
.bannerDes {
	height: 41px;
	width: 1000px;
	background: url(//assets.lojaskd.com.br/campanhas/2017/acoes/para-levar-tudo-agora-nova/70/index-desc_tudo-agora.png) no-repeat center center;
}
.bannerDes .stopwatch {
	height: 30px;
	width: 200px;
	color: #fc6671;
	font-family: lato;
	font-weight: bold;
}
/*link*/
.bannerDes a {
	text-decoration: none;
	display: block;
	height: 41px;
	width: 790px;
}
/*link*/
.bannerDes .stopwatch div#revBan {
	display: inline-block;
}
.bannerDes .stopwatch span {
	display: inline-block;
	font-size: 36px;
}
.bannerDes .stopwatch span.hours {
}
.latA {
	width: 1000px;
	height: 40px;
	position: relative;
	cursor:pointer;
}
.bannerleft {
  bottom: 1px;
  left: 686px;
}
</style>

<div id="bannerFlashRelogioSky" class="bannerDes" > 
  <!--Lateral A / Aqui vai o link do banner A(window.parent.location.href='')(lembrar de alterar o title de acordo com a campanha)_inicio-->
  <div class="latA" onclick="onClickBanner()">
    <div class="stopwatch right">
      <div class="bannerleft horario" id="horario" style="position:absolute; cursor:default;"> <span class="hours">00:00:00:00</span> </div>
    </div>
  </div>
   <script type="text/javascript">var dataInicioCampanha = '2017-10-09 23:59:59';</script>
</div>
        </div>
    </div>
    <div id="conteudo" class="full">

                <div class="agrupaTopoCarrinho clearfloat">
            <div class="titulo">
                                    <p class="cart_user">Carrinho de <strong
                                class="client_name">karol  sardo</strong></p>
                    <p class="info_cart_user">Se você não é <strong
                                class="client_name">karol  sardo</strong> <a
                                href="https://www.lojaskd.com.br/sair" title="sair">clique aqui</a> para sair</p>
                            </div>
            <div id="etapas">

                <p><b class="font16 bold">Falta muito pouco para você decorar sua casa.</b></p>
    
                <img src="//assets.lojaskd.com.br/releases/production/dist/images/carrinho.gif" alt="Você está no carrinho"
                 class="img-responsive"/>
    
                <img src="//assets.lojaskd.com.br/releases/production/dist/images/identificacao-off.gif" alt="Identificação"
                 class="img-responsive"/>
    
                <img src="//assets.lojaskd.com.br/releases/production/dist/images/cadastro-off.gif" alt="Cadastro"
                 class="img-responsive"/>
    
                <img src="//assets.lojaskd.com.br/releases/production/dist/images/pagamento-off.gif" alt="Pagamento"
                 class="img-responsive"/>
    
                <img src="//assets.lojaskd.com.br/releases/production/dist/images/conclusao-off.gif" alt="Conclusão"
                 class="img-responsive"/>
    </div>        </div>

                <a id="entendaprazo" href="javascript:void(0)" class="entenda-prazo-prd" title="Entenda o Prazo"
           onclick="trackEvent(['Carrinho','Entenda o Prazo','_']);">
        </a>
        
        <div class="botoesCarrinhoSuperior">
            <form name="frm_carrinho_bt" method="post" action="https://www.lojaskd.com.br/carrinho.php" onsubmit="trackEvent(['_linkByPost', this])">
                                                                                    <input class="buttons finalizar-compra-large hidden-text right comprar" type="image" src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif" name="btn_fechar_compra_1" id="btn_fechar_compra_1" title="Finalizar Compra" onclick="trackEvent(['Carrinho','Finalizar compra - A','Topo']);" style='display:0'/>
                <i class="imagem-bg cadeado compra-segura-medium abrirFloaterCadeado"></i>
            </form>

            <a href="https://www.lojaskd.com.br" title="Clique aqui para retornar a loja e continuar comprando"
               class="buttons voltar-a-comprar hidden-text">
                Voltar para comprar mais
            </a>
        </div>

        <div class="clearfloat agrupaCarrinho b">
            <div class="agrupaInfoCarrinho">
                <div id="d_carrinho_produtos">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="listagemPrd listagemPrdName">
    <tr class="listagemPrdNameTable">
        <th width="*" class="tituloProduto">Produtos</th>
        <th width="140" style="text-align:center;">
            Prazo de entrega
            <span class="lkd-tooltip lkd-tooltip--small" data-title="Entenda o Prazo">
                <a class="custom-icon-question" href="javascript:void(0)" title="Entenda o Prazo" onclick="trackEvent(['Carrinho','Entenda o Prazo','ToolTip']);showAdmanagerTabs('aba3');">?</a>
            </span>
        </th>
        <th width="130" style="text-align:center;">Preço unitário</th>
        <th width="100" style="padding-left:30px">Quantidade</th>
        <th width="140">Preço total</th>
    </tr>
         <c:forEach items="${lista}" var="f">
						   
        <tr class="item"
            data-ec="true"
            data-ec-id="${f.id}"
            data-ec-name="Pr|73446"
            data-ec-item-name="${f.nome}"
            data-ec-item-category-name="Cantoneiras"
            data-ec-category="408"
            data-ec-price="230.39"
            data-ec-brand="Kappesberg"
            data-ec-variant=""
            data-ec-quantity="2"
            data-ec-list=""
            data-ec-position="0">
            <td width="400">
                                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="prds">
                        <tr>
                            <td width="110">
                                                                                                <a href="https://www.lojaskd.com.br/cantoneira-modulada-a548-smart-100-mdf-branco-kappesberg-73446.html">
                                    <img src="//imagens.lojaskd.com.br/73400/73446/73446_8_lst_80.jpg" alt="Cantoneira Modulada A548 Smart  100% MDF Branco - Kappesberg" class="img" style="width: 100px;"/>
                                </a>
                            </td>
                            <td>
                                <div class="clear">
                                    <a href="https://www.lojaskd.com.br/cantoneira-modulada-a548-smart-100-mdf-branco-kappesberg-73446.html">
                                        ${f.nome}

                                    </a>
                                </div>
                            </td>
                        </tr>
                  
                    </table>
                            </td>
            <td style="text-align:center;">
                                    22 - 26 dias úteis
                            </td>
            <td style="text-align:center;">
                                                            R$ 230,39
                                    
                                
            </td>
            <td>
                
                    <div class="alterarQtd">
                        <a data-ec-click="removeCard"
                           href="javascript:void(0);"
                           onclick="javascript:remover_produto('', '', '73446', '27176839', '', '');" class="ico-remover">
                            Retirar do carrinho
                        </a>

                        <input name="qtd[73446]" type="text" class="qtd" value="2"
                               onkeypress="return OnlyNumber(event)" maxlength="3"
                               onblur="javascript:atualiza_quantidade( '', '', '73446', '27176839', this.value, '');"
                               size="2"/>
                        <input name="removerPrdsCarrinho_73446" class="removerPrdsCarrinho"
                               value="73446|27176839" type="hidden"/>
                        <a data-ec-id="73446"
                           href="#" class="ico-alterar">Alterar quantidade</a><br/>


                    </div>
                                                    <div class="qtdMax">
                        <strong>Oops, não temos a qtd. que informou.</strong>
                                            </div>
                            </td>
            <td class="text_black">
                <div class="produtoPrecoTotal">
                    R$ 460,78
                                            <br><span style="color:#67a039;">R$ 423,92 à vista</span>
                                    </div>
            </td>
        </tr>
                    
        </tr>
                
						</c:forEach>
        <tr>
            <!-- Pent -->
                    </tr>
            
       
        <tr>
            <!-- Pent -->
                    </tr>
            </table>                </div>
                <div id="d_carrinho_orcamento">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="listagemPrd">
    <tr>
        <td colspan="3">
            <a href="#" class="buttons limpar-carrinho hidden-text" id="btn_limpar_carrinho"
               onclick="limparCarrinho('https://www.lojaskd.com.br/carrinho.php','https://www.lojaskd.com.br/templates/imagens'); trackEvent(['Esvaziar Carrinho','Clique']);"
               title="Esvaziar carrinho">
                Limpar carrinho
            </a>
        </td>
        <td>
                            <div class="box-economy left hidden">
                    <div class="subbox-economy">
                        <label class="economize-economy">Voc&ecirc; est&aacute; economizando:</label>
                        <label class="price-economy bold">R$<span
                                    class="bold">1.942,33</span></label>
                    </div>
                </div>
                    </td>
        <th class="ad" width="140">Sub total</th>
        <td width="140" class="text_black">
            <span id="carrinho_sub_total">
                R$ 4.267,52
                                    <br><span style="color:#67a039;">R$ 3.926,12 à vista</span>
                            </span>

        </td>
    </tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="listagemPrd">
    <tr>
        <td class="text_black" width="140" id="vale_compras"></td>
        <td colspan="2" class="ad" valign="top">&nbsp;</td>
        <td width="280" class="ad ad-cod-desc" valign="top">
            <p class="font14"><strong>C&oacute;digo de desconto (opcional)</strong></p>
            <p>
                <small class="font11">Digite ao lado o c&oacute;digo que voc&ecirc; possui</small>
            </p>
        </td>
        <td width="150" class="ad frm-cod-desc">
            <form name="frm_vale_compra" method="post" action="#" onsubmit="return false;" class="vale-compras">
                <div class="div-input">
                    <input name="vale" id="vale" type="text" class="input" placeholder="CUPOM"
                           value="" onkeyup="javascript:alta(this);"
                           onkeypress="doClick('bto_aplicar_valecompra', event);" size="12"/>
                </div>
                <div class="div-input">
                    <input name="button" type="button" id="bto_aplicar_valecompra" class="buttons ok"
                           onclick="aplicar_valecompra( 'https://www.lojaskd.com.br/carrinho.php', 'dist/images', document.frm_vale_compra.vale.value );"
                           value=""/>
                </div>

            </form>
        </td>
    </tr>
    </table>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="listagemPrd" id="fretecarrinho">
    <tr>
        <td colspan="3"></td>
        <td class="ad" width="140">
            <span class="font14"><strong>Montagem</strong></span>
            <br/>
            <small><a href="javascript:void(0)" onclick="showAdmanagerTabs('aba5');"
                      title="Clique aqui para saber mais sobre a montagem"
                      onclick="trackEvent(['Montadores','Carrinho','Saiba mais abaixo']);">Saiba mais</a></small>
        </td>
        <td class="ae" width="140">
            <!--
                                                            -->
                            *N&atilde;o incluido
                    </td>
    </tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="listagemPrd">
    <tr>
        <td colspan="2" class="ad" valign="top">

        </td>
        <td width="280" valign="top">
            <form name="frm_carrinho" method="post" action="#" onsubmit="return false;">
                <p class="font14"><strong>Digite o CEP de entrega:</strong></p>
                <p>Veja o valor e prazo de entrega ate seu endere&ccedil;o.</p>

                <div class="div-input inputs">
                    <input name="cep_a"
                           onkeyup="return NextField(document.frm_carrinho.cep_a, document.frm_carrinho.cep_b, 5);"
                           type="text" size="5" class="input-cep1 " maxlength="5" value="80001"/>
                    <input name="cep_b" type="text" size="2" class="input-cep2" maxlength="3" value="970"/>
                    <br/>
                    <!--a href="http://www.buscacep.correios.com.br/" target="_blank" title="Clique aqui caso nao lembre seu CEP"><small>Nao lembro meu CEP</small></a-->
                    <a href="javascript:openWindow('http://www.buscacep.correios.com.br','yes','1000','400','');"
                       title="Clique aqui caso nao lembre seu CEP">
                        <small>N&atilde;o lembro meu CEP</small>
                    </a>
                </div>
                <div class="div-input">
                    <input type="button" name="bto_calcula_frete" class="buttons calcular-frete" value=""
                           onclick="calcula_frete( 'https://www.lojaskd.com.br/carrinho.php', 'dist/images', document.frm_carrinho.cep_a.value, document.frm_carrinho.cep_b.value, '' );"/>
                </div>
                <div class="clearfix"></div>
            </form>
            
                                                </td>

        <td width="140" class="ad" valign="top">
                                                                        <span class="font14"><strong>Entrega entre</strong></span>
                        <br>
                        <a href="javascript:void(0)" title="Entenda o Prazo" onclick="trackEvent(['Carrinho','Entenda o Prazo','Link']);showAdmanagerTabs('aba3');">
                            <small>Entenda o prazo</small>
                        </a>
                        <div id="d_prazo">
                                                    </div>
                    
                                            <div id="d_frete">
                            <span class="font12"><strong>Frete</strong></span>
                            <div class="clearfix"></div>
                            <a href="javascript:void(0)" title="Entenda o fretinho" onclick="trackEvent(['Carrinho','Entenda o fretinho','Link']);showAdmanagerTabs('aba4');">
                                <small>Entenda o fretinho</small>
                            </a>
                        </div>
                        <div id="d_desconto_frete">
                            <span class="font12"><strong>Valor do desconto</strong></span>
                        </div>
                        <div id="d_frete_com_desconto">
                            <span class="font14"><strong>Frete com desconto</strong></span>
                        </div>
                    
                                                        </td>
        <td width="140" class="text_black" valign="top">
                                                <div id="d_prazo_transportadora_valor">
                        <span style="display: inline;" class="font14"><span
                                    id="s_prazo">22 - 26</span> dias &uacute;teis</span>
                    </div>
                                                                                                    <div id="d_frete_valor">
                            <span class="font12">R$ 165,74</span>
                        </div>
                        <div id="d_desconto_frete_valor">
                            <span class="font12">R$ 0,00</span>
                        </div>
                        <div id="d_frete_com_desconto_valor">
                            <span class="font14" id="frete">R$ 165,74</span>
                        </div>
                                                        </td>
    </tr>
</table>

<table id="listagemPrdBlock" width="100%" border="0" cellpadding="0" cellspacing="0" class="listagemPrd tableTotal">
                                            <tr>
                <th class="ae font22" width="550"></th>
                <th class="ad font22" width="140" style="padding-bottom: 0;">Total &agrave; vista<small><sup>*</sup></small></th>
                <th width="250" class="text_ligth_gray font22" style="text-align: right; padding-right: 20px; padding-bottom: 0;">
                    <span id="carrinho_valor_total" style="text-align: right;">R$ 4.091,86</span>
                                            <div class="font11">
                            8% de desconto &agrave; vista
                        </div>
                                    </td>
            </tr>
        
        <tr>
            <th class="ae font22" width="550"></th>
            <th class="ad font16" width="140" style="padding-bottom: 0;"><small>Total &agrave; prazo</small></th>
            <th width="250" class="text_ligth_gray font18" style="text-align: right; padding-right: 20px; padding-bottom: 0;">
                <span id="carrinho_valor_total" style="text-align: right;">R$ 4.433,26</span>
                                    <div class="font11">
                        em at&eacute; 10x de 443,33 s/ juros
                    </div>
                            </th>
        </tr>

                    <tr class="ultimaLinha">
                <td colspan="3" style="padding-left:10px;text-align:right;">
                    <small style="color:#aaa;"><sup>*</sup> Desconto de 8% de desconto para pagamentos em at&eacute 1x no cart&atildeo de cr&eacutedito, boleto ou dep&oacutesito banc&aacuterio.</small>
                </td>
            </tr>
        
    
</table>
<div class="botoesCarrinho border clearfloat">
    <form name="frm_carrinho_bt" method="post" action="https://www.lojaskd.com.br/carrinho.php"
          onsubmit="trackEvent(['_linkByPost', this])">
                                    <input type="image" name="btn_fechar_compra_2" id="btn_fechar_compra_2" title="Finalizar Compra"
                       src="//assets.lojaskd.com.br/releases/production/dist/images/pixel.gif"
                       class="buttons finalizar-compra-large hidden-text right comprar"
                       onclick="trackEvent(['Carrinho','Finalizar compra - A','Rodap?']);"/>
                    
        <i class="imagem-bg cadeado compra-segura-medium abrirFloaterCadeado"></i>
    </form>
    <a href="https://www.lojaskd.com.br" title="Clique aqui para retornar a loja e continuar comprando"
       class="buttons voltar-a-comprar hidden-text">
        Voltar para comprar mais
    </a>
</div>                </div>
            </div>
            <!-- <div class="admCartBanners">
                            </div> -->
        </div>
</div>

<div class="clearfix"></div>

<div class="clearfix"></div>

<div class="depoimentorodape">
    </div>
<div class="clearfix"></div>
</div> <!-- final #wrap --></div><!-- adicionado para fechar wrap -->

<div class="englobafooter">
        <div class="wrap-footer">
        <div class="footer">
            <div class="detalhesEndereco left">
                <div class="detalhesConteudoTexto">
                    <p>&reg
                        2017 LKD Comércio Eletrônico S/A / www.lojaskd.com.br / CNPJ: 10.979.023/0001-43 / Inscrição Estadual: 90.488.160-00
                        <br/> Caixa postal exclusiva da loja virtual: Rua Wanda Santos Mullmann, 1373 - Pinhais - PR / CEP 83323-123 / Vendas realizadas somente pela internet / sac@lojaskd.com.br / Telefone: (41) 3059-4200 / Atendimento: Dias úteis das 8h30 às 18h.</p>
                </div>
            </div>
        </div>
    </div>

</div>

<div id="dialog-confirm"></div>


<!--Floater Digioh-->
<script type='text/javascript' src='//www.lightboxcdn.com/vendor/499f5fae-d1a9-43ab-8233-95c386d8e8aa/lightbox_inline.js'></script>
<div id='499f5fae-d1a9-43ab-8233-95c386d8e8aa' class='lightbox-container'></div>
<script type="text/javascript">
    if (document.getElementById('499f5fae-d1a9-43ab-8233-95c386d8e8aa') != null) {
        document.getElementById('499f5fae-d1a9-43ab-8233-95c386d8e8aa').style.display = 'none';
    }
</script>
<!--Floater Digioh-->


<script type="text/javascript">
    var __URL_SITE__            = "";
    var _URL_SITE__             = "";
    var __PATH_BASE_DIR__       = "/var/www/lojaskd";
    var ProtoTipCounter         = 0;
    var __CATEGORIA_NOME__      = "";
    var __PAGINA_NOME__         = "carrinho";
    var SCRIPT_NAME             = "/carrinho";
    var __FC_AMBIENTE__         = "PRODUCTION";
    var isEnableHTTPS           = "on";
    var tipo_formulario         = "";
    var CPO_ACAO                = "";
    var CPO_ID                  = "";
    var cliente_origem          = "";
    var baseUrl                 = "";
    var skinImagePath           = "dist/images";
    var endereco_estado         = "";
        var smartyGetMensagem       = "";
    var baseUrlSegura           = "https://www.lojaskd.com.br";
    var cliente_endereco_cep_a  = "";
    var cliente_endereco_cep_b  = "";
    var enderecoEstadosSelected = "";
    var clienteEnderecoCidade   = "";
    var cliente_tipo_pessoa     = "";
    var url_infografico         = "";
    var __ACEITE_PRAZO__        = "";
    var __ASSETS_DOMAIN__       = "//assets.lojaskd.com.br/";
    var ENABLE_PIWIK            = "1";
    var PIWIK_URL               = "//piwik.lojaskd.com.br/";
    var PIWIK_CUSTOM_DIMENSION_1 = "";
</script>

    
    <script language="javascript" type="text/javascript" src="//assets.lojaskd.com.br/releases/production/dist/javascripts/desktop-fc.min.js"></script>


<!-- Fim Nova tag de conversão do google analytics -->

<!-- CRIACAO DO EVENTO CONFORME O VALE COMPRA -->

<script>
    (function($) {
        $('.js-button-click').click();
    })(jQuery);
</script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"aa62a0219f","applicationID":"32273587,32273588","transactionName":"MVABZxcDChIEUkBRCwgaIlARCwsPSnJVShBJXA1XABo=","queueTime":0,"applicationTime":787,"atts":"HRcCEV8ZGRw=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
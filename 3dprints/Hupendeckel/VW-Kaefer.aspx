
<!DOCTYPE html>
<!--[if IE 7]><html lang="de" class="ie ie7"><![endif]-->
<!--[if IE 8]><html lang="de" class="ie ie8"><![endif]-->
<html lang="de" <head><meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><script type="text/javascript">window.NREUM||(NREUM={});NREUM.info = {"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"d551b32b56","applicationID":"110646192","transactionName":"M1AEMhRVX0RXVEJbDQoaJzU2G1VSQlZfXhRWGwcVFkw=","queueTime":0,"applicationTime":45,"agent":"","atts":""}</script><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"d551b32b56",applicationID:"110646192"};window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var i=n[t]={exports:{}};e[t][0].call(i.exports,function(n){var i=e[t][1][n];return r(i||n)},i,i.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(e,n,t){function r(){}function i(e,n,t){return function(){return o(e,[u.now()].concat(f(arguments)),n?null:this,t),n?void 0:this}}var o=e("handle"),a=e(4),f=e(5),c=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",d=l+"ixn-";a(p,function(e,n){s[n]=i(l+n,!0,"api")}),s.addPageAction=i(l+"addPageAction",!0),s.setCurrentRouteName=i(l+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,i="function"==typeof n;return o(d+"tracer",[u.now(),e,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return n.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],t),e}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=i(d+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){var t=e.getEntries();t.forEach(function(e){"first-paint"===e.name?c("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&c("timing",["fcp",Math.floor(e.startTime)])})}function i(e,n){var t=e.getEntries();t.length>0&&c("lcp",[t[t.length-1]])}function o(e){if(e instanceof s&&!l){var n,t=Math.round(e.timeStamp);n=t>1e12?Date.now()-t:u.now()-t,l=!0,c("timing",["fi",t,{type:e.type,fid:n}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var a,f,c=e("handle"),u=e("loader"),s=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){a=new PerformanceObserver(r),f=new PerformanceObserver(i);try{a.observe({entryTypes:["paint"]}),f.observe({entryTypes:["largest-contentful-paint"]})}catch(p){}}if("addEventListener"in document){var l=!1,d=["click","keydown","mousedown","pointerdown","touchstart"];d.forEach(function(e){document.addEventListener(e,o,!1)})}}},{}],3:[function(e,n,t){function r(e,n){if(!i)return!1;if(e!==i)return!1;if(!n)return!0;if(!o)return!1;for(var t=o.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}n.exports={agent:i,version:o,match:r}},{}],4:[function(e,n,t){function r(e,n){var t=[],r="",o=0;for(r in e)i.call(e,r)&&(t[o]=n(r,e[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],5:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,i=t-n||0,o=Array(i<0?0:i);++r<i;)o[r]=e[n+r];return o}n.exports=r},{}],6:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function i(e){function n(e){return e&&e instanceof r?e:e?c(e,f,o):o()}function t(t,r,i,o){if(!l.aborted||o){e&&e(t,r,i);for(var a=n(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function d(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||i(t)}function w(e,n){u(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:d,addEventListener:d,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(l.aborted=!0,s=l.backlog={})}var f="nr@context",c=e("gos"),u=e(4),s={},p={},l=n.exports=i();l.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(i.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[n]=r,r}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){i.buffer([e],r),i.emit(e,n,t)}var i=e("ee").get("handle");n.exports=r,r.ee=i},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!x++){var e=E.info=NREUM.info,n=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();u(y,function(n,t){e[n]||(e[n]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=d.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function i(){"complete"===d.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=e("handle"),u=e(4),s=e("ee"),p=e(3),l=window,d=l.document,m="addEventListener",v="attachEvent",g=l.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:g,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1169.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=n.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),e(2),d[m]?(d[m]("DOMContentLoaded",o,!1),l[m]("load",r,!1)):(d[v]("onreadystatechange",i),l[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=e(6)},{}],"wrap-function":[function(e,n,t){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;n.exports=function(e,n){function t(e,n,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){l([u,"",[r,a,i],f])}s(n+"start",[r,a,i],f);try{return c=e.apply(a,r)}catch(p){throw s(n+"err",[r,a,p],f),p}finally{s(n+"end",[r,a,c],f)}}return r(e)?e:(n||(n=""),nrWrapper[a]=e,p(e,nrWrapper),nrWrapper)}function u(e,n,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<n.length;c++)f=n[c],a=e[f],r(a)||(e[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||n){var o=c;c=!0;try{e.emit(t,r,i,n)}catch(a){l([a,t,r,i])}c=o}}function p(e,n){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(e);return t.forEach(function(t){Object.defineProperty(n,t,{get:function(){return e[t]},set:function(n){return e[t]=n,n}})}),n}catch(r){l([r])}for(var i in e)f.call(e,i)&&(n[i]=e[i]);return n}function l(n){try{e.emit("internal-error",n)}catch(t){}}return e||(e=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script><meta name="viewport" content="width=device-width, initial-scale=1" />

<title>
	VW Käfer Vektorgrafiken - Kostenloses Vektorbild im AI- und EPS-Format. 
</title>

<link href="https://fonts.googleapis.com/css?family=Ubuntu:400,300,700,500" rel="stylesheet" type="text/css" /><link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet" type="text/css" /><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />


<link href="/css_novi/bootstrap.min.css?v=2" rel="stylesheet" />

<link rel="canonical" href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/VW-K%C3%A4fer-Vektorgrafiken/11011.aspx" />


<!--[if lt IE 9]>

      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>

      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->
<meta name="Description" content="Illustration eines frühen Volkswagen Automodells, Käfer  amp nbsp " /></head>
<body>
<header>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div id="inner_header" class="col-xs-12 col-sm-12">
<div class="col-xs-12 col-sm-12 inner_logo text-left">
<a href="/"><img src="/images_novi/inner_logo.png" alt="" class="img-responsive"></a>
</div>
</div>
<div class="col-xs-12 col-sm-12 pad_0 menu">
<nav class="navbar navbar-default navbar-inverse">

<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>

<div class="collapse pad_0 navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav text-center dropdown-onhover">
<li><a href="/de/"> Home </a></li>
<li class="dropdown-short">
<a data-toggle="dropdown" href="javascript:void(0);" class="dropdown-toggle">Vektoren <span class="caret"></span></a>
<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
<li class="dropdown-right-onhover no-fix">
<a href="https://www.vectorportal.com/de/Stock-Vektoren/" id="ucMeni1_stockvectors" data-toggle="collapse" data-target="#id_1" class="dropdown-toggle collapsed hidden-xs">Stock Vektoren </a>
<a style="float: none;" class="col-xs-9 hidden-sm hidden-md hidden-lg" href="/stockvectors">Stock Vektoren </a>
<a href="javascript:;" style="margin-top: -30px;" data-toggle="collapse" data-target="#id_1" class="dropdown-toggle collapsed pull-right col-xs-3 hidden-sm hidden-md hidden-lg">&nbsp;</a>
<ul class="dropdown-menu dropdown-wide collapse" id="id_1">
<li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Fahrzeuge-Transport/'>Autos und Motorräder</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Blumen/'>Blumen</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Clip-Art/'>Clip Art</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Essen-Trinken/'>Essen und Trinken</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Extras/'>Extras</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Flaggen-und-Karten/'>Flaggen und Karten</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Abstrakte-Hintergründe/'>Hintergründe</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Illustrator-vorlagen/'>Illustrator vorlagen</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Leute/'>Leute</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Logo-elemente/'>Logo-elemente</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Militär/'>Militär und Waffen</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Musik/'>Musik</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Religiös/'>Religiös</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Schädel/'>Schädel</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Silhouetten/'>Silhouetten</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Sport/'>Sport</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Sportlogos/'>Sportlogos</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Verschiedenes/'>Stock Vektoren</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Symbole/'>Symbole</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Technologie/'>Technologie</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Tiere/'>Tiere</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Tribal-Tätowierung/'>Tribal</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Weihnachten/'>Weihnachten</a></li><li> <a href='https://www.vectorportal.com/de/Stock-Vektoren/Zeichen-und-Symbole/'>Zeichen und Symbole</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="../../../../../?sort=FILE_DOWNLOADS" id="ucMeni1_popular">Beliebt</a></li>
<li><a href="../../../../../?sort=FILE_DATED" id="ucMeni1_latest">Neueste</a></li>
</ul>
<ul class="nav navbar-nav navbar-right vector_btn">
<li>
</li>
<li>
<div class="fb-like" data-href="https://www.vectorportal.com" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
</li>
<li class="btn"><a class=' btn-default' href='/de/Contact/'>Kontakt</a></li>
</ul>
</div>

</nav>
</div>
</header>
<div id="middle" class="container-fluid">
<div class="row">
<div class="col-xs-12 col-sm-12 hidden-xs text-center benner">
<div style="color:#999;text-align: center;font-size:12px">
<span>
Advertisements
</span>
</div>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4767662663033227" data-ad-slot="1323339902" data-ad-format="auto"></ins>
<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
</div>
<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 grid_sec">
<div class="col-xs-12 category_top pad_0">
<h1>VW Käfer Vektorgrafiken</h1>
<div class="search pull-right">
<form class="navbar-form find-now-form text-center" role="search" action="/filter_search.aspx?lang=de" method="post">
<div class="form-group">
<input type="text" class="form-control" name="q" placeholder="Suche hier...">
</div>
<button type="submit" class="btn btn-default text-uppercase">
<span class="glyphicon glyphicon-search" aria-hidden="true"></span> Suche
</button>
</form>
</div>
</div>
<div class="col-xs-12 col-md-4 col-sm-6 pad_0 pattern">
<a href="#"><img width='100%' alt='VW Käfer Vektorgrafiken' class='img-responsive' src='https://www.vectorportal.com/img_novi/vw-beetle-vectorportal_11011.jpg' /></a>
<div class="social_icon text-center">
<a href="https://twitter.com/home?status=Currently%20reading%2Fhttps://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/VW-K%C3%A4fer-Vektorgrafiken/11011.aspx" target="_blank"><img src='/images_novi/twit_icon.png' alt='' class='img-responsive icon' /></a>
<a href="https://www.facebook.com/share.php?u=https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/VW-K%C3%A4fer-Vektorgrafiken/11011.aspx" target="_blank"><img src='/images_novi/face_icon.png' alt='' class='img-responsive icon' /></a>
<a href="https://pinterest.com/pin/create/button/?url=https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/VW-K%C3%A4fer-Vektorgrafiken/11011.aspx&media=https%3A%2F%2Fwww.vectorportal.com%2Fimg_novi%2Fvw-beetle-vectorportal_11011.jpg&description=VW Käfer Vektorgrafiken" target="_blank"><img src='/images_novi/print_icon.png' alt='' class='img-responsive icon' /></a>
</div>
</div>
<div class="col-xs-12 col-md-4 col-sm-6 pad_0 detail_sponsored-v2"><div class="col-xs-12 col-sm-12 pad_0 category_sponsored">
<p> Gesponserte Vektoren Shutterstock </p>
<ul>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript">
      /* Fetch functions */

      var API_URL = 'https://api.shutterstock.com/v2';

      // Base 64 encode Client ID and Client Secret for use in the Authorization header
      function encodeAuthorization() {
        var clientId = "6f915b172d663c1fd760";
        var clientSecret ="b8c3961023dd0c3e625c75889239e1fc1a12165e";

        if (!clientId || !clientSecret) {
          $('#collapseAuthentication').collapse('show');
          alert('Client id and/or client secret are missing in the API key section, with out these you wont be able to contact the API.');
          return;
        }
        return 'Basic ' + window.btoa(clientId + ':' + clientSecret);
      }

      // Search media by type
      function search(opts, mediaType) {
        var $container = $('#' + mediaType + '-search-results');
        var createComponentFunc = mediaType === 'image'
          ? renderImageComponent
          : renderVideoComponent;

        authorization = encodeAuthorization();
        if (!authorization) return;

        var jqxhr = $.ajax({
          url: API_URL + '/' + mediaType + 's/search',
          data: opts,
          headers: {
            Authorization: authorization
          }
        })
        .done(function(data) {
          if (data.total_count === 0) {
            $container.append('<p>No Results</p>');
            return;
          }

          var minHeightCSS = /horizontal/.test(opts) ? 'horizontal-image' : 'vertical-image';
          $.each(data.data, function(i, item) {
            var component = createComponentFunc(item, minHeightCSS);
            $container.append(component);
          });

          // Reduce the options area to show the results
          if (window.innerWidth < 600) $('.collapse.in').collapse();
        })
        .fail(function(xhr, status, err) {
          alert('Failed to retrieve ' + mediaType + ' search results:\n' + JSON.stringify(xhr.responseJSON, null, 2));
        });

        return jqxhr;
      }

      // Fetch media details
      function fetchDetails(event) {
        event.preventDefault();

        var id = event.target.id;
        var mediaType = event.target.tagName === 'IMG' ? 'image' : 'video';
        var authorization = encodeAuthorization();

        if (!id || !authorization) return;

        renderLoadingDetails(id);

        var jqxhr = $.ajax({
            url: API_URL + '/' + mediaType + 's/' + id,
            headers: {
              Authorization: authorization
            }
          })
          .done(function(data) {
            console.log('JSON response', data);

            if (!data || !data.assets || !data.assets) return;

            renderDetails(data);
          })
          .fail(function(xhr, status, err) {
            alert('Failed to retrieve ' + mediaType + ' details:\n' + JSON.stringify(xhr.responseJSON, null, 2));
          });

        return jqxhr;
      }

      /* Render functions */

      // Create image wrapper component
   
      // Create video wrapper component


      // Display media details in a modal
      function renderDetails(data) {
       

        if (data.media_type === 'image') {
          var thumbWrapper = $('<div>');
          var thumbnail = $('<img>');
          var link = $('a');
          $(link)
            .attr('href', data.assets.preview.url)
            .attr('title', data.description);
          
          $(thumbnail)
            .attr('id', data.id)
            .attr('src', data.assets.preview.url)
            .attr('title', data.description);
            

          $(thumbWrapper)
            .addClass('thumbnail-crop')
           
            .append(thumbnail);

       
        } 


      }

      // Render a loading spinner while we wait for image/video details
      function renderLoadingDetails(id) {
        var detailTemplate = $('.detail-template');

        detailTemplate.find('.modal-body').html('<i class="fa fa-5x fa-spinner fa-spin"></i>')
        detailTemplate.find('h3').html('Loading ' + id + '...');
        detailTemplate.modal('show');
      }

      // Simulate user chooses an image/video
      function renderServerSideInstructions() {
        alert('Here you will need server-side code to purchase and download the un-watermarked image. See the documentation at https://developers.shutterstock.com/guides/licensing');
      }

      // Add categories to the category <select>
      function renderCategories() {
        var categorySelect = $('[name="category"]')[0];
        ['Abstract', 'Animals/Wildlife', 'Backgrounds/Textures', 'Beauty/Fashion', 'Buildings/Landmarks', 'Business/Finance', 'Celebrities', 'Editorial', 'Education', 'Food and Drink', 'Healthcare/Medical', 'Holidays', 'Illustrations/Clip-Art', 'Industrial', 'Interiors', 'Miscellaneous', 'Model Released Only', 'Nature', 'Objects', 'Parks/Outdoor', 'People', 'Religion', 'Science', 'Signs/Symbols', 'Sports/Recreation', 'Technology', 'The Arts', 'Transportation', 'Vectors', 'Vintage'].map(function(category) {
          categorySelect.add(new Option(category, category));
        });
      }

      function setDefaultPerPage() {
        var imagesWhichFitOnThePage = (window.innerWidth * window.innerHeight) / (300 * 300);
        var bestPerPage;

     
        if (bestPerPage) {
          $('select[name=per_page]').val(bestPerPage);
        }
      }

      function setColor(target) {
        $("input[name=color]").val(target.value);
      }

      function useColorsInNatureIfSearchingOnlyByColor (opts) {
        if (/color/.test(opts) & !/category/.test(opts) && !/query/.test(opts)){
          opts += '&category=Nature';
        }
        return opts;
      }
function renderImageComponent(image, minHeightCSS) {
    if (!image || !image.assets || !image.assets.large_thumb || !image.assets.large_thumb.url) return;

    var wrapper = $('<li>');
    var thumbWrapper = $('<div>');
    var thumbnail = $('<img>');
    var description = $('<p>');
     var link = $('<a>');
  
   $(link)
     
       .attr('href', 'http://shutterstock.7eer.net/c/46633/43068/1305?u='+  encodeURIComponent("http://www.shutterstock.com/pic.mhtml?id="+ image.id))
       .attr('title',image.description)
       .attr('target','_blank')
       .append(thumbnail);
                  
    $(thumbnail)
        .attr('src', image.assets.large_thumb.url)
        .attr('title', image.description)
        .addClass('responsive');

    $(thumbWrapper)
        .addClass('slika')
        .append(link);

    $(wrapper)
       .append(thumbWrapper);

    return wrapper;
}

      // On Page Load
      $(function() {
      
        setDefaultPerPage();

        $('#search-form').submit(function(e) {
          e.preventDefault();

          // Clear current media results
          $('#image-search-results, #video-search-results').empty();

          // Serialize form options
          var opts = $('input').filter(function() {
                    
          }).serialize();

          opts += '&' +"query=VW BEETLE    .&safe=true&image_type=vector&page=1&per_page=9&sort=popular"

          opts = useColorsInNatureIfSearchingOnlyByColor(opts);
          console.log('Requesting: ' + opts)

          // Search and display images
          search(opts, 'image');

          // Reduce # videos to better fit on the page
          var perPage = 10;
      

          // Search and display videos
    

          return false;
        });

        // Load results on page load
        $('#search-form').submit();

      });
    </script>
<style>
      .vertical-image {
        min-height: 170px;
      }

      .horizontal-image {
        min-height: 160px;
      }

      div.image-float-wrapper {
        padding-bottom: 10px;
        padding-right: 10px;
        float: left;
        text-align: center;
      }

      div.video-wrapper {
        padding: 5px;
        text-align: center;
      }

      .shutterstock-logo {
        width: 50%;
      }

      /* Crop image ID */

      div.thumbnail-crop {
        overflow: hidden;
        margin: 0 auto;
      }

      /* Details area */

      div.detail-template .modal-body div {
        text-align: center;
      }

      div.detail-template img, div.detail-template video {
        width: 100%;
      }
      
      .responsive {
    max-width: 100%;
    height: auto;
    }
    </style>
</head>
<body>
<form id="search-form"></form>
<div id="image-search-results"></div>
</ul></div>
<a class='btn btn-success' href='https://www.vectorportal.com/de/VW-Käfer-Vektorgrafiken/11011/download.html' target='_blank'><i class='mdi mdi-download'></i> Herunterladen</a>
</div>
<div class="col-xs-12 col-md-4 col-sm-12 detail-v2 pad_0"><div class="col-xs-12 col-sm-12 pad_0 description">
<div class="col-xs-12 col-sm-12 pad_0">
<div class="panel panel-default">
<div class="panel-heading"> Beschreibung</div>
<div class="panel-body">
Illustration eines frühen Volkswagen Automodells, Käfer amp nbsp
</div>
</div>
</div>
<div class="col-xs-12 col-sm-12 pull-right pad_0">
<div class="panel panel-default">
<div class="panel-heading">Kategorie</div>
<div class="panel-body">
<a href='/de/Stock-Vektoren/Fahrzeuge-Transport/'>Autos und Motorräder</a>
</div>
</div>
</div>
</div>
<div class="col-xs-12 col-sm-12 pad_0 description">
<div class="col-xs-12 col-sm-12 pad_0">
<div class="panel panel-default">
<div class="panel-heading"> Spezifikationen</div>
<div class="panel-body">
<ul class="add_info">
<li><i class="mdi mdi-vector-square"></i>1276 Kb</li>
<li><i class="mdi mdi-calendar-today"></i> 01.04.2013</li>
<li><i class="mdi mdi-download"></i>4615</li>
<li><i class="mdi mdi-account"></i>Vectorportal.com</li>
</ul>
</div>
</div>
</div>
<div class="col-xs-12 col-sm-12 pull-right pad_0">
<div class="panel panel-default">
<div class="panel-heading"> Stichworte</div>
<div class="panel-body">
<ul class="list-group">
<li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto/'>Auto</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto/'> Auto</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto/'> Auto</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Fahren/'> Fahren</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Fahren/'> Fahren</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Fahrzeug/'> Fahrzeug</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Transport/'> Transport</a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="col-xs-12 category_top pad_0">
<div class="panel  description">
<h2> Related searches</h2>
<div class="panel-body">
<ul class="list-group">
<li><a class='list-group-item' href='/de/Kostenloser-Vektor/mit-dem-Auto-fahren-Vektor/'>mit dem Auto fahren-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/mit-dem-Auto-fahren-Vektor/'>mit dem Auto fahren-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-Fahrzeug-Vektor/'>Auto-Fahrzeug-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Linien-Fahrzeug-Auto-Vektor/'>Linien-Fahrzeug-Auto-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Linien-Fahrzeug-Auto-Vektor/'>Linien-Fahrzeug-Auto-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Linien-Fahrzeug-Auto-Vektor/'>Linien-Fahrzeug-Auto-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/auto-vector-free-download/'>auto vector free download</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/auto-vector-free-download/'>auto vector free download</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-Vektor-Kunst/'>Auto-Vektor-Kunst</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-Vektor-Kunst/'>Auto-Vektor-Kunst</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-vector-png/'>Auto vector png</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-vector-png/'>Auto vector png</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-waschen-banner-Vektor/'>Auto waschen banner-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-waschen-banner-Vektor/'>Auto waschen banner-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-Vektor-Vorlagen/'>Auto-Vektor-Vorlagen</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-Vektor-Vorlagen/'>Auto-Vektor-Vorlagen</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Symbol-Auto-Teile-Vektor/'>Symbol Auto-Teile-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Symbol-Auto-Teile-Vektor/'>Symbol Auto-Teile-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-Kostenlose-vector/'>Auto Kostenlose vector</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-Kostenlose-vector/'>Auto Kostenlose vector</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-waschen%2c-Blasen%2c-Vektor/'>Auto waschen, Blasen, Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-waschen%2c-Blasen%2c-Vektor/'>Auto waschen, Blasen, Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Karikatur-auto-Vektor/'>Karikatur-auto-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Karikatur-auto-Vektor/'>Karikatur-auto-Vektor</a></li><li><a class='list-group-item' href='/de/Kostenloser-Vektor/Auto-waschen%2c-Mann%2c-Vektor/'>Auto waschen, Mann, Vektor</a></li>
</ul>
</div>
</div>
</div>
<div class="col-xs-12 category_top pad_0">
<h2> Verwandte kostenlose Vektoren</h2>
<ul class="og-grid">
<li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Container-LKW-Ladung/35131.aspx"> <img class='img-responsive' src='/img_novi/container-truck-loading-vectorportal.jpg' alt='Container-LKW-Ladung' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Auto-Gauge-Vektor-Grafiken/25198.aspx"> <img class='img-responsive' src='/img_novi/car-gauge-12-vectorportal.jpg' alt='Auto Gauge-Vektor-Grafiken' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Chevrolet-Captiva-Vektorauto/11616.aspx"> <img class='img-responsive' src='/img_novi/chevrolet-captiva-vector_11616.jpg' alt='Chevrolet Captiva Vektorauto' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Bus-auf-der-Straße-Vektor-Bild/25744.aspx"> <img class='img-responsive' src='/img_novi/bus-on-the-road-vectorporta.jpg' alt='Bus auf der Straße-Vektor-Bild' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Hippie-van-Vektor-Bild/25338.aspx"> <img class='img-responsive' src='/img_novi/hippie-van-vectorportal.jpg' alt='Hippie-van-Vektor-Bild' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Motorcyrcle-mit-großen-Reifen-frei-Vektor/6165.aspx"> <img class='img-responsive' src='/img_novi/s-bike_vector_graphics_6165.jpg' alt='Motorcyrcle mit großen Reifen frei Vektor' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Oldtimer-Modell/36658.aspx"> <img class='img-responsive' src='/img_novi/vintage-automobile-vector.jpg' alt='Oldtimer-Modell' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/AUTOSCHLÜSSEL-MIT-DIGITALANZEIGE/22827.aspx"> <img class='img-responsive' src='/img_novi/car-keys-digital.jpg' alt='AUTOSCHLÜSSEL MIT DIGITALANZEIGE' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Reifenspuren-3/24879.aspx"> <img class='img-responsive' src='/img_novi/tire-tracks-7-vectorportal.jpg' alt='Reifenspuren 3' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Sommerwagen/38393.aspx"> <img class='img-responsive' src='/img_novi/summer-van-vectorportal.jpg' alt='Sommerwagen' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Polizei-Auto-Draufsicht-Vektor/32479.aspx"> <img class='img-responsive' src='/img_novi/police-car-top-view-vectorportal.jpg' alt='Polizei Auto Draufsicht Vektor' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/VERKEHRSZEICHEN-CLIPART-GRAFIKEN/23515.aspx"> <img class='img-responsive' src='/img_novi/traffic-lights-clipart-grap.jpg' alt='VERKEHRSZEICHEN-CLIPART-GRAFIKEN' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Blaue-Auto-Vektor-Grafiken/14227.aspx"> <img class='img-responsive' src='/img_novi/blue-vector-car.jpg' alt='Blaue Auto-Vektor-Grafiken' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Lieferwagen-und-Schaufenster/36248.aspx"> <img class='img-responsive' src='/img_novi/truck-and-store-vector.jpg' alt='Lieferwagen und Schaufenster' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Rennsport-Ampel/33631.aspx"> <img class='img-responsive' src='/img_novi/racing-traffic-lights-public-domain.jpg' alt='Rennsport-Ampel' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Luxus-Sportwagen-ClipArt/38006.aspx"> <img class='img-responsive' src='/img_novi/sports-luxury-car-free-vector.jpg' alt='Luxus-Sportwagen ClipArt' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Kart-Rennwagen/33417.aspx"> <img class='img-responsive' src='/img_novi/carting-racing-car-publicdomain.jpg' alt='Kart Rennwagen' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Sportwagen-Lagervektor/10950.aspx"> <img class='img-responsive' src='/img_novi/sports-car-vectporportal_10950.jpg' alt='Sportwagen-Lagervektor' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Vintage-Feuer-LKW-Vektor-Bild/25394.aspx"> <img class='img-responsive' src='/img_novi/fire-truck-clip-art.jpg' alt='Vintage Feuer-LKW-Vektor-Bild' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Oldtimer-Cabrio/33126.aspx"> <img class='img-responsive' src='/img_novi/old-timer-vehicle-vector.jpg' alt='Oldtimer Cabrio' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/SPORTS-UTILITY-VEHICLE/22927.aspx"> <img class='img-responsive' src='/img_novi/suv-vehicle-front.jpg' alt='SPORTS UTILITY VEHICLE' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Blauer-und-weißer-Autovektor/14192.aspx"> <img class='img-responsive' src='/img_novi/vector-car-blue-and-white.jpg' alt='Blauer und weißer Autovektor' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Räder-und-Reifen/26889.aspx"> <img class='img-responsive' src='/img_novi/wheels-tyres-vectorportal.jpg' alt='Räder und Reifen' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Große-Ladung-LKW/25084.aspx"> <img class='img-responsive' src='/img_novi/commercial-cargo-truck-vect.jpg' alt='Große Ladung LKW' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Luft-Zustand-System-Vektor-Bild/25534.aspx"> <img class='img-responsive' src='/img_novi/car-air-condition-5-vectorp.jpg' alt='Luft-Zustand-System-Vektor-Bild' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Industrie-LKW/35946.aspx"> <img class='img-responsive' src='/img_novi/industrial-truck-vector.jpg' alt='Industrie-LKW' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Mit-Hilfe-einer-Winde-LKW-abholen/28554.aspx"> <img class='img-responsive' src='/img_novi/pick-up-with-winch-vector.jpg' alt='Mit Hilfe einer Winde LKW abholen' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Lamborghini-Vektorgrafik/12965.aspx"> <img class='img-responsive' src='/img_novi/lamborghini-logo.jpg' alt='Lamborghini-Vektorgrafik' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Pickup-Auto-frei-Vektor/6036.aspx"> <img class='img-responsive' src='/img_novi/s-car-vector-ride-image_6036.jpg' alt='Pickup Auto frei Vektor' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Luxus-Sportwagen/31435.aspx"> <img class='img-responsive' src='/img_novi/modern-sports-car-vector.jpg' alt='Luxus-Sportwagen' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Taxistand-Vektor-Bild/27105.aspx"> <img class='img-responsive' src='/img_novi/taxi-stand-vectorportal.jpg' alt='Taxistand-Vektor-Bild' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Sattelzug/32946.aspx"> <img class='img-responsive' src='/img_novi/semi-truck-vector.jpg' alt='Sattelzug' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Kinder-in-einem-Schulbus/24980.aspx"> <img class='img-responsive' src='/img_novi/kids-school-bus-vectorporta.jpg' alt='Kinder in einem Schulbus' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/SCHALTFLÄCHE-BEDINGUNG-LUFT/23010.aspx"> <img class='img-responsive' src='/img_novi/car-air-condition-button.jpg' alt='SCHALTFLÄCHE BEDINGUNG LUFT' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/de/Kostenloser/Stock-Vektoren/Fahrzeuge-Transport/Taxischild/24468.aspx"> <img class='img-responsive' src='/img_novi/taxi-symbol-pdv.jpg' alt='Taxischild' /></a></li>
</ul>
</div>
<div class="col-xs-12 col-sm-12 col-md-12 pagination_sec pad_0"> </div>
</div>
<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3  right_row">
<div class="banner-space-2">
<div style="color:#999;text-align: center;font-size:12px">
<span>
Advertisements
</span>
</div>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<ins class="adsbygoogle" style="display:inline-block;width:300px;height:600px" data-ad-client="ca-pub-4767662663033227" data-ad-slot="2939673906"></ins>
<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
</div>
<div class="banner-space-2">
<a target="_blank" href="https://shutterstock.7eer.net/c/46633/315486/1305">
<img src="/images/vp-banner-de.jpg" border="0" alt="Get Started Now With Shutterstock" width="300" height="250" />
</a>
<img height="0" width="0" src="https://shutterstock.7eer.net/c/46633/315486/1305" style="position:absolute;visibility:hidden;" border="0" />
</div>
</div>
</div>
</div>
<div class="col-xs-12 col-sm-12">
<div class="col-xs-3 col-sm-3"></div>
<div class="col-xs-6 col-sm-6">
<div id="note1"></div>
<div id="load"></div></div>
<div class="col-xs-3 col-sm-3"></div>
</div>
<footer>
<div id="footer" class="col-xs-12 col-sm-12 pad_0">
<form class="form-inline" id="ajax-contact-form" method="post" action="">
<div class="form-group">
<h3>Abonnieren Sie noch heute und erhalten Sie 100 freie Vektoren</h3>
<div class="input-group  text-left">
<input type="text" class="fild2 form-control" name="name" placeholder="E-Mail Adresse eingeben">
</div>
</div>
<button type="submit" class="btn btn-default">Jetzt Abonnieren</button>
<a href="#" id="back-to-top">
<img src="/images_novi/up_arrow.png" alt="" class="img-responsive up_arrow">
</a>
</form>
<div class="col-xs-12 col-sm-12 footer_bottom pad_0">
<div class="col-xs-12 col-sm-5 footer_box">
<h3>Über Uns</h3>
<p>Wir erstellen kostenlose Stock Vektoren, die Designer in kommerziellen Projekten verwenden können. Wir vertreiben auch freie Vektoren, die von anderen Künstlern erstellt wurden, die unseren Besuchern ihre Arbeit präsentieren möchten. Vectorportal ist wiederholt, von verschiedenen Grafik-Design Websites, zu den Top-10 der freien Vektor -Ressourcen gewählt worden.</p>
</div>
<div class="col-xs-12 col-sm-2 footer_box">
<h3>Site-Links</h3>
<ul>
<li><a target="_blank" href="http://blog.vectorportal.com/"> Blog</a></li>
<li><a href="/de/urheberrechtshinweis/">Urheberrechtshinweis </a></li>
<li><a href="/de/Medien/">Presse</a></li>
<li><a href="/de/Contact/">Kontakt</a></li>
</ul>
</div>
<div class="col-xs-12 col-sm-2 footer_box">
<h3>Sprache</h3>
<ul>
<li><a href="https://www.vectorportal.com/">English</a></li>
<li><a href="https://www.vectorportal.com/es/">Español</a></li>
<li><a href="https://www.vectorportal.com/it/">Italiano</a></li>
<li><a href="https://www.vectorportal.com/pt/">Português</a></li>
<li><a href="https://www.vectorportal.com/de/">Deutsch</a></li>
<li><a href="https://www.vectorportal.com/ru/">Русский</a></li>
<li><a href="https://www.vectorportal.com/fr/">Français</a></li>
<li><a href="https://www.vectorportal.com/tr/">Türkçe</a></li>
<li><a href="https://www.vectorportal.com/sv/">Svenska</a></li>
<li><a href="https://www.vectorportal.com/nl/">Nederlands</a></li>
<li><a href="https://www.vectorportal.com/ro/">Romana</a></li>
<li><a href="https://www.vectorportal.com/pl/">Polski</a></li>
<li><a href="https://www.vectorportal.com/no/">Norsk</a></li>
</ul>
</div>
<div class="col-xs-12 col-sm-2 footer_box">
<h3>Anschließen auf</h3>
<ul>
<li><a target="_blank" href="https://www.facebook.com/freevectorgraphics/">Facebook</a></li>
<li><a target="_blank" href="https://twitter.com/vectorportal">Twitter</a></li>
<li><a target="_blank" href="http://www.vectorsforum.com/">Forum</a></li>
<li><a target="_blank" href="https://www.flickr.com/photos/33678919@N07/">Flickr</a></li>
<li><a target="_blank" href="https://www.behance.net/vectorportal">Behance</a></li>
<li><a target="_blank" href="https://pinterest.com/vectorportal/">Pinterest</a></li>
<li><a target="_blank" href="https://dribbble.com/vectorportal">Dribbble</a></li>
</ul>
</div>
<div class="col-xs-12 col-sm-12">
<div class="copy_txt">&copy; 2005-2020 Vectorportal.com</div>
<div class="privacy"><a href="/privacy/">Datenschutz-Bestimmungen</div>
</div>
</div>
</div>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
$(document).ready(function()
{
    $("#ajax-contact-form").submit(function(e){
		
        $('#load').append('<center><img src="/images/ajax-loader.gif" alt="Currently Loading" id="loading" /></center>');
		  e.preventDefault();
        var fem = $(this).serialize(),
    		note = $('#note1');
	
        $.ajax({
            type: "POST",
            url: "https://www.vectorportal.com/submit/maillist1.aspx",
            data: fem,
            success: function(msg) {
				if ( note.height() ) {			
					note.slideUp(1000, function() { $(this).hide(); });
				} 
				else note.hide();

				$('#loading').fadeOut(300, function() {
					$(this).remove();

					// Message Sent? Show the 'Thank You' message and hide the form
					result = (msg === 'OK') ? '<div class="alert alert-success text-center"> <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">X</span></button>Vorname</div>' : msg;

					var i = setInterval(function() {
						if ( !note.is(':visible') ) {
							note.html(result).slideDown(1000);
							clearInterval(i);
						}
					}, 40);    
				}); // end loading image fadeOut
            }	
        });

        return false;
    });
});

</script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-18403054-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments)};
  gtag('js', new Date());

  gtag('config', 'UA-18403054-1');
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


<script src="https://apis.google.com/js/platform.js" async defer></script>
<script>
		$('#back-to-top').click(function(event) {



			$('html, body').animate({

				scrollTop: 0

			}, 500);



			event.preventDefault();

			return false;

		});



		//Next code used to prevent unexpected menu close when using some components (like accordion, tabs, forms, etc), please add the next JavaScript to your page

		$(window).load(function() {

			$(document).on('click', '.navbar .dropdown-menu', function(e) {
				e.stopPropagation();
			});

		});
	</script>
</body>
</html>
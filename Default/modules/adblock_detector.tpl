<link id="adbd_styles" href="{THEME}/adbd/adbd_styles.css" type="text/css" rel="stylesheet">
<div class="adbd-filter"></div>
<aside class="adbd-popup">
	<h2>Обнаружен блокировщик рекламы</h2>
	<p>
		Отключите блокировщик рекламы и перезагрузите страницу.
	</p>
	<button onclick="document.location.reload(true)">Обновить</button>
</aside>
<script id="adbd_main_script">

var currentdate = new Date(),
	datetime = (currentdate.getHours()*100)+(currentdate.getMinutes()*10)+currentdate.getSeconds(),
	fuckadblock_file=document.createElement('script');

fuckadblock_file.id='adbd_script';
fuckadblock_file.src='{THEME}/adbd/fuckadblock.js?d='+datetime;
document.body.appendChild(fuckadblock_file);

setTimeout( function() {
var container = document.documentElement,
	popup = document.querySelector( '.adbd-popup' ),
	filter = document.querySelector( '.adbd-filter' ),
	currentState = null;

addClass( container, 'adbd-ready' );

function detected( state ) {
	addClass( popup, state );
	setTimeout( function() {
		addClass( container, 'adbd-active' );
	}, 0 );
}

function addClass( element, name ) {
	element.className = element.className.replace( /\s+$/gi, '' ) + ' ' + name;
}

function removeClass( element, name ) {
	element.className = element.className.replace( name, '' );
}

var ad_element = document.createElement('div');
ad_element.innerHTML = '&nbsp;';
ad_element.className = 'adsbox';
document.body.appendChild(ad_element);
if (ad_element.offsetHeight === 0 || document.getElementById('fUCKADBLOCKbyGHOSTwriter') === null) {
	$( ".page" ).addClass( "adbd-contents" );
	detected('stack');
} else {
	$("#fUCKADBLOCKbyGHOSTwriter").remove();
	$(".adbd-filter").remove();
	$(".adbd-popup").remove();
	$("#adbd_styles").remove();
	$("#adbd_script").remove();
	removeClass(container, 'adbd-ready');
}
ad_element.remove();

$("#adbd_main_script").remove();
}, 2500 );
</script>
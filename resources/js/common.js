$(document).ready(function() {
	//var location = escape(window.location.href).replace("+", "%2B").replace("/", "%2F");
	var location = encodeURIComponent(window.location.href);
	$('fb_share_link').attr('share_url', location);
	$('fb_share_link').attr('share_url', 'http://twitter.com/share?url=' + location + "&via=OpenEJB");
});

(function ($) {
	var slider = $.fn.slider;
	$.fn.slider = function(methodOrOptions) {
		$(this).addClass('initialized');
		slider.apply(this, arguments);
    }; // Plugin end
}( jQuery ));
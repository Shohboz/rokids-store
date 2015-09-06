(function ($) {
	var slider = $.fn.slider;
	$.fn.slider = function(methodOrOptions) {
		$(this).addClass('initialized');
		slider.apply(this, arguments);
  };
}(jQuery));
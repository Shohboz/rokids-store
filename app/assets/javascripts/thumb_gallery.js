(function ($) {
	var methods = {

    init : function(options) {
      var defaults = {
        indicators: true,
        transition: 500
      };
      options = $.extend(defaults, options);

      return this.each(function() {

        // For each slider, we want to keep track of
        // which slide is active and its associated content
        var $this = $(this);
        var $slider = $this.first();
        var $slides = $slider.find('img');
        var $active_index = $slider.find('.active-slider').index();
        var $active;
        if ($active_index != -1) { $active = $slides.eq($active_index); }

        // dynamically add indicators
        if (options.indicators) {
          var $indicators = $('<ul class="indicators"></ul>');
          $slides.each(function( index ) {
            var $indicator = $('<li class="indicator-item waves-effect waves-light"></li>');
            $indicator.css('background-image', 'url(' + $(this).attr('src') + ')');

            // Handle clicks on indicators
            $indicator.click(function () {
              var $parent = $slider.parent();
              var curr_index = $parent.find($(this)).index();

              $curr_slide = $parent.find($(this));
              $slides.removeClass('active-slider');
              $slides.eq(curr_index).addClass('active-slider');
              $indicators.removeClass('active');
              $indicators.eq(curr_index).addClass('active');
            });
            $indicators.append($indicator);
          });
          
          $this.append($indicators);
          $indicators = $this.find('ul.indicators').find('li.indicator-item');
        }

        if ($active) {
          $active.show();
        }
        else {
          $slides.first().addClass('active-slider').velocity({opacity: 1}, {duration: options.transition, queue: false, easing: 'easeOutQuad'});

          $active_index = 0;
          $active = $slides.eq($active_index);
          // Update indicators
          if (options.indicators) {
            $indicators.eq($active_index).addClass('active');
          }
        }

        // Adjust height to current slide
        $active.find('img').each(function() {
          $active.find('.caption').velocity({opacity: 1, translateX: 0, translateY: 0}, {duration: options.transition, queue: false, easing: 'easeOutQuad'});
        });

      });
    }
  }
  
  $.fn.thumbGallery = function(methodOrOptions) {
    $(this).addClass('js-ready');
    return methods.init.apply( this, arguments );
  };
}(jQuery));
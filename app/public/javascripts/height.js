(function($) {
    var height = 0;
    $.fn.equalizeHeightWith = function(options) {
        var opts = $.extend({}, $.fn.equalizeHeightWith.defaults, options);
        
        return this.each(function() {
           $this = $(this);
           var o = $.meta ? $.extend({}, opts, $this.data()) : opts;
           alert(options);
           $this.css({
            height : $(o).css("height")
           });
        });
    };
    $.fn.equalizeHeightWith.defaults = { element: parent };
})(jQuery);
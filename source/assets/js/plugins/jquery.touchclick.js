/**
 * jQuery plugin to make event for both "click" and "touchend" depending on if its a touch device or not
 */
(function($) {
  $.fn.touchClick = function(callback) {
    var eventType = isTouchDevice() ? "touchend" : "click";
    this.each(function() {
      $(this).bind(eventType, callback);
    });
    return this;
    function isTouchDevice() {
      return !!('ontouchstart' in window);
    }
  };
})(jQuery);

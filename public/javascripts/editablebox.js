(function( $ ){
  var methods = {
    init : function( options ) { 
      this.find('a.editablebox').bind('click.eb', function(){
        $(this).parents('.vendor').children('.show').hide(1500);
        $(this).parents('.vendor').children('.edit').show(1500);
        return false;
      });
      close_link = $('<a href="#">Close</a>')
  close_link.bind('click', function(){
        $(this).parents('.vendor').children('.edit').hide(1500);
        $(this).parents('.vendor').children('.show').show(1500);
        return false;
  }); 
      this.find('.edit').append(close_link);
      return this;
          },
  };

  $.fn.editable = function( method ) {
    if ( methods[method] ) {
      return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
    } else if ( typeof method === 'object' || ! method ) {
      return methods.init.apply( this, arguments );
    } else {
      $.error( 'Method ' +  method + ' does not exist on jQuery.tooltip' );
    }    
  };
  
})( jQuery );


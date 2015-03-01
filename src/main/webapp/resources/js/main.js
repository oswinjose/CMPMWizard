 function toggle(id){
	  var elem = jQuery('#'+id);
	  if(elem.hasClass('hidden')){
		  elem.removeClass('hidden');
	  }else{
		  elem.addClass('hidden');
	  }
  }
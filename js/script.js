$('.submit').click(function(event){
    /* stop form from submitting normally */
    event.preventDefault();
  
    var obj = {};
    var elements = $('.contact-info input');
    $.each(elements, function(index, item){
	obj[item.name] = item.value;
    });
//need to sort out textareas
    
    $.ajax({
	url:"/contactUs/data",  
	type: 'POST',
	data: JSON.stringify(obj),
	dataType: 'json',
	success: function(data) {
         alert("Data Loaded: " + data);
	}
     });
       
//     send($(".contact-info").serializeArray())
       
});







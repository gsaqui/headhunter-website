$('.submit').click(function(event){
    /* stop form from submitting normally */
    event.preventDefault();
/*    
   $.post("/contactUs/data",  $(".contact-info").serialize() ,
       function(data) {
         alert("Data Loaded: " + data);
       });
*/       
     send($(".contact-info").serializeArray())
       
});


var sock = new SockJS('http://localhost:8080/socks');
sock.onopen = function() {
   console.log('open');
};
sock.onmessage = function(e) {
   console.log('message', e.data);
   alert('received message echoed from server: ' + e.data);
};
sock.onclose = function() {
   console.log('close');
};

function send(message) {

 if (sock.readyState == WebSocket.OPEN) {
    console.log("sending message")
    sock.send(message);
 } else {
    console.log("The socket is not open.");
 }
}






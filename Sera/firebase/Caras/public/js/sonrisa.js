

dbcaras = firebase.database().ref("caras");
dbsonrisas = firebase.database().ref("sonrisas");

dbsonrisas.on('value', function(snap){
  valorSonrisa = snap.val(); 
  cambiarImagen(valorSonrisa);
});

function cambiarImagen(valorSonrisa){
	var sonrisa = document.getElementById('sonrisa');
	
	var seriedad = document.getElementById('seriedad');
  
        if(valorSonrisa == 1){	
		    sonrisa.style.display = "block";
			seriedad.style.display = "none";
		
			
			
       } else if(valorSonrisa == 0){
		   seriedad.style.display = "block"; 
			sonrisa.style.display = "none";
			
			
			
	   }			
        
}

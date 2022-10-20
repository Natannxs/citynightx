
$(function () {
	window.addEventListener('message', function (event) {
		console.log(event.data.action)
		if (event.data.action == "show") {
			$('body').css('display', 'block')
		}
		else{
			$('body').css('display', 'none')
		}
		
		// switch (event.data.action) {
		// 	case 'show':
		// 		$('body').css('display', 'block')
		// 	case 'hide':
		// 		$('body').css('opacity', '0.0')
		// }
	})
})
let txtn = "";

function AddNumber(nombre){
	txtn = txtn + nombre

	$( "#p"+txtn.length).html(nombre);
	console.log(txtn.length)
	if (txtn.length == 4) {
		console.log("sent")
		console.log(txtn)
		$.post('http://code_tel_ui/validate',txtn)
		$('body').css('display', 'none')
		$("#p1").html("•");
		$("#p2").html("•");
		$("#p3").html("•");
		$("#p4").html("•");
		txtn = "";
	}
}
for (let i = 0; i<10;i++) {
	$("#"+i).click(function() {
		AddNumber(i)
	});	
}

$( "#return" ).click(function() {
	$('body').css('display', 'none')
	$.post('http://code_tel_ui/validate')
	$("#p1").html("•");
	$("#p2").html("•");
	$("#p3").html("•");
	$("#p4").html("•");
	txtn = "";
});	

$( "#retry" ).click(function() {
	$("#p1").html("•");
	$("#p2").html("•");
	$("#p3").html("•");
	$("#p4").html("•");
	txtn = "";
});	


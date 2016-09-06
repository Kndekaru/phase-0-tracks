console.log("I'm running properly");

//function changeColorType (event)
//	{event.target.style.color = 'red';

//	}

//var colorChange = document.getElementsByTagName("p");
//colorChange.addEventListener("click",changeColorType);


/*function setColor ()
	{ document.getElementsById("h1id");

	}
*/
var h1 = document.getElementById("h1id");
h1.style.color = "red";

function addBorder(event) {
	event.target.style.border = "3px solid red";

}
var text = document.getElementsByTagName("p");
text.addEventListener("click",addBorder);
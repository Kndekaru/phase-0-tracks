console.log("I'm running properly");

// var pTagFontSize = document.getElementById("ptag");
// pTagFontSize.style.fontSize = "2em";

function changeColorType (event) {
  event.target.style.color = 'red';
 }

var colorChange = document.getElementById("h1id");
colorChange.addEventListener("click",changeColorType);


function changeBackground (event) {
  event.target.style.backgroundColor = 'green';
 }

// I got it to work for just one p element at a time with the array notation:
// [0] will be the first p element and [1] will be the next and so forth.

function changeBackground (event) {
  event.target.style.backgroundColor = 'green';
 }

function changeAllElementsOfType() {

  var elementType = document.getElementsByTagName("p");
  var i;

  for (i = 0; i < elementType.length; i++) {
     elementType[i].style.backgroundColor = "blue";
     elementType[i].style.color = "white";
     elementType[i].addEventListener("click", changeBackground)
  }
}

changeAllElementsOfType();

// the getElementsByTagName is returning an array or all the elements that
// are named "p" so it look like you have to select the ones you want to use.
// Im sure there is a way to do all the "p" elements but haven't found it yet.


var para = document.createElement("p");                       // Create a <p> element
var t = document.createTextNode("This is a paragraph");       // Create a text node
para.appendChild(t);                                          // Append the text to <p>
document.body.appendChild(para); 
var colors = ["blue","red","green","yellow"];

var names =  ["ed","jericho","Boxer","Epona"];

colors.push("Orange");
names.push("Calvin");

console.log(names)

var horses = {};

for(var i = 0; i <names.length; i++) {
  horses[names[i]] = colors[i];
}
console.log(horses)

function car (make, model, price,fuel_efficiency) {
  console.log("car:", this);
  this.make = make;
  this.model = model;
  this.price = price;
  this.fuel_efficiency;
  this.noise = function() {
    console.log("zoom");
  };
}

var test_car = new car  ("ford", "focus", 15000,true)
console.log(test_car)

var test_car_two = new car ("toyota", "corolla", 14000, true)
console.log(test_car_two)
test_car.noise();

var test_car = new car  ("ford", "focus", 27000,true)
console.log(test_car)


for (var key in test_car) {
  if (test_car.hasOwnProperty(key)) {
    console.log(key + "->" + test_car[key]);
  }
}
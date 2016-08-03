function Car(Model,price,brand,fuel_effieciency){

	this.Model = Model;
	this.price = price;
	this.brand = brand;
	this.fuel_effieciency;
	this.sound = function() { console.log ("Vroom Vroom");};
}

var acar = new Car ("focus",12000,"Ford",true);
console.log(acar);
acar.sound();

var another_car = new Car ("raptor",27000,"Ford",false);
console.log(another_car);
another_car.sound();

for (var key in another_car) {
if (another_car.hasOwnProperty(key)) {
	console.log(key + " -> " + another_car[key]);
	}
}



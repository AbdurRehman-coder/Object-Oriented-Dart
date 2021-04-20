import 'dart:math';

abstract class Shape{
// getter
double get area;
double get perimeter;
String get name;
}

// Circle class inherit from Shape
class Circle extends Shape{
double radius;
// cirlce constructor
Circle(this.radius);
@override
double get area => pi * ( radius);
double get perimeter => 2 * pi * radius;
String get name => 'I am Circle with radius: $radius';
}

// Rectangle inherit form Shape
class Rectangle extends Shape{
double length;
double width;
// Rectangle constructor
Rectangle(this.length, this.width);
double get area => ( length * width );
double get perimeter => 2 * length + 2 * width;
String get name => 'I am the Rectangle with length: $length and width: $width';
}

// Square class will extends Rectangle, 
// Because Square and Rectangle has same properties
class Square extends Rectangle{
// in Square all sides are equal:
double side;
Square(
 side,
) : super(
side,
side,
 );

String get name => 'I am Square with side: $length';
}





// Main  function ( complation start from here...)
void main(){
Square sq = Square (20.5);
Rectangle rec = Rectangle(10.0, 10.5);
Circle circle = Circle(4);
// we can't instantiate abstract class object, 
// But we can use it as a type 
Shape randShape;
// random value generator, from math library
Random random = Random();
int choice = random.nextInt(3); // Store random value in choice

// switch statements
switch(choice){
case 0:
randShape = Circle(
random.nextInt(5) + 1.0
);
break;
case 1:
randShape = Square(
random.nextInt(10) + 1.0
);
break;
case 2:
randShape = Rectangle(
random.nextInt(20) + 1.0, 
random.nextInt(30) + 1.0
);
break;
default:
print('not working properily');



print(randShape.name);
print(randShape.area);
print(randShape.perimeter);

/*
print(rec.name);
print(sq.name);
print(circle.name);
print(rec.area);
print(rec.perimeter);
print(sq.area);
print(rec.perimeter);
print(sq.perimeter);  */
}
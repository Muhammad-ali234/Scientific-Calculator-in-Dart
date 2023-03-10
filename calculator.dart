import 'dart:io';
import 'dart:math';

void findAverage() {
  List list = [];
  int totalNumber = 0;
  double average = 0.00;
  print('Enter Size : ');

  // Promt user for size of total numbers
  totalNumber = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < totalNumber; i++) {
    print('Enter Value at: ${i + 1}: ');
    // Get value  from user
    int value = int.parse(stdin.readLineSync()!);
    // Store value in list
    list.insert(i, value);
    // Sum total value of list
    average = average + list[i];
  }
  // Calculate String and Round it off to 2 decimal places
  average = (average / list.length);
  String avg = average.toStringAsFixed(2);
  print('Average is: ${avg}');
}

void main() {
  print("--------------------------------------");
  print("Welcome to the scientific calculator!");
  print("--------------------------------------");


  print("Enter the operation (+, -, *, /, sqrt, sin, cos, tan, acos, asin , atan, %, log, avg,power,cube):");
  String operation = stdin.readLineSync()!;

  double? num1, num2;

  //function to provide input used for +,-,/,%,power
  arithemicCalc() {
    print("Enter the first number(if power it is base):");
    num1 = double.parse(stdin.readLineSync()!);

    print("Enter the second number(if power it is exponent):");
    num2 = double.parse(stdin.readLineSync()!);
  }

  //function to provide input for sqrt,sin,cos,tan,acos,asin,atan,%,log
  tigonometircCal() {
    print("Enter the number:");
    num1 = double.parse(stdin.readLineSync()!);
  }

  switch (operation) {

    //condition for sum
    case '+':
      arithemicCalc();
      print('The Sum of two num is: ${num1! + num2!}');
      break;
    //condition for subtraction
    case '-':
      arithemicCalc();
      print('The Subtraction of two number is: ${num1! - num2!}');
      break;
    //condition for division
    case '/':
      arithemicCalc();
      print('The Division of two number is: ${num1! / num2!}');
      break;
    //condition for multiplication
    case '*':
      arithemicCalc();
      print('The Multiply of Two number is: ${num1! * num2!}');
      break;
    //condition for square root
    case 'sqrt':
      tigonometircCal();
      print('The squre root is: ${sqrt(num1!)}');
      break;
    //condition for sin
    case 'sin':
      tigonometircCal();
      print('The Sin theta is: ${sin(num1!)}');
      break;
    //condition for cos
    case 'cos':
      tigonometircCal();
      print('The Cos theta is: ${cos(num1!)}');
      break;
    //condition for tan
    case 'tan':
      tigonometircCal();
      print('The tan theta is: ${tan(num1!)}');
      break;
    //condition for acos
    case 'acos':
      tigonometircCal();
      print('The acos Theta is: ${acos(num1!)}');
      break;
    //condition for asin
    case 'asin':
      tigonometircCal();
      print('The asin Theta is: ${asin(num1!)}');
      break;
    //condition for atan
    case 'atan':
      tigonometircCal();
      print('The atan Theta is: ${atan(num1!)}');
      break;
    //condition for log
    case 'log':
      tigonometircCal();
      print('The Log is: ${log(num1!)}');
      break;
    //condition for percentage
    case '%':
      arithemicCalc();
      print('The percentage is: ${(num1! / num2!) * 100}');
      break;
    //condition for percentage
    case 'power':
      Print1();
      print('The power is: ${pow(
        num1!,
        num2!,
      )}');
      break;
    //condition for percentage
    case 'cube':
      tigonometircCal();
      print('The cube is: ${pow(
        num1!,
        3,
      )}');
      break;
    //condition for percentage
    case 'avg':
      findAverage();
      break;
    //condition for wrong input
    default:
      print("Invalid operator");
      return;
  }
}

import 'dart:io';
import 'dart:math';

findAverage() {
  List list = [];
  print('Enter the total number  you want to find average:');
  int num = int.parse(stdin.readLineSync()!);
  double average = 0;
  for (int i = 0; i < num; i++) {
    print('Enter value to add in List:${i + 1}');
    int value = int.parse(stdin.readLineSync()!);
    list.insert(i, value);
  }
  for (int j = 0; j < num; j++) {
    average = list[j] + average;
  }
  print('The average is :${average / list.length}');
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

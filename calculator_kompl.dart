import 'dart:io';

void main() {
  calcEverything();
  print('Bis zum nächsten Mal und vielen Dank!');
}

void calcEverything() {
  print('Hallo bei deinem Taschenrechner');
  print('Was kann ich für dich tun?');
  print('1: Addieren');
  print('2: Subtrahieren');
  print('3: Multipilzieren');
  print('4: Dividieren');
  String userInput = stdin.readLineSync() ?? '';

  switch (userInput) {
    case '1':
      chooseNumbers();
      addition();
    case '2':
      chooseNumbers();
      substraction();
    case '3':
      chooseNumbers();
      multiplication();
    case '4':
      chooseNumbers();
      division();
    default:
      print('Merkste selber, oder?');
  }
}

void chooseNumbers() {
  print('Welche beiden Werte möchtest du berechnen?');
}

void addition() {
  print('Zahl 1: ');
  String firstUserInput = stdin.readLineSync() ?? '';
  print('Bitte die 2. Zahl: ');
  String secondUserInput = stdin.readLineSync() ?? '';

  double firstNumber = double.parse(firstUserInput);
  double secondNumber = double.parse(secondUserInput);
  double sumOfAdd = firstNumber + secondNumber;
  print('Das Ergebnis aus $firstNumber + $secondNumber ist: $sumOfAdd');
}

void substraction() {
  print('Zahl 1: ');
  String firstUserInput = stdin.readLineSync() ?? '';
  print('Bitte die 2. Zahl: ');
  String secondUserInput = stdin.readLineSync() ?? '';

  double firstNumber = double.parse(firstUserInput);
  double secondNumber = double.parse(secondUserInput);
  double sumOfSub = firstNumber - secondNumber;
  print('Das Ergebnis aus $firstNumber - $secondNumber ist: $sumOfSub');
}

void multiplication() {
  print('Zahl 1: ');
  String firstUserInput = stdin.readLineSync() ?? '';
  print('Bitte die 2. Zahl: ');
  String secondUserInput = stdin.readLineSync() ?? '';

  double firstNumber = double.parse(firstUserInput);
  double secondNumber = double.parse(secondUserInput);
  double sumOfMulti = firstNumber * secondNumber;
  print('Das Ergebnis aus $firstNumber * $secondNumber ist: $sumOfMulti');
}

void division() {
  print('Zahl 1: ');
  String firstUserInput = stdin.readLineSync() ?? '';
  print('Bitte die 2. Zahl: ');
  String secondUserInput = stdin.readLineSync() ?? '';

  double firstNumber = double.parse(firstUserInput);
  double secondNumber = double.parse(secondUserInput);
  double sumOfDiv = firstNumber / secondNumber;
  print('Das Ergebnis aus $firstNumber / $secondNumber ist: $sumOfDiv');
}

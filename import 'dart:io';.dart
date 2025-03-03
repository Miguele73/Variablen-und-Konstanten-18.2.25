import 'dart:io';

void main() {
  stdout.write('Wie ist dein Name? ');
  String name = stdin.readLineSync()!;

  print('Hallo, $name!');
}

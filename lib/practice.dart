import 'dart:io'; // for File , to get input of generate output.

void main() {
  print("Welcome to Dart"); // or u can use too - - stdin();
  stdout.write("Enter your name");

  var name = stdin.readLineSync();

  print("Welcome, $name");

  var rohan =
      Human(); // you can call or use classes methods without using nw keyword in new version of Flutter
}

class Human {
  Human();

  String name = "John";
}

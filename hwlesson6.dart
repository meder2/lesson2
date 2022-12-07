import 'dart:io';

void main() {
  task17();
  // stdout.write('number: ');
  // var number = stdin.readLineSync()!;
  // if (number.length == 10) {
  //   print('your number: $number');
  // } else {
  //   print('non-correct number');
  // }

  // task 4
  // stdout.write('name: ');
  // String name = stdin.readLineSync()!;
  // stdout.write('age: ');
  // int age = int.parse(stdin.readLineSync()!);
  // print('your name is $name');
  // print('you are $age years old');

  // task 3/////////////////////
  // int a = 20, b = 10;
  // a = b;

  // print(a);
  // print(b);

  // task 2
  // num a = 5, b = 2, c = 132, d = 123, e = 78, f = 0, g = 2.5;
  // print('$a + $b = ${a+b}');
  // print('$a - $b = ${a-b}');
  // print('$c • $d = ${c*d}');
  // print('$e ÷ $b = ${e/b}');
  // print('$e ÷ $g = ${e/g}');
  // print('$f • $a = ${f*a}');

  // task 1
  // num a = 5, b = 5.126;
  // print('$a + $b = ${a+b}');
  // print('$a - $b = ${a-b}');
  // print('$a • $b = ${a*b}');
  // print('$a ÷ $b = ${a/b}');
}

task5() {
  stdout.write('number: ');
  var number = stdin.readLineSync()!;
  if (number.length == 10) {
    print('your number: $number');
  } else {
    print('non-correct number');
  }
}

task6() {
  bool isRain = false;
  if (isRain == true) {
    print('бери зонт');
  } else if (!isRain) {
    print('не бери зонт');
  }
}

task7() {
  int a = 3;
  if (a > 3) {
    print(a * 10);
  } else if (a < 3) {
    print(a / 10);
  } else {
    print('a = 3');
  }
}

task8() {
  int a = 9;
  if (a <= 7) {
    print('Yes');
  } else if (a >= 10) {
    print('No');
  } else if (a == 9) {
    print("Error");
  } else {
    print("it's 8");
  }
}

task9() {
  int a = 10;
  int b = 10;
  if (a < b) {
    print(b);
  } else if (a > b) {
    print(a);
  } else {
    print('$a = $b');
  }
}

task10() {
  int a = 99;
  int b = 2;
  if (a + b == 100) {
    print('yes');
  } else {
    print('no');
  }
}

task11() {
  int a = 1;
  if (a == 1) {
    print('zima');
  } else if (a == 2) {
    print('vesna');
  } else if (a == 3) {
    print('leto');
  } else if (a == 4) {
    print('osen');
  } else {
    print('Error');
  }
}

task12() {
  num a = 1;
  num b = 2;
  num c = 3;
  if (a < b && a < c) {
    print(a);
  } else if (b < a && b < c) {
    print(b);
  } else if (c < a && c < b) {
    print(c);
  } else {
    print('error');
  }
}

task13() {
  int a = 012;
  int b = a % 10;
  // print(b);
  b = b * 100;
  double d = a / 10;
  print(d.toInt());
  // d = d * 10;
  d = d % 10;

  // d = d * 10;
  var c = a / 100;
  // print(c.toInt());
  print(b + d.toInt() + c.toInt());
}

task16() {
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}

task17() {
  for (int i = 5; i > 0; i--) {
    print(i);
  }
}

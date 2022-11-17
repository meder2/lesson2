void main() {
  int a = 10;
  double b = 20.5;
  print(a + b);

  String name = "Meder";

  print(name);

  bool isValid = true;
  print(isValid);
  bool isCar = false;
  print(isCar);

  List array = [1, 2, 3];
  print(array);

  List<int> array1 = [1, 2, 3];
  print(array1);

  Map student = {
    'name': 'Meder',
    "age": 100,
    'isMan': true,
  };
  print(student);
  print(student['name']);
  print(student['isMan']);

  var heart_symbol = '\u2665';
  var laugh_symbol = '\u{1f600}';
  print(heart_symbol);
  print(laugh_symbol);

  dynamic test = 10;
  print(test);
}

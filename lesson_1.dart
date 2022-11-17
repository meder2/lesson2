void main(List<String> args) {
  int a = 10;
  double b = 20.5;
  print(a + b);

  var c = 10;
  c = 15;
  c = 20;
  print(c);

  dynamic e = 10;
  print(e.runtimeType);
  print(e);

  dynamic d = 10;
  d = 15;
  d = 20;
  print(d);
}

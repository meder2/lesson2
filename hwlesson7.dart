void main() {
  task4();
}

task4() {
  for (int a = 1, i = 1; i <= 100; i) {
    print(a);
    i++;
    a = i + a;
  }

  int i = 1;
  int a = 1;
  while (i <= 100) {
    print(a);
    i++;
    a = a + i;
  }
}

task3() {
  int i = 0;
  while (i <= 100) {
    print(i);
    i += 2;
  }
  for (int i = 0; i <= 100; i += 2) {
    print(i);
  }
}

task2() {
  int i = 11;
  while (i <= 33) {
    print(i);
    i++;
  }
  for (int i = 11; i <= 33; i++) {
    print(i);
  }
}

task1() {
  int i = 1;
  while (i <= 100) {
    print(i);
    i++;
  }
  for (int i = 1; i <= 100; i++) {
    print(i);
  }
}

import 'dart:io';
import 'dart:math';

void main() {
  stage4();
}

stage4() {
  print(
      "\n ${'=' * 15}WELCOME TO THE GAME${'=' * 15}\n  \nChoose the difficulty:\n ");
  print('1) easy\n2) hard');
  diff();
  restartGame();
}

diff() {
  int answer = int.parse(stdin.readLineSync()!);

  if (answer == 1) {
    ran();
  } else if (answer == 2) {
    bin();
  } else {
    print('Invalid input format. Enter the number again: ');
    diff();
  }
}

bin() {
  int counter = 1;
  int raund = 0;
  int user_count = 0;
  int user_score = 0;
  int comp_count = 0;
  int comp_score = 0;

  print('\n Select the number of rounds');
  raund = int.parse(stdin.readLineSync()!);
  if (raund == '') {
    raund = 3;
  } else if (raund >= 10) {
    print('the number of rounds cannot be more than 10 ');
  }

  while (counter != (raund + 1)) {
    print("${'=' * 15}Raund $counter${'=' * 15}");
    user_count = userFunc();
    comp_count = compFunc2();
    if (user_count == comp_count) {
      comp_score++;
      user_score++;
      print('you have a draw');
    } else if (user_count < comp_count) {
      user_score++;
      print('User won $counter raund');
    } else if (user_count > comp_count) {
      comp_score++;
      print('Computer won $counter raund');
    }
    print('Computer $comp_score --- User $user_score');
    counter++;
  }
  if (comp_score < user_score) {
    print('\n Сongratulations, You have won!');
  } else if (comp_score > user_score) {
    print("\n You've lost, You may win next time!");
  }
}

ran() {
  int counter = 1;
  int raund = 0;
  int user_count = 0;
  int user_score = 0;
  int comp_count = 0;
  int comp_score = 0;

  print('\n Select the number of rounds');
  raund = int.parse(stdin.readLineSync()!);
  if (raund == '') {
    raund = 3;
  } else if (raund >= 10) {
    print('the number of rounds cannot be more than 10 ');
  }

  while (counter != (raund + 1)) {
    print("${'=' * 15}Raund $counter${'=' * 15}");
    user_count = userFunc();
    comp_count = compFunc();
    if (user_count == comp_count) {
      comp_score++;
      user_score++;
      print('you have a draw');
    } else if (user_count < comp_count) {
      user_score++;
      print('User won $counter raund');
    } else if (user_count > comp_count) {
      comp_score++;
      print('Computer won $counter raund');
    }
    print('Computer $comp_score --- User $user_score');
    counter++;
  }
  if (comp_score < user_score) {
    print('\n Сongratulations, You have won!');
  } else if (comp_score > user_score) {
    print("\n You've lost, You may win next time!");
  }
}

userFunc() {
  print("\n _You'll guess_");
  int min = 1;
  int max = 100;
  int random = min + Random().nextInt(max - min);

  int counter1 = 0;

  int answer = 0;

  while (answer != random) {
    answer = int.parse(stdin.readLineSync()!);

    if (answer > random) {
      counter1++; // counter + 1;

      print('less');
    } else if (answer < random) {
      counter1++;
      print('greater');
    } else if (answer == random) {
      counter1++;
      print('\n You guessed the number. The computer made a number $random');
      print('Number of steps: $counter1');
// print('Вы отгадали за $counter шагов');
    } else if (answer == '') {
      print('Invalid input format. Enter the number again: ');
      answer = int.parse(stdin.readLineSync()!);
    } else {
      print('Invalid input format. Enter the number again: ');
      answer = int.parse(stdin.readLineSync()!);
    }
  }

  return counter1;
}

compFunc() {
  print('\n The computer will guess, good luck!');

  print('Guess a number from 1 to 100');
  int min = 0;
  int max = 100;
  int mid = min + Random().nextInt(max - min);
  int count = 0;
  String answer = '';

  while (answer != 'yes') {
    print('is your number $mid?');
    answer = stdin.readLineSync()!;

    if (answer == 'less') {
      max = mid;
      mid = min + Random().nextInt(max - min);
      count++;
    } else if (answer == 'greater') {
      min = mid;
      mid = min + Random().nextInt(max - min);
      count++;
    } else if (answer == 'yes') {
      print('game over!');
      print('Number of steps: $count');
    }
  }
  return count;
}

compFunc2() {
  print('\n The computer will guess, good luck!');

  print('Guess a number from 1 to 100');
  int min = 0;
  int max = 100;
  int mid = (min + max) ~/ 2;  int count = 0;
  String answer = '';

  while (answer != 'yes') {
    print('is your number $mid?');
    answer = stdin.readLineSync()!;

    if (answer == 'less') {
      max = mid;
      mid = (min + max) ~/ 2;
      count++;
    } else if (answer == 'greater') {
      min = mid;
      mid = (min + max) ~/ 2;
      count++;
    } else if (answer == 'yes') {
      print('game over!');
      print('Number of steps: $count');
    }
  }
  return count;
}

restartGame() {
  print('\n  Do you want to play again?\n1) Yes\n2) No');
  int answer1 = int.parse(stdin.readLineSync()!);

  if (answer1 == 1) {
    stage4();
  } else if (answer1 == 2) {
    print('End of the game, see you later!');
  } else {
    print('Invalid input format. Enter the number again: ');
    answer1 = int.parse(stdin.readLineSync()!);
  }
}

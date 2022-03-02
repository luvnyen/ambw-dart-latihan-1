import 'dart:io';

void drawPattern(int n) {
  if (n % 2 != 0) {
    for (var i = 1; i <= (n / 2 + 1).floor(); i++) {
      if (i != (n / 2 + 1).floor()) {
        for (var j = 1; j <= (n / 2) - i + 1; j++) {
          stdout.write("*");
        }
      }
      for (var j = 1; j <= i * 2 - 1; j++) {
        if (j % 2 != 0) {
          stdout.write(i);
        } else {
          stdout.write(" ");
        }
      }
      if (i != (n / 2 + 1).floor()) {
        for (var j = 1; j <= (n / 2) - i + 1; j++) {
          stdout.write("*");
        }
      }
      print("");
    }
    int n_next = (n / 2 + 1).floor() + 1;
    for (var i = (n / 2).floor(); i >= 1; i--) {
      if (i != (n / 2 + 1).floor()) {
        for (var j = 1; j <= (n / 2) - i + 1; j++) {
          stdout.write("*");
        }
      }
      for (var j = 1; j <= i * 2 - 1; j++) {
        if (j % 2 != 0) {
          stdout.write(n_next % 9 + 1);
        } else {
          stdout.write(" ");
        }
      }
      if (i != (n / 2 + 1).floor()) {
        for (var j = 1; j <= (n / 2) - i + 1; j++) {
          stdout.write("*");
        }
      }
      if (i != 1) {
        print("");
      }
      n_next++;
    }
  } else {
    int left_side = 1;
    int right_side = n;
    for (var i = 1; i <= n; i++) {
      for (var j = 1; j <= n - i + 1; j++) {
        if (left_side % 9 == 0) {
          stdout.write(9);
          left_side++;
        } else {
          stdout.write(left_side++ % 9);
        }
        if (left_side > n) {
          left_side = 1;
        }
      }
      for (var j = 1; j <= i * 2 - 2; j++) {
        stdout.write(" ");
      }
      for (var j = n - i + 1; j >= 1; j--) {
        if (right_side % 9 == 0) {
          stdout.write(9);
          right_side--;
        } else {
          stdout.write(right_side-- % 9);
        }
        if (right_side < 1) {
          right_side = n;
        }
      }
      if (i != n) {
        print("");
      }
    }
  }
}

void main(List<String> arguments) {
  stdout.write("Input N: ");
  String? n = stdin.readLineSync();
  drawPattern(int.parse(n!));
}

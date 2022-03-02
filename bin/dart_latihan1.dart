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
  }
}

void main(List<String> arguments) {
  stdout.write("N: ");
  String? n_first = stdin.readLineSync();
  drawPattern(int.parse(n_first!));
}

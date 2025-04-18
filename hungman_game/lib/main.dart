import 'dart:io';
import 'classhung.dart';

void main() {
  print(' Welcome to Hangman! ');
  HangmanGame game = HangmanGame(); 

  game.printWordState();

  while (game.attempts > 0 && !game.isWordGuessed()) {
    stdout.write('\n🔤 Enter a letter: ');
    String? input = stdin.readLineSync()?.toLowerCase();

    if (input != null && input.isNotEmpty) {
      game.guessLetter(input);
    } else {
      print('❌ Please enter a valid letter.');
    }
  }
} 

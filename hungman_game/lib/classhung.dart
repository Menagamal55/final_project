import 'dart:math';

class HangmanGame {
  final String secretWord;
  List<String> guessedLetters = [];
  int attempts;

  static final List<String> wordList = [
    "flutter",
    "dart",
    "widget",
    "state",
    "provider"
  ];

  HangmanGame({this.attempts = 6})
      : secretWord = wordList[Random().nextInt(wordList.length)];

  void printWordState() {
    String displayWord = secretWord.split('').map((letter) {
      return guessedLetters.contains(letter) ? letter : '_';
    }).join(' ');

    print('\nWord: $displayWord');
  }

  void guessLetter(String letter) {
    if (letter.isEmpty || letter.length > 1) {
      print('❌ Please enter a single valid letter.');
      return;
    }

    if (guessedLetters.contains(letter)) {
      print('⚠️ You have already guessed "$letter". Try another letter.');
      return;
    }

    guessedLetters.add(letter);

    if (secretWord.contains(letter)) {
      print('✅ Correct! The letter "$letter" is in the word.');
    } else {
      attempts--;
      print('❌ Incorrect! Attempts left: $attempts');
    }

    printWordState();

    if (isWordGuessed()) {
      print('\n🎉 Congratulations! You guessed the word: $secretWord 🎉');
    } else if (attempts == 0) {
      print('\n💀 Game Over! The word was: $secretWord 💀');
    }
  }

  bool isWordGuessed() {
    return secretWord.split('').every((letter) => guessedLetters.contains(letter));
  }
}

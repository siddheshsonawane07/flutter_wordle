import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wordle/enums/keyboard_keys.dart';

class DataSingleton {
  static final DataSingleton _dataSingleton = DataSingleton._internal();
  Set<String> allWords = {};
  String secretWord = "";
  List<String> gridData = [""];
  Map<String, Color> coloredLetters = {};
  int currentWordIndex = 0;

  factory DataSingleton() {
    return _dataSingleton;
  }

  DataSingleton._internal() {
    if (secretWord.isEmpty) {
      createWord();
    }
  }
  // bool setLetter(KeyboardKeys key) {
  //   if (KeyboardKeys.enter.name == key.name) {
  //     return false;
  //   }
  // }

  Future<String> createWord() async {
    final words = (await rootBundle.loadString('assets/words.txt')).split("\n");
    var now = DateTime.now();
    var random = Random(now.year * 10000 + now.month * 100 + now.day);
    var index = random.nextInt(words.length);
    secretWord = words[index];
    allWords = words.toSet();
    return secretWord;
  }

}

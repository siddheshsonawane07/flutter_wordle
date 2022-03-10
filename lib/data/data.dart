import 'package:flutter/material.dart';

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

  DataSingleton._internal();
}
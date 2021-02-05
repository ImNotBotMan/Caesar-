import 'package:flutter/widgets.dart';

const List<String> ALPHABET = [
  "a",
  "b",
  "c",
  "d",
  "e",
  "f",
  "g",
  "h",
  "i",
  "j",
  "k",
  "l",
  "m",
  "n",
  "o",
  "p",
  "q",
  "r",
  "s",
  "t",
  "u",
  "v",
  "w",
  "x",
  "y",
  "z"
];
int encryptStep;
bool isCrtptor = true;
criptor(String inputText, String inputkey) {
  var key = int.parse(inputkey);
  List word = inputText.toString().toLowerCase().split("");
  List<String> outputWord = [];
  switch (isCrtptor) {
    case true:
      {
        for (var i = 0; i < word.length; i++) {
          if (word[i] == " ") {
            outputWord.add(" ");
          }
          encryptStep = ALPHABET.indexOf(word[i]) + key;
          if (encryptStep > 25) {
            outputWord.add(ALPHABET[key]);
          } else
            outputWord.add(ALPHABET[encryptStep]);
        }
        print(outputWord.join());
        return outputWord;
      }

    case false:
  }
}

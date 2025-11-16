import 'package:app_project_files/database/models/question_model.dart';
import 'package:flutter/widgets.dart';

import '../custom_widgets/symbols.dart';

class QuestionProvider with ChangeNotifier {
  int currentQuestion = 0;
  int _score = 0;
  int get score => _score;

  List<Icon> symbols = [];

  void addSymbol(AnswerOption chosenAnswer, AnswerOption rightAnswer) {
    if (chosenAnswer == rightAnswer) {
      symbols.insert(currentQuestion, Symbols.correct);
      _score++;
    }
    else{
      symbols.insert(currentQuestion, Symbols.inCorrect);
    }
    currentQuestion ++;
    notifyListeners();
  }
}

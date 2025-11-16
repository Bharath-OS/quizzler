import 'package:app_project_files/screens/score_screen.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/buttons.dart';
import '../custom_widgets/symbols.dart';
import '../database/models/question_model.dart';
import '../database/questions.dart';
import '../styles/text_styles.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  late int currentQuestion;
  late int score;
  late List<Icon> icons;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentQuestion = 0;
    score = 0;
    icons = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Question")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Center(
                  child: Text(
                    "Q${currentQuestion+1} : ${quizQuestions[currentQuestion].question}",
                    style: TextStyles.questionTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MyButtons.trueButton(
                      () => checkAnswer(AnswerOption.trueOption),
                    ),
                    MyButtons.falseButton(
                      () => checkAnswer(AnswerOption.falseOption),
                    ),
                  ],
                ),
              ),
              Wrap(children: icons),
            ],
          ),
        ),
      ),
    );
  }

  void checkAnswer(AnswerOption answer) {
    if (currentQuestion < quizQuestions.length-1) {
      if (answer == quizQuestions[currentQuestion].answer) {
        score++;
        icons.insert(currentQuestion, Symbols.correct);
      } else {
        icons.insert(currentQuestion, Symbols.inCorrect);
      }
      setState(() {
        currentQuestion++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScoreScreen(score: score)),
      );
    }
  }
}

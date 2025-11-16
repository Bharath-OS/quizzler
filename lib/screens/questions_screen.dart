import 'package:app_project_files/database/models/question_model.dart';
import 'package:app_project_files/database/questions.dart';
import 'package:app_project_files/provider/question_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../custom_widgets/buttons.dart';
import '../custom_widgets/symbols.dart';
import '../styles/text_styles.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  late int currentQuestion = context.watch<QuestionProvider>().currentQuestion;

  void checkAnswer(AnswerOption answer) {
    context.read<QuestionProvider>().addSymbol(
      answer,
      quizQuestions[currentQuestion].answer,
    );
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
                  child: Consumer<QuestionProvider>(
                    builder: (context, controller, child) => Text(
                      quizQuestions[controller.currentQuestion].question,
                      style: TextStyles.questionTextStyle,
                    ),
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
                      checkAnswer(AnswerOption.trueOption),
                    ),
                    MyButtons.falseButton(
                      checkAnswer(AnswerOption.falseOption),
                    ),
                  ],
                ),
              ),
              Consumer<QuestionProvider>(
                builder: (context, question, child) {
                  return Wrap(
                    children: context.read<QuestionProvider>().symbols,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

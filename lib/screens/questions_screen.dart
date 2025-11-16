import 'package:flutter/material.dart';

import '../custom_widgets/buttons.dart';
import '../custom_widgets/symbols.dart';
import '../styles/text_styles.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Question")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(flex: 4, child: Center(child: Text("Q1: White is white",style: TextStyles.questionTextStyle,),)),
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: Column(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [MyButtons.trueButton(), MyButtons.falseButton()],
                  ),
                ),
              ),
              Container(color: Colors.grey, height: 50,child: Symbols.correct,),
            ],
          ),
        ),
      ),
    );
  }
}

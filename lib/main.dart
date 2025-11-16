import 'package:app_project_files/provider/question_provider.dart';
import 'package:app_project_files/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/app_colors.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QuestionProvider>(
      create: (context) => QuestionProvider(),
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: MyColors.black),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}

class QuizQuestion{
  final String question;
  final AnswerOption answer;
  QuizQuestion({required this.question, required this.answer});
}

enum AnswerOption{trueOption, falseOption}
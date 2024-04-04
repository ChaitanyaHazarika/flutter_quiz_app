import 'package:flutter/widgets.dart';
import 'package:quiz_app/question_identifier.dart';
import 'package:quiz_app/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionIdentifier(
                    questionIndex: data['question_index'] as int,
                    isCorrectAnswer:
                        data['user_answer'] == data['correct_answer']
                            ? true
                            : false),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: SummaryItem(
                    question: data['questions'] as String,
                    correctAnswer: data['correct_answer'] as String,
                    userAnswer: data['user_answer'] as String,
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

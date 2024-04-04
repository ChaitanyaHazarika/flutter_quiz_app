import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(
      {super.key,
      required this.question,
      required this.correctAnswer,
      required this.userAnswer});

  final String question;
  final String correctAnswer;
  final String userAnswer;
  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 16,
            fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 5,
        ),
        Text(
          userAnswer,
          style: const TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 202, 171, 252)
          ),
        ),
        Text(
          correctAnswer,
          style: const TextStyle(
              color: Color.fromARGB(255, 150, 198, 241), fontSize: 12,),
        ),
      ],
    );
  }
}

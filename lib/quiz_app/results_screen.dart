import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:roll_dice/quiz_app/data/questions.dart";
import 'package:roll_dice/quiz_app/question_summary/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {required this.chosenAnswers, required this.onRestart, super.key});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getQuizResults() {
    final List<Map<String, Object>> results = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      results.add({
        "question_index": i,
        "question": questions[i].question,
        "correct_answer": questions[i].options[0],
        "user_answer": chosenAnswers[i],
      });
    }
    return results;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getQuizResults();
    final totalNumberOfQuestions = questions.length;
    final numberOfCorrectAnswers = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have answered $numberOfCorrectAnswers out of $totalNumberOfQuestions questions correctly!",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(194, 255, 255, 255),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionSummary(getQuizResults()),
            const SizedBox(height: 30),
            TextButton.icon(
                icon: const Icon(Icons.refresh),
                onPressed: onRestart,
                label: const Text("Restart Quiz"),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}

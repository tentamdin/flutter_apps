import "package:flutter/material.dart";
import 'package:roll_dice/components/styled_text.dart';

// void main(){
//   runApp(const QuizHome())
// }

class QuizHome extends StatelessWidget {
  const QuizHome(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 20,
            ),
            const StyledText("Learn Flutter the fun way!"),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
                onPressed: startQuiz,
                icon: const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
                label: const Text(
                  "Start Quiz",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}

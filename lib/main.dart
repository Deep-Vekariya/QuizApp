import 'package:cricket_quiz/quiz_game/quiz_welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizWelcomeScreen(
        quizTitle: "Animal Kingdom Quiz",
        buttonText: "Start Playing",
        score: "",
      ),
    ),
  );
}

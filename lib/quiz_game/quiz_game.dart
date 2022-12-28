import 'package:cricket_quiz/quiz_game/quiz_welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/quiz_model.dart';

class QuizGameScreen extends StatefulWidget {
  const QuizGameScreen({super.key});

  @override
  State<QuizGameScreen> createState() => _QuizGameScreenState();
}

class _QuizGameScreenState extends State<QuizGameScreen> {
  List quizList = [
    quiz1,
    quiz2,
    quiz3,
    quiz4,
    quiz5,
    quiz6,
    quiz7,
    quiz8,
    quiz9,
    quiz10,
  ];

  QuizModel currentQuiz = quiz1;
  int currentQuizIndex = 0;
  int marks = 0;

  optionTaped(int index) {
    if (currentQuiz.answer == index) {
      marks++;
    }
    setState(
      () {
        if (currentQuizIndex < (quizList.length - 1)) {
          currentQuizIndex = currentQuizIndex + 1;
          currentQuiz = quizList[currentQuizIndex];
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizWelcomeScreen(
                quizTitle: "Thanks For Playing",
                buttonText: "Play Again",
                score: "Score : $marks",
              ),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.blue[300],
            image: const DecorationImage(
              image: AssetImage("assets/images/gamescreen.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Column(
              children: [
                Text(
                  "Animal Kingdom Quiz",
                  style: GoogleFonts.cinzel(
                    color: Colors.yellow,
                    fontSize: 40,
                    shadows: <Shadow>[
                      const Shadow(
                        color: Colors.black,
                        offset: Offset(5.0, 4.0),
                        blurRadius: 1.0,
                      ),
                    ],
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 60, 10, 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.yellow.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              currentQuiz.question,
                              style: GoogleFonts.fredokaOne(
                                color: Colors.black,
                                fontSize: 30,
                                letterSpacing: 2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            height: 350,
                            padding: const EdgeInsets.only(top: 20),
                            child: ListView.builder(
                              itemCount: currentQuiz.optionsList.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 8, 20, 8),
                                  child: GestureDetector(
                                    onTap: () => optionTaped(index),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.yellow[600],
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.red,
                                        ),
                                      ),
                                      child: Text(
                                        currentQuiz.optionsList[index],
                                        style: GoogleFonts.fredokaOne(
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

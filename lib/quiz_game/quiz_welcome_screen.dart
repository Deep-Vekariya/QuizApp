import 'package:cricket_quiz/quiz_game/quiz_game.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizWelcomeScreen extends StatelessWidget {
  final String quizTitle;
  final String buttonText;
  final String score;
  const QuizWelcomeScreen(
      {super.key,
      required this.quizTitle,
      required this.buttonText,
      required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 190, 173, 18),
          image: DecorationImage(
              image: AssetImage("assets/images/lion.png"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuizGameScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  elevation: 10,
                  shadowColor: Colors.black,
                  primary: Colors.yellowAccent.withOpacity(0.8),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Text(
                    buttonText,
                    style: GoogleFonts.handlee(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3,
                      color: const Color.fromARGB(255, 160, 37, 37),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Text(
                  score,
                  style: GoogleFonts.handlee(
                    fontSize: 45,
                    color: Colors.yellowAccent,
                    shadows: <Shadow>[
                      const Shadow(
                        color: Colors.black,
                        offset: Offset(
                          5.0,
                          4.0,
                        ),
                        blurRadius: 1.0,
                      ),
                    ],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  quizTitle,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

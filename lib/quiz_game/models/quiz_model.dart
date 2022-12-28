class QuizModel {
  String question;
  List<String> optionsList;
  int answer;

  QuizModel(this.question, this.optionsList, this.answer);
}

QuizModel quiz1 = QuizModel("The age of a lion can be determined by its?",
    ["Nose", "Leg", "Tung", "Skin"], 0);

QuizModel quiz2 = QuizModel("A newborn kangaroo is about the size of a?",
    ["Pinot bean ", "Lima bean", "Chickpea", "Green bean"], 1);

QuizModel quiz3 = QuizModel("What animal has the highest blood pressure?",
    ["Cow", "Elephant", "Lion", " Giraffe"], 3);

QuizModel quiz4 = QuizModel("How far away can a wolf smell its prey?",
    ["10 miles", "0.9 miles", "2 miles", "100 miles"], 2);

QuizModel quiz5 = QuizModel("What is the only mammal capable of true flight?",
    ["Bats ", "Lion", "Cats", "Dog"], 0);

QuizModel quiz6 = QuizModel("What mammal has the most powerful bite?",
    ["Monkey", "Rhino", "Hippopotemus", "Lion"], 2);

QuizModel quiz7 = QuizModel(
    "What is a female fox called?", ["Bitch", "Vixen", "Jenny", "Mares"], 1);

QuizModel quiz8 = QuizModel("What is a group of parrots called?",
    ["Big parrot", "pandemonium", "Parrot-croud", "Army of parrot"], 1);

QuizModel quiz9 = QuizModel("Which sea creature can change its gender?",
    ["Oyster", "Turtale", "Seal", "Crabs"], 0);

QuizModel quiz10 =
    QuizModel("How many legs does a lobster have?", ["5", "27", "2", "10"], 3);

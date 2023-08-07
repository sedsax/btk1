import 'package:btk1/egitimler/questions.dart';

class QuizBrain {
  int _questionIndex = 0;
  final List<Questions> _myQuestions = [
    Questions(questionText: 'Sharks are mammals', questionAnswer: false),
    Questions(
        questionText:
            'Sea otters have a favorite rock they use to break open food',
        questionAnswer: true),
    Questions(
        questionText: 'The blue whale is the biggest animal to have ever lived',
        questionAnswer: true),
    Questions(questionText: 'Bats are blind', questionAnswer: false),
    Questions(
        questionText: 'A dog sweats by panting its tongue',
        questionAnswer: false),
    Questions(
        questionText: 'It takes a sloth two weeks to digest a meal',
        questionAnswer: true),
    Questions(
        questionText:
            'The largest living frog is the Goliath frog of West Africa',
        questionAnswer: true),
    Questions(
        questionText: 'An ant can lift 1,000 times its body weight',
        questionAnswer: false),
    Questions(
        questionText:
            'When exiting a cave, bats always go in the direction of the wind',
        questionAnswer: false),
    Questions(
        questionText: 'An octopus has seven hearts', questionAnswer: false)
  ];

  String getText(){
    return _myQuestions[_questionIndex].questionText;
  }

  bool getAnswer(){
    return _myQuestions[_questionIndex].questionAnswer;
  }

    void nextQuestion() {
    if (_questionIndex < _myQuestions.length - 1) {
      _questionIndex++;
    }
  }

    bool isFinished() {
    if (_questionIndex >= _myQuestions.length - 1){
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionIndex = 0;
  }

}

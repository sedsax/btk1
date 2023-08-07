import 'package:btk1/egitimler/quiz_brain.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MaterialApp(home: EgitimQuiz()));
}

class EgitimQuiz extends StatefulWidget {
   EgitimQuiz({super.key});

  @override
  State<EgitimQuiz> createState() => _EgitimQuizState();
}

class _EgitimQuizState extends State<EgitimQuiz> {
  QuizBrain quizBrain = QuizBrain();
  int trueNum = 0;
  int falseNum = 0;

  void checkAnswer({required bool userAnswer}) {
    bool correctAnswer = quizBrain.getAnswer();
    setState(() {
      if(quizBrain.isFinished() == true){
        //Alert(context: context, title: 'Finished!', desc: 'You\'ve reached the end of the quiz.',).show();
        Alert(context: context, title: "Bitti").show();
        quizBrain.reset();
        trueNum =0;
        falseNum =0;
      }else{
        if(correctAnswer == userAnswer){
          quizBrain.nextQuestion();
          trueNum++;
        }else{
          quizBrain.nextQuestion();
          falseNum++;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 41, 13, 46),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      trueNum.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Text(falseNum.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ],
              ),
              Expanded(
                flex: 4,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                     quizBrain.getText(),
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                //  flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      checkAnswer(userAnswer: true);
                      },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    child: const Text(
                      "True",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Expanded(
                // flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      checkAnswer(userAnswer: false);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    child: const Text(
                      "False",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}
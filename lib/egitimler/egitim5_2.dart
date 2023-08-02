import 'package:btk1/egitimler/questions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EgitimQuiz());
}

class EgitimQuiz extends StatefulWidget {
  const EgitimQuiz({super.key});

  @override
  State<EgitimQuiz> createState() => _EgitimQuizState();
}

class _EgitimQuizState extends State<EgitimQuiz> {
  int questionIndex = 0;
  int trueNum = 0;
  int falseNum = 0;
  List<Icon> icons = [];
  List<Questions> soruCevap = [
    Questions(
        questionText:
            "Flutter, Google tarafından oluşturulan açık kaynaklı bir yazılım geliştirme kitidir.",
        questionAnswer: true),
    Questions(
        questionText:
            "Flutter, yalnızca Android uygulamaları için kullanılabilir. ",
        questionAnswer: false),
    Questions(
        questionText:
            "Flutter, kullanıcı arayüzü tasarımı için ayrı bir dildir ve Dart dili kullanır. ",
        questionAnswer: false),
    Questions(
        questionText:
            "Flutter, performansı artırmak için doğrudan cihazın donanımıyla etkileşime girer. ",
        questionAnswer: false),
    Questions(
        questionText:
            "Hot Reload, Flutter geliştiricilerinin anında kod değişikliklerini görselleştirmelerine olanak tanır.",
        questionAnswer: true),
    Questions(
        questionText:
            "Flutter, iOS ve Android için ayrı ayrı kod tabanları yazmayı gerektirir. ",
        questionAnswer: false),
    Questions(
        questionText:
            "Flutter, mobil uygulamalar için yalnızca materyal tasarımı sunar ve iOS tasarımını desteklemez. ",
        questionAnswer: false),
    Questions(
        questionText:
            "Flutter, widget ağacı yapısı sayesinde, bir ekranın tümü yeniden oluşturulmak yerine, sadece değişen widget'ları günceller. ",
        questionAnswer: true),
    Questions(
        questionText:
            "Flutter, platforma özgü işlevler için 'Platform Channels' adı verilen bir mekanizma sunar. ",
        questionAnswer: true),
    Questions(
        questionText:
            "Flutter, Android Studio ve Visual Studio Code gibi popüler geliştirme ortamlarında kullanılabilir. ",
        questionAnswer: true),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
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
                      soruCevap[questionIndex].questionText,
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
                      setState(() {
                        if (soruCevap[questionIndex].questionAnswer == true) {
                          icons.add(const Icon(
                            Icons.check,
                            color: Colors.green,
                          ));
                          trueNum++;
                        } else {
                          icons.add(const Icon(
                            Icons.close,
                            color: Colors.red,
                          ));
                          falseNum++;
                        }
                        //questionIndex++;
                        soruCevap.length - 1 == questionIndex
                            ? questionIndex = 0
                            : questionIndex++;
                      });
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    child: const Text(
                      "Ture",
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
                      setState(() {
                        if (soruCevap[questionIndex].questionAnswer == false) {
                          icons.add(const Icon(
                            Icons.check,
                            color: Colors.green,
                          ));
                          trueNum++;
                        } else {
                          icons.add(const Icon(
                            Icons.close,
                            color: Colors.red,
                          ));
                          falseNum++;
                        }
                        soruCevap.length - 1 == questionIndex
                            ? questionIndex = 0
                            : questionIndex++;
                      });
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
      ),
    );
  }
}
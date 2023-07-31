import 'package:flutter/material.dart';

void main() {
  runApp(Egitim5());
}

class Egitim5 extends StatefulWidget {
  Egitim5({super.key});

  @override
  State<Egitim5> createState() => _Egitim5State();
}

class _Egitim5State extends State<Egitim5> {
  int questionNumber = 0;
  List<Icon> myIcons = [];
  List<String> myQuestions = [
    'aaaaa',
    'bbbbb',
    'ccccc',
    'ddddd',
    'eeeee',
    'fffff',
    'ggggg',
    'hhhhh'
  ];
  List<bool> myAnswers = [true, false, false, true, false, true, true, false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 73, 35, 80),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 4,
                child: Center(
                  child: Container(
                      child: Text(
                    myQuestions[questionNumber],
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  )),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      setState(() {
                       if(myAnswers[questionNumber] == true){
                        myIcons.add(
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                       }else{
                         myIcons.add(
                          Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        );
                       }
                      
                      });
                       questionNumber == (myQuestions.length-1) ? questionNumber=0 : questionNumber++;
                      // questionNumber = (questionNumber + 1) % myQuestions.length;
                    },
                    child: const Text(
                      "True",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    onPressed: () {
                       setState(() {
                       if(myAnswers[questionNumber] == false){
                        myIcons.add(
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                       }else{
                         myIcons.add(
                          Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        );
                       }
                        if(questionNumber != myQuestions.length){
                         questionNumber == (myQuestions.length-1) ? questionNumber=0 : questionNumber++;
                       }
                      });
                    },
                    child: const Text(
                      "False",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Row(
                children:
                    myIcons, //liste olarak verirken [] parantezi kullanmadık
              )
              /*
              ListTile(
                leading: Icon(Icons.abc, color: Colors.white,),
                title: Icon(Icons.circle, color: Colors.white,),
                trailing: Icon(Icons.abc, color: Colors.white,),
              ),
              */
            ],
          ),
        ),
      ),
    );
  }
}

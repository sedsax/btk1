import 'package:flutter/material.dart';

void main() {
  runApp(PianoApp());
}

class PianoApp extends StatelessWidget {
  const PianoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PianoButton(),
              PianoButton(),
              PianoButton(),
              PianoButton(),
              PianoButton(),
              PianoButton(),
              PianoButton(),
             
            ],
          ),
        ),
      ),
    );
  }
}

class PianoButton extends StatelessWidget {
  const PianoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(
        clipBehavior: Clip.none, children: [
          Padding(
          padding: const EdgeInsets.only(right: 8, top: 2, bottom: 2),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: ElevatedButton(onPressed: (){  
            }, child: Text("data"),
            ),
          ),
        ),
        Positioned(
          top: -25.0,
          child: Container(
            width: 250.0,
            height: 50.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: (){
          
            }, child: Text("aaaa"),
            ),
          ),
        ),
        ]
      ),
    );
  }
}
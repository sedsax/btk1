import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Ders4());
}

class Ders4 extends StatelessWidget {
  const Ders4({super.key});

  void playSound({required int note}) {
    final assetsPlayer = AssetsAudioPlayer();
    assetsPlayer.open(Audio('assets/note$note.wav'));
  }

  Expanded buildKey({ 
    required int number,
    required Color renk,
    required String nota,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(note: number);
        },
        child: Container(
        //  width: double.infinity,
          //color: renk,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [renk, Colors.white],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                nota,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lugrasimo',
                    fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(number: 1, renk: Colors.red, nota: "DO"),
                buildKey(number: 2, renk: Colors.green, nota: "RE"),
                buildKey(number: 3, renk: const Color.fromARGB(255, 245, 221, 0), nota: "Mİ"),
                buildKey(number: 4, renk: Colors.purple, nota: "FA"),
                buildKey(number: 5, renk: Colors.orange, nota: "SOL"),
                buildKey(number: 6, renk: Colors.pink, nota: "LA"),
                buildKey(number: 7, renk: Colors.blue, nota: "Sİ"),
                // TextButton(onPressed: null, child: Text("data"),style: TextButton.styleFrom(foregroundColor: Colors.white),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PiApp());
}

class PiApp extends StatelessWidget {
  const PiApp({super.key});

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
          color: renk,
          child: Align(
            alignment: Alignment.centerRight,
            child: Transform.rotate(
              angle: 11,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  nota,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider ayrac() {
    return const Divider(
      color: Color.fromARGB(255, 121, 121, 121),
      thickness: 1,
      height: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            buildKey(number: 1, renk: Colors.white, nota: "DO"),
            ayrac(),
            buildKey(number: 2, renk: Colors.white, nota: "RE"),
            ayrac(),
            buildKey(number: 3, renk: Colors.white, nota: "Mİ "),
            ayrac(),
            buildKey(number: 4, renk: Colors.white, nota: "FA "),
            ayrac(),
            buildKey(number: 5, renk: Colors.white, nota: "SOL"),
            ayrac(),
            buildKey(number: 6, renk: Colors.white, nota: "LA "),
            ayrac(),
            buildKey(number: 7, renk: Colors.white, nota: "Sİ "),
          ],
        )),
      ),
    );
  }
}

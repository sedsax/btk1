import 'package:flutter/material.dart';

class Egitim1 extends StatelessWidget {
  const Egitim1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Center(
          child: Image(
            image: NetworkImage(
                'https://samplelib.com/lib/preview/png/sample-boat-400x300.png'),
          ),
        ),
        Image.asset("images/resim.png", height: 100,),
        const Image(
          height: 100,
          image: AssetImage("images/resim.png"),
        ),
        const Text("Aşağıdaki bir Row yapısı",style: TextStyle(color: Colors.red, fontSize: 20),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("images/resim.png", height: 100,),
            const Icon(Icons.save),
            Image.asset("images/resim.png", height: 100,),
          ],
        )
      ],
    );
  }
}
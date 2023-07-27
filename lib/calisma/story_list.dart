import 'package:flutter/material.dart';

class StoryTasarim extends StatelessWidget {
  const StoryTasarim({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          //    padding: EdgeInsets.all(20),
          height: 150,
          width: double.infinity,
          color: Colors.pink[100],
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              AvatarX(),
              AvatarX(),
              AvatarX(),
              AvatarX(),
              AvatarX(),
            ],
          ),
        ),
      ],
    );
  }
}

class AvatarX extends StatelessWidget {
  const AvatarX({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            image: const DecorationImage(
                image: AssetImage('images/resim.png'), fit: BoxFit.cover),
          ),
        ),
        Container(
          // margin: const EdgeInsets.all(15),
          height: 18,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: const Color.fromARGB(255, 255, 151, 186)),
          child: const Text(
            "Follow",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.pink, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
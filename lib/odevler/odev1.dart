import 'package:flutter/material.dart';

class Odev1 extends StatelessWidget {
  const Odev1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: double.infinity,
          width: 50,
          color: Colors.red,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.yellow,
        ),
        Container(
          height: double.infinity,
          width: 50,
          color: Colors.blue,
        ),
      ],
    );
  }
}
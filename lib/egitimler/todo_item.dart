import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: ListTile(
        onTap: () {
          
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: Colors.deepPurple,
        ),
        title: const Text(
          "Check mail box",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ),
    );
  }
}

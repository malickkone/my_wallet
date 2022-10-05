// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final String image;

  const MyButton({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 40,
                    spreadRadius: 10)
              ]),
          child: Center(
            child: Image.asset(image),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        )
      ],
    );
  }
}

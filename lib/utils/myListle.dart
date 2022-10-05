// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyListle extends StatelessWidget {
  final String title;
  final String subTiltle;
  final String iconPath;
  const MyListle({super.key, required this.title, required this.subTiltle, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 70,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(iconPath),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    title,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(subTiltle,
                      style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                ],
              )
            ],
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}

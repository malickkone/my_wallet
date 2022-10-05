// ignore_for_file: file_names, prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final balance;
  final solde;
  final numCard;
  final dateExp;
  final color;
  const MyCard({super.key, this.balance,this.solde,this.numCard, this.dateExp, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 6,
                ),
                Image.asset('lib/icons/visa.png', height: 50,)
              ],
            ),
              Text(
              balance,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
             Text('\$'+solde,
                style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text('****'+numCard, style: TextStyle(color: Colors.white)),
                Text(dateExp, style: TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}

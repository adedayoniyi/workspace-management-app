import 'package:flutter/material.dart';

class ForthCard extends StatelessWidget {
  final String image;
  final String name;
  final String position;
  const ForthCard({
    Key? key,
    required this.image,
    required this.name,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey[200]),
        child: Row(
          children: [
            Container(
              height: 70,
              child: Image.asset(image),
            ),
            Column(
              children: [
                Text(name,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text(position),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FifthCard extends StatelessWidget {
  final String textA;
  final String textB;
  const FifthCard({
    Key? key,
    required this.textA,
    required this.textB,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(25)),
          width: 200,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    textA,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Row(children: [
                Text(
                  textB,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.w100),
                ),
              ])
            ],
          )),
    );
  }
}

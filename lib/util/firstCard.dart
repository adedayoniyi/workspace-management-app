import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  //final String icon;
  final String employmentType;

  final int numberOf;
  const FirstCard({
    Key? key,
    required this.employmentType,
    required this.numberOf,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
            padding: EdgeInsets.only(
              left: 15,
              top: 40,
              bottom: 25,
            ),
            color: Colors.black,
            width: 240,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      employmentType,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w100),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Row(children: [
                  Text(
                    numberOf.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 141, 247, 42),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.add),
                    ),
                  )
                ]),
              ],
            )),
      ),
    );
  }
}

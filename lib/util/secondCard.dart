import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  //final String icon;
  final String text1;
  final String text2;
  final String text3;
  const SecondCard(
      {Key? key,
      required this.text1,
      //required this.icon,
      required this.text2,
      required this.text3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      child: Container(
          padding: EdgeInsets.only(left: 10, bottom: 20, top: 20),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(25)),
          width: 200,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Row(children: [
                Text(
                  text2,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w100),
                ),
              ])
            ],
          )),
    );
  }
}

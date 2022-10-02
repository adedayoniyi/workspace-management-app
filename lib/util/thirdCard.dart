import 'package:flutter/material.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
            padding: EdgeInsets.all(25),
            color: Colors.black,
            width: 70,
            child: Icon(
              Icons.add,
              color: Colors.white,
            )),
      ),
    );
  }
}

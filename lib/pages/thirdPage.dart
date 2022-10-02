import 'package:flutter/material.dart';
import 'package:workspace_mgt_task1/util/fifthCard.dart';

class Constants {
  static const Color BlueColor = Color.fromARGB(255, 117, 224, 243);
  static const Color GreenColor = Color.fromARGB(255, 141, 247, 42);
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final List data6 = [
    ["hard-skills-designer", "created by"],
    ["hard-skills-designer", "created by"],
    ["Hiring new person?", "sent by Melani Martinez"],
    ["Research results", "sent by Melani Martinez"]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 390,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Constants.GreenColor,
              gradient: LinearGradient(
                colors: [Constants.GreenColor, Constants.BlueColor],
                begin: Alignment.centerLeft,
                end: Alignment(0.5, 0),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  child: Image.asset(
                    "images/girl-head.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70, top: 15),
                      child: Text(
                        "Melani Martinez",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: 40,
                    width: 170,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, top: 10),
                      child: Text(
                        "Design Lead",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 360,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 25),
                    child: Text(
                      "Shared Documents",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),

            //Expanded(child: Text(""),)
          ),
          // Row(
          //   children: [
          //     Container(
          //       height: 10,
          //     )
          //   ],
          // ),

          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: data6.length,
                itemBuilder: ((context, index) {
                  return FifthCard(
                    textA: data6[index][0],
                    textB: data6[index][1],
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}

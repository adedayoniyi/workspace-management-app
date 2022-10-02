import 'package:flutter/material.dart';
import 'package:workspace_mgt_task1/pages/thirdPage.dart';
import 'package:workspace_mgt_task1/util/fourthCard.dart';
import 'package:workspace_mgt_task1/util/thirdCard.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final List data3 = [
    ["images/filter.png"],
    ["images/container.png"],
    ["images/stats.png"],
    ["images/brush.png"],
  ];
  final List data4 = [
    ["images/girl-head.png", "Melani Martinez", "Design lead"],
    ["images/black-man.png", "Michael Foucault", "UI/UX Designer"],
  ];
  final List data5 = [
    ["images/man-head1.png", "Richard James", "Backend Developer"],
    ["images/male-head2.png", "Albert Camus", "Frontend Developer"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.grey[300],
                child: Image.asset("images/man-head-first.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 260),
              child: Icon(
                Icons.notifications_on_outlined,
                size: 35,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return ThirdPage();
              })));
            },
            child: Text(
              "Team Overview",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 70,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data3.length,
              itemBuilder: (context, index) {
                return ThirdCard();
                //employmentType: data1[index][0],
                //icon: "images/plus_icon.png",
                //numberOf: data1[index][1]);
              }),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 11),
          child: Text("Design Department", style: TextStyle(fontSize: 19)),
        ),
        Expanded(
          flex: 2,
          child: ListView.builder(
              itemCount: data4.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return ForthCard(
                    image: data4[index][0],
                    name: data4[index][1],
                    position: data4[index][2]);
              }),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 11),
          child: Text("Design Department", style: TextStyle(fontSize: 19)),
        ),
        Container(
          height: 220,
          child: ListView.builder(
              itemCount: data5.length,
              itemBuilder: (context, index) {
                return ForthCard(
                  image: data5[index][0],
                  name: data5[index][1],
                  position: data5[index][2],
                );
              }),
        ),
      ]),
    );
  }
}

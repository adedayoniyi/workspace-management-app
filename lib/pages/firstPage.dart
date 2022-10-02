import 'package:flutter/material.dart';
import 'package:workspace_mgt_task1/pages/secondPage.dart';
import 'package:workspace_mgt_task1/util/firstCard.dart';
import 'package:workspace_mgt_task1/util/secondCard.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List data1 = [
    ["Consultants", 15],
    ["Employers", 24],
    ["Investors", 9]
  ];
  final List data2 = [
    ["Incorporation", "sent by Jean Genet"],
    ["Balance Sheet", "sent by Jack Kerouac"],
    ["Payroll(W-2)", "sent by Mary Smith"]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
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
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return SecondPage();
              })));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Team Management",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 135,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data1.length,
                itemBuilder: (context, index) {
                  return FirstCard(
                      employmentType: data1[index][0],
                      //iconImage: Icon(Icons.add),
                      numberOf: data1[index][1]);
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Documents To Sign",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text("See all",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SizedBox(
            height: 1,
          ),
          Container(
            height: 300,
            child: ListView.builder(
                itemCount: data2.length,
                itemBuilder: (context, index) {
                  return SecondCard(
                    text1: data2[index][0],
                    //icon: "images/plus_icon.png",
                    text2: data2[index][1],
                    text3: "World",
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.black),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.stacked_bar_chart,
                      color: Color.fromARGB(255, 141, 247, 42),
                    ),
                    Icon(
                      Icons.file_copy_rounded,
                      color: Colors.grey[100],
                    ),
                    Icon(
                      Icons.transfer_within_a_station,
                      color: Colors.grey[100],
                    ),
                    Icon(
                      Icons.account_circle,
                      color: Colors.grey[100],
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

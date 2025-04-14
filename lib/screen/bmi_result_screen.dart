import 'package:flutter/material.dart';

import '../mod/function.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var res = ModalRoute.of(context)!.settings.arguments as double;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 50, 142, 110),
      ),

      //Body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Your Result",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(103, 174, 110, 1),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // ignore: unnecessary_string_interpolations
                    Text(
                      "${getResultText(res)}",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 225, 68, 68)),
                    ),
                    Text(
                      "$res",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Column(children: [
                      Text(
                        "You have a ${getResultText(res)} body Weight.",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Good Luck",
                        style: TextStyle(fontSize: 17),
                      )
                    ])
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, "Calc");
              });
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 103, 174, 110),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  "Re-Calculate",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String? gender;
  String value = "177";
  double slidervalue = 177;
  int wi = 70;
  int ag = 20;
  double cal = 1;
  String? res;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 50, 142, 110),
      ),
      body: Column(
        children: [
          // 1- Gender
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          gender = "male";
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: gender == "male"
                              ? Color.fromARGB(255, 12, 130, 233)
                              : Color.fromRGBO(103, 174, 110, 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 100,
                            ),
                            Text("Male")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          gender = "femal";
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: gender == "femal"
                              ? Color.fromARGB(255, 252, 135, 18)
                              : Color.fromRGBO(103, 174, 110, 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                            ),
                            Text("Female")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 2- Height
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(103, 174, 110, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          slidervalue.toStringAsFixed(2),
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(" cm")
                      ],
                    ),
                    Slider(
                      value: slidervalue,
                      min: 100,
                      max: 200,
                      onChanged: (newvalue) {
                        setState(() {
                          value = newvalue.toStringAsFixed(2);
                          slidervalue = double.parse(value);
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          // 3- Weight & Age
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  // Weight
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(103, 174, 110, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "$wi",
                            style: TextStyle(fontSize: 24),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE1EEBC),
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (wi < 150) {
                                          wi++;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.add)),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE1EEBC),
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (wi > 25) {
                                          wi--;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.remove)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  // Age
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(103, 174, 110, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "$ag",
                            style: TextStyle(fontSize: 24),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE1EEBC),
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (ag < 80) ag++;
                                      });
                                    },
                                    child: Icon(Icons.add)),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE1EEBC),
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (ag > 5) {
                                          ag--;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.remove)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Bottom Button
          InkWell(
            onTap: () {
              cal = wi / ((slidervalue / 100) * (slidervalue / 100));
              res = cal.toStringAsFixed(1);
              setState(() {
                Navigator.pushNamed(context, "Result",
                    arguments: double.parse(res!));
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
                  "Calculate",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

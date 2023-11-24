import 'package:flutter/material.dart';
import 'package:untitled1/pages/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  double Vl = 1;
  Color mainColor = Color(0xff22373F);
  Color femaleColor =  Color(0xff22373F);
  Color secondColor = Colors.red;
  Color maleColor = Colors.red;
  double weight = 1;
  double age = 1;
  String gender = "";

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          // backgroundColor: Colors.black,
          title: Text("BMI Calculator"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {});
                        (maleColor == mainColor)
                            ? {maleColor = secondColor, femaleColor = mainColor}
                            : ();
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 12,left: 12,right: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: maleColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.male, color: Colors.white, size: 56),
                            Text("MALE",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 32))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {});
                        (femaleColor == mainColor)
                            ? {femaleColor = secondColor, maleColor = mainColor}
                            : ();
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 12,left: 6,right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: femaleColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.female, color: Colors.white, size: 56),
                            Text("FEMALE",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 32))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ), // Male & Female
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${Vl.toInt()}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ],
                    ),
                    Slider(
                      value: Vl,
                      onChanged: (value) {
                        Vl = value;
                        setState(() {});
                      },
                      activeColor: secondColor,
                      min: 1,
                      max: 300,
                    ),
                  ],
                ),
              ),
            ), // Height Slider
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 12,left: 12,right: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: mainColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: TextStyle(color: Colors.white, fontSize: 32),
                          ),
                          Text(
                            "${weight.toInt()}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: secondColor,
                                child: IconButton(
                                    onPressed: () {
                                      weight--;
                                      setState(() {});
                                    },
                                    icon:
                                    Icon(Icons.exposure_minus_1_outlined)),
                                minRadius: 32,
                              ),
                              CircleAvatar(
                                backgroundColor: secondColor,
                                child: IconButton(
                                    onPressed: () {
                                      weight++;
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.plus_one_sharp)),
                                minRadius: 32,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(

                      margin: EdgeInsets.only(bottom: 12,left: 6,right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: mainColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(color: Colors.white, fontSize: 32),
                          ),
                          Text(
                            "${age.toInt()}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: secondColor,
                                child: IconButton(
                                    onPressed: () {
                                      age--;
                                      setState(() {});
                                    },
                                    icon:
                                        Icon(Icons.exposure_minus_1_outlined)),
                                minRadius: 32,
                              ),
                              CircleAvatar(
                                backgroundColor: secondColor,
                                child: IconButton(
                                    onPressed: () {
                                      age++;
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.plus_one_sharp),
                                ),
                                minRadius: 32,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ), // Age & Weight
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                  gender = (maleColor ==Colors.red)?"male":"female";
                  Navigator.push(context,MaterialPageRoute(
                    builder: (context) => SecondPage(Vl,weight,age,gender),
                  ));
                },

                child: Container(
                  height: 40,
                  color: secondColor,
                  alignment: Alignment.center,
                  child: Text("CALCULATE"),
                ),
              ),
            ), // Calculate
          ],
        ));
  }
}

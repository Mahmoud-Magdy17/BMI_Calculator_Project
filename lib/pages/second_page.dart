import 'package:flutter/material.dart';
import '../main.dart';
class SecondPage extends StatelessWidget {
  int age=0;
  int height=0;
  int weight=0;
  String gender = "";

  SecondPage(double _height,double _weight,double _age,String _gender,{super.key}) {
    age=_age.toInt();
    weight = _weight.toInt();
    height = _height.toInt();
    gender = _gender;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("BMI Calculator"),
          leading: IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, "theHomePage");
            },
            icon: Icon(Icons.arrow_back_rounded)
          ),
        ),
        body: 
        Container(
          decoration: BoxDecoration(
            color:  Color(0xff22373F),
            borderRadius: BorderRadius.circular(8)
          ),
          margin: EdgeInsets.all(32),
          width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Gender: $gender",style: TextStyle(color: Colors.white,fontSize: 24),),
              Text("Age: ${age}",style: TextStyle(color: Colors.white,fontSize: 24),),
              Text("height: ${height}",style: TextStyle(color: Colors.white,fontSize: 24),),
              Text("weight: ${weight}",style: TextStyle(color: Colors.white,fontSize: 24),),
              Text("result BIM: ${((weight*10000)/(height*height)).toInt()}",style: TextStyle(color: Colors.white,fontSize: 24),),
              Text("Perfect Weight: ",style: TextStyle(color: Colors.white,fontSize: 24),)
            ],
          ),
        ),
      ),
    );
  }
}

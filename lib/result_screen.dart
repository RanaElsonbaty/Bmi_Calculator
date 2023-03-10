import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
   ResultScreen({Key? key,
  required this.maleOrFemale,required this.bmiResult,required this.age,required this.weight,required this.height});
String maleOrFemale;
double bmiResult;
int age;
int weight;
double height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5) ,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Result"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(textAlign: TextAlign.center,'Gender:$maleOrFemale',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
          Text(textAlign: TextAlign.center,'Bmi Result:${bmiResult.toInt()}',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
          Text(textAlign: TextAlign.center,'Age:$age',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
          Text(textAlign: TextAlign.center,'Weight:$weight',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
          Text(textAlign: TextAlign.center,'Height:${height.toInt()}',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
        ],
      ),
    );
  }
}

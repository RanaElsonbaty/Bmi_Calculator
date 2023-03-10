import 'dart:math';
import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);
  @override
  State<Bmi> createState() => _BmiState();
}
class _BmiState extends State<Bmi> {
  double valueFromSlider=0;
  bool male=true;
  int age=0;
  int weight=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.5) ,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Bmi Calculator"),
        ),
        body:Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          male=false;
                          setState(() {});
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:Border.all(color:
                                male==false ?Colors.red:Colors.black,
                                    width: 8),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            height: 100,
                            child: Image.asset("asset/images/female.png",height: 80,width: 80,)
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          male=true;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:Border.all(color:
                              male==true?Colors.red:Colors.black
                                  ,width: 8),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 100,
                          child: Image.asset("asset/images/male.png",
                            height: 80,
                            width: 80,),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black,
                  ),

                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Height",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${valueFromSlider.toInt()}",style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),),
                          const Text("cm",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Slider(
                            activeColor: Colors.red,
                            value: valueFromSlider,
                            min: 0,
                            max: 200,
                            onChanged: (value){
                              valueFromSlider=value;
                              setState(() {});
                            }),
                      )
                    ],
                  ) ,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.black
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("weight",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),
                          Text('$weight',style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              IconButton(icon:const Icon(Icons.arrow_back_ios,color:Colors.white) ,onPressed: (){
                                weight=weight-1;
                                setState(() {});
                              },),
                              IconButton(icon:const Icon(Icons.arrow_forward_ios,color:Colors.white) ,onPressed: (){
                                weight=weight+1;
                                setState((){});
                              },),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.black
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("Age",style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),),
                          Text('$age',style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              IconButton(icon:const Icon(Icons.arrow_back_ios,color:Colors.white) ,onPressed: (){
                                age=age-1;
                                setState(() {});
                              },),
                              IconButton(icon:const Icon(Icons.arrow_forward_ios,color:Colors.white) ,onPressed: (){
                                age=age+1;
                                setState((){});
                              },),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return ResultScreen(
                            maleOrFemale:male==true?'male':'female' ,
                            bmiResult:weight/pow(valueFromSlider/100,2) ,
                            age:age ,
                            weight:weight ,
                            height:valueFromSlider ,

                          );
                        }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.red
                    ),
                    alignment: Alignment.center,
                    child: const Text("CALCULATOR",
                      style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
              )
            ],
          ),
        ) ,
      );

  }
}
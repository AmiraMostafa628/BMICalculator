import 'dart:math';

import 'package:bmi_calculator/BMIResult.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {

  bool isMale = true;
  double height = 120;
  int Age = 20;
  int Weight = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale? Colors.teal:Colors.grey[400],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/male.png'),
                                height: 110,
                                width: 110,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),
                              )

                            ],
                          ),
                        ),


                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale= false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: !isMale? Colors.teal:Colors.grey[400],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 110,
                                width: 110,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                ),
                              )

                            ],
                          ),
                        ),


                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                        ),

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                       children: [
                         Text(
                           '${height.round()}',
                           style: TextStyle(
                               fontSize: 50,
                               fontWeight: FontWeight.w900
                           ),

                         ),
                         Text(
                           'CM',
                           style: TextStyle(
                               fontSize: 30,
                               fontWeight: FontWeight.bold
                           ),

                         ),
                       ],

                      ),
                      Slider(
                          value: height,
                          min: 80,
                          max: 210,
                          activeColor: Colors.teal,
                          onChanged: (value)
                          {
                            setState(() {
                               height=value;
                            });
                          }
                      )


                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${Weight}',
                                style: TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w900
                                ),

                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        Weight--;
                                      });
                                    },
                                    backgroundColor: Colors.teal,
                                    heroTag: 'Weight-',
                                    mini: true,
                                    child: Icon(Icons.remove),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        Weight++;
                                      });
                                    },
                                    backgroundColor: Colors.teal,
                                    heroTag: 'Weight+',
                                    mini: true,
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              )

                            ],
                          ),
                        ) ,

                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${Age}',
                                style: TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w900
                                ),

                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        Age--;
                                      });
                                    },
                                    backgroundColor: Colors.teal,
                                    heroTag: 'Age-',
                                    mini: true,
                                    child: Icon(Icons.remove),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        Age++;
                                      });
                                    },
                                    backgroundColor: Colors.teal,
                                    heroTag: 'Age+',
                                    mini: true,
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              )

                            ],
                          ),
                        ) ,

                      )),
                ],
              ),
            )
          ),
          Container(
            color: Colors.teal,
            width: double.infinity,
            child: MaterialButton(
                onPressed: (){
                  double result = Weight / pow(height/100,2);
                  print(result.round());
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>
                          BMIResult(
                              isMale: isMale,
                              result: result,
                              Age: Age)));
                },
              child: Text(''
                  'CALCULATE',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
                ),
          )
        ],
      ),
    );
  }
}

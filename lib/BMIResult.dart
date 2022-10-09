import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final bool isMale;
  final double result;
  final int Age;

  BMIResult({
    required this.isMale,
    required this.result,
    required this.Age});


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Gender: ${isMale?'Male' : 'Female'} ',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            Text('Age: ${Age} ',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text('Result: ${result.round()} ',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),

          ],
        ),
      ),
    );
  }
}

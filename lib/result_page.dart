import 'package:bmi_calculator/input_page_functions.dart';
import 'package:flutter/material.dart';
class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Your Results',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF1D1E33),
              ),
              margin: EdgeInsets.fromLTRB(15, 30, 15, 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(Input_functions.bodyInfo,
                    style: TextStyle(
                      color: Input_functions.bmColor,
                      fontSize:40,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text(Input_functions.bmi.toString().substring(0,5),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Center(
                      child: Text(Input_functions.info,
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF8E8D98),
                      ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';
// ignore: camel_case_types
class Input_functions{
  static Color mars=Colors.white;
  static Color venus=Color(0xFF8E8D98);
  static Color marsCont = Color(0xFF211E33);
  static Color venusCont = Color(0xFF1D1E33);
  static Color bmColor = Colors.green;
  static int age=00;
  static double weight=60.0;
  static int height=180;
  static String bodyInfo='Normal';
  static double bmi=0;
  static String info = 'You have a healthy index\nVery Good! ';
  static void bmiCalculation()
  {
    double heightInMts=height/100;
    bmi = weight/pow(heightInMts,2);
    if(bmi<16)
      {
        bmColor=Colors.red[900];
        bodyInfo='Severe Thinness';
        info='You are Susceptible for diseases\nEat Well and Exercise Well';
      }
    else if(bmi<17 && bmi>=16)
      {
        bmColor=Colors.red[400];
        bodyInfo='Moderate Thinness';
        info='You are Underweight\n Eat wll to maintain your Index';
      }
    else if(bmi<18.5)
      {
        bmColor = Colors.yellow;
        bodyInfo='Mild Thinness';
        info = 'You have a good index\nBut it\'s better to increase your weight';
      }
    else if(bmi<25)
      {
        bmColor = Colors.green;
        bodyInfo='Normal';
        info='You have a healthy index\nVery Good! ';
      }
    else if(bmi<30)
      {
        bmColor = Colors.yellow;
        bodyInfo='Overweight';
        info='You have a good index\nBut it\'s better to decrease your weight';
      }
    else if(bmi<35)
      {
        bmColor = Colors.red[300];
        bodyInfo = 'Obese Class I';
        info='You are obesed\nExecise Well to decrease your weight';
      }
    else if(bmi<40)
      {
        bmColor = Colors.red[600];
        bodyInfo = 'Obese Class II';
        info='You are very obesed\nExercise Well to decrease your weight';
      }
    else{
      bmColor = Colors.red[900];
      bodyInfo = 'Obese Class III';
      info='You are susceptible for diseases like diabetes and heart attack\nConsult a doctor regarding your condition';
    }
    height = 180;
    weight =60;
    age= 0;
    mars=Colors.white;
    venus=Color(0xFF8E8D98);
    marsCont = Color(0xFF211E33);
    venusCont = Color(0xFF1D1E33);
  }
  static void tappedMars()
  {
    mars=Colors.white;
    marsCont=Color(0xFF211E33);
    venus=Color(0xFF8E8D98);
    venusCont = Color(0xFF1D1E33);
  }
  static void tappedVenus()
  {
    venus=Colors.white;
    venusCont=Color(0xFF211E33);
    mars=Color(0xFF8E8D98);
    marsCont = Color(0xFF1D1E33);
  }
  static void incrementAge()
  {
    age++;
  }
  static void longIncrementAge(){
    age+=5;
  }
  static void decrementAge()
  {
    age--;
  }
  static void longDecrementAge(){
    age-=5;
  }
  static void incrementWeight(){
    weight+=0.5;
  }
  static void longIncrementWeight(){
    weight+=5.0;
  }
  static void decrementWeight(){
    weight-=0.5;
  }
  static void longDecrementWeight(){
    weight-=5;
  }
}
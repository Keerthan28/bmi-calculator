import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'input_page_functions.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        Input_functions.tappedMars();
                      });
                    },
                    child: ReusableCard(Input_functions.marsCont,Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 100,
                              color: Input_functions.mars,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('MALE',
                              style: TextStyle(
                                fontSize: 20,
                                color: Input_functions.mars
                              ),),
                          )
                        ],
                      ),
                    ),),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        Input_functions.tappedVenus();
                      });
                    },
                    child: ReusableCard(Input_functions.venusCont,Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 100,
                              color: Input_functions.venus,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('FEMALE',
                            style: TextStyle(
                              fontSize: 20,
                                color: Input_functions.venus,
                            ),),
                          )
                        ],
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(Color(0xFF1D1E33),Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF8E8D98)
                    ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(Input_functions.height.toString(),
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('cm',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF8E8D98)
                        ),),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbColor: Colors.pink[600],
                      inactiveTrackColor: Color(0xFF8E8D98),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x33D81B60),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                    ),
                    child: Slider(

                      value:Input_functions.height.toDouble(),
                      min:120,
                      max: 220,
                      onChanged: (double newValue){
                        setState(() {
                          Input_functions.height=newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            )),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33),Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF8E8D98)
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(Input_functions.weight.toString(),
                              style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('kg',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF8E8D98)
                              ),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPressed: (){
                                setState(() {
                                  Input_functions.decrementWeight();
                                });
                              },
                              onLongPress: (){
                                setState(() {
                                  Input_functions.longDecrementWeight();
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10,),
                            RoundIconButton(
                              onPressed: (){
                                setState(() {
                                  Input_functions.incrementWeight();
                                });
                              },
                              onLongPress: (){
                                Input_functions.weight+=5;
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                ),
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33),Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF8E8D98)
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(Input_functions.age.toString(),
                              style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('yrs',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF8E8D98)
                              ),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPressed: (){
                                setState(() {
                                  Input_functions.decrementAge();
                                });
                              },
                              onLongPress: (){
                                setState(() {
                                  Input_functions.longDecrementAge();
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10,),
                            RoundIconButton(
                              onPressed: (){
                                setState(() {
                                  Input_functions.incrementAge();
                                });
                              },
                              onLongPress: (){
                                setState(() {
                                  Input_functions.longIncrementAge();
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: (){
              Navigator.pushNamed(context, 'resultPage');
              setState(() {
                Input_functions.bmiCalculation();
              });
            },
            child: Container(
              margin: EdgeInsets.only(top:10),
              color: Colors.pink[600],
              height: 80,
              width: double.infinity,
              child: Center(child:
              Text('CALCULATE YOUR BMI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReusableCard(this.colour,this.cardChild);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
class RoundIconButton extends StatelessWidget {
  final Widget child;
 final VoidCallback onPressed;
 final VoidCallback onLongPress;
  RoundIconButton({this.child,this.onPressed, this.onLongPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: this.child,
      elevation:6,
      onPressed: onPressed,
      onLongPress: onLongPress,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                _customerContainer(
                    text1: 'Moinuddin',
                    text: 'Athaniya'),
                _customerContainer1(
                    number: 8,
                    color: Colors.red
                ),
                Expanded(
                    flex: 5,
                    child:Row(
                      children: [
                        _customerContainer1(
                            number: 5,
                            color: Colors.indigo
                        ),
                        Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Column(
                                              children: [
                                                _customerContainer1(
                                                    number: 1,
                                                    color: Colors.green
                                                ),
                                                _customerContainer1(
                                                  number: 1,
                                                  color: Colors.blue,
                                                ),
                                              ],
                                            )),
                                        _customerContainer1(
                                            number: 2,
                                            color: Colors.brown
                                        ),
                                      ],
                                    )),
                                _customerContainer1(
                                    number: 3,
                                    color: Colors.purple
                                ),

                              ],
                            ))
                      ],
                    ))
                /* Expanded(
                       flex: 8,
                       child: Container(
                       constraints: BoxConstraints.expand(),
                       color: Colors.red,
                       child: Center(child: Text('8',style: TextStyle(
                         color: Colors.white,
                         fontSize: 40,
                       ),)),
                     ),
                     ),*/
                /* Expanded(
                       flex: 5,
                       child: Container(
                       color: Colors.indigo,
                       child: Center(child: Text('5',style: TextStyle(
                         color: Colors.white,
                         fontSize: 40,
                       ),)),
                     )
                    )*/
              ],
            )
        ),
      ),
    );
  }
}

Widget _customerContainer({
  required String text,
  required String text1}){
  //return Text('hello world');
  return Text('${text} - ${text1}');
}

Widget _customerContainer1({
  required int number,
  required Color color,
}){
  return Expanded(
    flex: number,
    child: Container(
      constraints: BoxConstraints.expand(),
      color: color,
      child: Center(child: Text(number.toString() ,style: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),)),
    ),
  );
}
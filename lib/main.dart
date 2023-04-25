import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 8,
                child: Container(
                  constraints: BoxConstraints.expand(),
                  //padding: EdgeInsets.all(20),
              color: Colors.red,

              child: Center(child: Text('8',
                style: TextStyle(color: Colors.white,
                fontSize: 30,
                ),)),
            )
            ),
            Expanded(
              flex: 5,
                child: Container(
            constraints: BoxConstraints.expand(),
             // padding: EdgeInsets.all(20),
             // width: 70,
              color: Colors.indigo,
              child: Center(child: Text('5',
              style: TextStyle(color: Colors.white,
                fontSize: 30,
              ),)),
            )
            ),

          ],
        ),
        )
      ),
    );
  }
}

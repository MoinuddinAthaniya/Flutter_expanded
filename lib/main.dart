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
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.red,
              child: Text('1'),
            ),
            Expanded(
              flex: 7,
                child: Container
            (

              padding: EdgeInsets.all(20),
             // width: 70,
              color: Colors.blue,
              child: Text('2'),
            )
            ),
            Expanded(
              flex: 3,
                child:Container
                (
                  padding: EdgeInsets.all(20),
                  // width: 200,
                  color: Colors.green,
                  child: Text('3'),
                )
            ),

          ],
        ),
        )
      ),
    );
  }
}
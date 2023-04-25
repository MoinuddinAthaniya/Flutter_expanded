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
        appBar: AppBar(backgroundColor: Colors.grey,


            title: Text('click button ')
        ) ,
        body:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(

                  padding: EdgeInsets.all(20),
                  color: Colors.red,
                  child: Text('hello'),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.blue,

                  child:  Text('hello'),
                ),
                Container(
                  padding: EdgeInsets.all(35),
                  color: Colors.green,
                  child: Text('hello'),
                )

              ],
            ), //1
            SizedBox(width:1),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.red,
                  child: Text('Hello'),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.blue,
                  child: Text('Hello'),
                ),
                Container(
                  padding: EdgeInsets.all(35),
                  color: Colors.green,
                  child: Text('Hello'),
                ),

              ],
            ),//







          ],
        ) ,
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(

          onPressed: null,

          child: Text('Click Hear'),
        ),
      ),
    );
  }
}
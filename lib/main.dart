import 'package:flutter/material.dart';

void main() => runApp(const BMIApp());

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     //   color: Colors.green,
      title: 'BMI Calculator',

      home: BMIHomePage(),
    );
  }
}

class BMIHomePage extends StatefulWidget {
  const BMIHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BMIHomePageState createState() => _BMIHomePageState();
}

class _BMIHomePageState extends State<BMIHomePage> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0.0;
  String _resultCategory = '';


  void _calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double bmi = weight / (height * height);

    setState(() {
      _bmiResult = bmi;


      if (_bmiResult < 18.5) {
        _resultCategory = 'Underweight';
      } else if (_bmiResult >= 18.5 && _bmiResult < 25) {
        _resultCategory = 'Normal Weight';
      } else if (_bmiResult >= 25 && _bmiResult < 30) {
        _resultCategory = 'Overweight';
      } else if (_bmiResult >= 30 && _bmiResult < 36) {
        _resultCategory = 'Obese';
      } else {
        _resultCategory = 'Extremely Obese';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
            'BMI Calculator',
          style: TextStyle(
          color: Colors.black87,
        ),
        ),
      ),
      body: Container(
        color: Colors.black45,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 10.0),
            TextField(
              controller: _heightController,
              decoration: const InputDecoration(
                labelText: 'Height (cm)',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10.0),
            TextField(
              style: TextStyle(
                color: Colors.black87,),
              controller: _weightController,
              decoration: const InputDecoration(
                labelText: 'Weight (kg)',
              ),
              keyboardType: TextInputType.number,

            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              // button radius
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.yellowAccent)
                      )
                  )
              ),
              onPressed: _calculateBMI,
              child: const Text('CALCULATE BMI'
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'BMI: ${_bmiResult.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18.0),

            ),
            const SizedBox(height: 10.0),
            Text(
              'Category: $_resultCategory',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
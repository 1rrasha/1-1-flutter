import 'package:flutter/material.dart';

//rasha mansour
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Initialize counters for both numbers
  int number1 = 1;
  int number2 = 1;

  // Function to increment number1
  void incrementNumber1() {
    setState(() {
      number1++;
    });
  }

  // Function to increment number2
  void incrementNumber2() {
    setState(() {
      number2++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Increment 1 + 1'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // GestureDetector to handle taps on number1
            GestureDetector(
              onTap: () {
                incrementNumber1();
              },
              child: Container(
                // Styling for number1 container
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red, // Color for number1 container
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '$number1',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            SizedBox(width: 10),
            // Colorful "+" sign
            Text(
              '+',
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            SizedBox(width: 10),
            // GestureDetector to handle taps on number2
            GestureDetector(
              onTap: () {
                incrementNumber2();
              },
              child: Container(
                // Styling for number2 container
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green, // Color for number2 container
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '$number2',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            SizedBox(width: 10),
            // Text displaying the sum of number1 and number2 enclosed in a box
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.yellow, // Color for answer container
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '= ${number1 + number2}',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

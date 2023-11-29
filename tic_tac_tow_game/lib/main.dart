import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test Project'),
        ),
        body: TestAppHome(),
      ),
    );
  }
}

class TestAppHome extends StatelessWidget {
  const TestAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Text('Testing Buttons', style: TextStyle(fontSize: 25)),
            SizedBox(height: 40),
            Buttons()
          ],
        ),
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var nrOfmale = 0;
  var nrofFemale = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Column(
        children: [
          Text(
            'Number of male: $nrOfmale',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 20),
          Text(
            'Number of Female: $nrofFemale',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 20),
          MaterialButton(
            onPressed: () {
              setState(() {
                nrOfmale++;
              });
            },
            child: Text(
              'Male',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            color: Colors.amber,
            height: 50,
            minWidth: 200,
            elevation: 10,
          ),
          SizedBox(height: 20),
          MaterialButton(
            onPressed: () {
              setState(() {
                nrofFemale++;
              });
            },
            child: Text(
              'FeMale',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            color: Colors.amber,
            height: 50,
            minWidth: 200,
            elevation: 10,
          ),
        ],
      ),
    ));
  }
}

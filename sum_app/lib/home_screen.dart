import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _result = 0;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Sum App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: _textEditingController1,
                keyboardType: TextInputType.number,
                validator: (String? value) {
                  String v = value ?? '';
                  if (v.isEmpty) {
                    return 'input number';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter number 1'),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _textEditingController2,
                keyboardType: TextInputType.number,
                validator: (String? value) {
                  String v = value ?? '';
                  if (v.isEmpty) {
                    return 'input number';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter number 2'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          double numOne = double.tryParse(
                                  _textEditingController1.text.trim()) ??
                              0;
                          double numTwo = double.tryParse(
                                  _textEditingController2.text.trim()) ??
                              0;
                          double result = add(numOne, numTwo);
                          _result = result;
                        }
                      },
                      child: Text('Add')),
                  ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          double numOne = double.tryParse(
                                  _textEditingController2.text.trim()) ??
                              0;
                          double numTwo = double.tryParse(
                                  _textEditingController2.text.trim()) ??
                              0;
                          double result = subtract(numOne, numTwo);

                          _result = result;
                        }
                      },
                      child: Text('Sub')),
                  ElevatedButton(onPressed: clear, child: Text('Clear')),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Result: $_result',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  double subtract(double numOne, double numTwo) => numOne - numTwo;

  double add(double numOne, double numTwo) {
    return numOne + numTwo;
  }

  void clear() {
    _textEditingController1.clear();
    _textEditingController2.clear();
    _result = 0;
    setState(() {});
  }
}

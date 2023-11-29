import 'package:flutter/material.dart';

void main() {
  runApp(TicTacTow());
}

class TicTacTow extends StatelessWidget {
  const TicTacTow({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> displeyEx0h = ['', '', '', '', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _tapped(index),
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        body: GridView.builder(
            itemCount: 9,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (BuildContext context, index) {
              return Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Center(
                  child: Text(
                    displeyEx0h[index],
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              );
            }),
      ),
    );
  }

  void _tapped(int index) {
    setState(() {
      displeyEx0h[index] = 'o';
    });
  }
}

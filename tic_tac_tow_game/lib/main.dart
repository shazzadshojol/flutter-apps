import 'package:flutter/material.dart';

void main() {
  runApp(TicTacTow());
}

class TicTacTow extends StatefulWidget {
  const TicTacTow({super.key});

  @override
  State<TicTacTow> createState() => _TicTacTowState();
}

class _TicTacTowState extends State<TicTacTow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool firstMove = true;
  List<String> displeyEx0h = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  var oScore = 0;
  var xScore = 0;
  var textStyle =
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(50),
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text('Player x', style: textStyle),
                          Text(oScore.toString(), style: textStyle),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text('Player o', style: textStyle),
                          Text(xScore.toString(), style: textStyle),
                        ],
                      ),
                    ],
                  ))),
          Expanded(
            flex: 3,
            child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      _tapped(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          border: Border.all(color: Colors.white60)),
                      child: Center(
                        child: Text(
                          displeyEx0h[index],
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
              child: Container(
            color: Colors.red,
          ))
        ],
      ),
    );
  }

  void _tapped(int index) {
    if (firstMove && displeyEx0h[0] == '') {
      displeyEx0h[index] = 'o';
    } else if (!firstMove && displeyEx0h[0] == '') {
      displeyEx0h[index] = 'x';
    }
    firstMove = !firstMove;
    _checkWinner();
    setState(() {});
  }

  void _checkWinner() {
    // 1st row winner
    if (displeyEx0h[0] == displeyEx0h[1] &&
        displeyEx0h[0] == displeyEx0h[2] &&
        displeyEx0h[0] != '') {
      _showWinDialog(displeyEx0h[0]);
    }
    // 2nd row winner
    if (displeyEx0h[3] == displeyEx0h[4] &&
        displeyEx0h[3] == displeyEx0h[5] &&
        displeyEx0h[3] != '') {
      _showWinDialog(displeyEx0h[3]);
    }
    // 3nd row winner
    if (displeyEx0h[6] == displeyEx0h[7] &&
        displeyEx0h[6] == displeyEx0h[8] &&
        displeyEx0h[6] != '') {
      _showWinDialog(displeyEx0h[6]);
    }
    // 1st column winner
    if (displeyEx0h[0] == displeyEx0h[3] &&
        displeyEx0h[0] == displeyEx0h[6] &&
        displeyEx0h[0] != '') {
      _showWinDialog(displeyEx0h[0]);
    }
    // 2nd column winner
    if (displeyEx0h[1] == displeyEx0h[4] &&
        displeyEx0h[1] == displeyEx0h[7] &&
        displeyEx0h[1] != '') {
      _showWinDialog(displeyEx0h[1]);
    }
    // 3rd column winner
    if (displeyEx0h[2] == displeyEx0h[5] &&
        displeyEx0h[2] == displeyEx0h[8] &&
        displeyEx0h[2] != '') {
      _showWinDialog(displeyEx0h[2]);
    }
    // cross left to right
    if (displeyEx0h[0] == displeyEx0h[4] &&
        displeyEx0h[0] == displeyEx0h[8] &&
        displeyEx0h[0] != '') {
      _showWinDialog(displeyEx0h[0]);
    }
    // cross right to left
    if (displeyEx0h[2] == displeyEx0h[4] &&
        displeyEx0h[2] == displeyEx0h[6] &&
        displeyEx0h[2] != '') {
      _showWinDialog(displeyEx0h[2]);
    }
  }

  void _showWinDialog(var winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Winner is: ' + winner),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    _clearBoard();
                    Navigator.of(context).pop();
                  },
                  child: Text('Play Again'))
            ],
          );
        });
    if (winner == 'o') {
      oScore++;
    } else if (winner == 'x') {
      xScore++;
    }
    _clearBoard();
  }

  void _clearBoard() {
    for (int i = 0; i < 9; i++) {
      displeyEx0h[i] = '';
    }
    setState(() {});
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const MyHomePage(title: 'Rock Paper Scissor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List imageList = ['rock', 'paper', 'scissor'];

  var _player = 'rock';

  var _player2 = 'rock';

  void shuffleimageList() {
    setState(() {
      imageList.shuffle();
      _player = imageList[0];
    });
  }

  void shuffleimageList2() {
    setState(() {
      imageList.shuffle();
      _player2 = imageList[0];
    });
  }

  void winner() {
    if (_player == 'rock' && _player2 == 'scissor') {
      const snackBar = SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Player1 Win'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (_player == 'rock' && _player2 == 'rock') {
      const snackBar = SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Draw'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (_player == 'rock' && _player2 == 'paper') {
      const snackBar = SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Player2 Win'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (_player == 'paper' && _player2 == 'rock') {
      const snackBar = SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Player1 Win'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (_player == 'paper' && _player2 == 'paper') {
      const snackBar = SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Draw'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (_player == 'paper' && _player2 == 'scissor') {
      const snackBar = SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Player2 Win'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (_player == 'scissor' && _player2 == 'paper') {
      const snackBar = SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Player1 Win'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (_player == 'scissor' && _player2 == 'scissor') {
      const snackBar = SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Draw'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (_player == 'scissor' && _player2 == 'rock') {
      const snackBar = SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Player2 Win'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      'Player 1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: InkWell(
                        onTap: () {
                          shuffleimageList();
                        },
                        child: Image(
                          image: AssetImage('images/$_player.png'),
                          width: 100,
                          height: 100,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Player 2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: InkWell(
                        onTap: () {
                          shuffleimageList2();
                        },
                        child: Image(
                          image: AssetImage('images/$_player2.png'),
                          width: 100,
                          height: 100,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: (() {
                winner();
              }),
              child: const Text('Who is winner'),
            )
          ],
        ),
      ),
    );
  }
}

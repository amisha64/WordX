import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wordx/home.dart';

class gameEnd extends StatefulWidget {
  //final int score;
  // Win({required this.score});
  const gameEnd();
  @override
  _gameEnd createState() => _gameEnd();
}

class _gameEnd extends State<gameEnd> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('WordX',
          style: GoogleFonts.macondo(
          color: Colors.white
        ),),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Text(
          "Congratulations! You scored 100!",
                style: GoogleFonts.macondo(
                color: Colors.blueAccent,
                fontSize: 50,
              ),
        ),
        ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
          onPrimary: Colors.white
        ),
        onPressed: () {
          //changeScore();
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomeScreen()));
        },
        child: Text('Home',
                style: GoogleFonts.macondo(
                fontSize: 25,
              ),),
        ),
        ],
        ),
      ),
    );
  }
}
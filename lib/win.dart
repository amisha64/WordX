import 'package:flutter/material.dart';
import 'package:wordx/gameScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Win extends StatefulWidget {
    
  // final int score;
  // Win({required this.score});
  const Win({super.key});
  @override
  _Winner createState() => _Winner();
}

class _Winner extends State<Win> {
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
          "Wohoo! That's right",
                style: GoogleFonts.macondo(
                color: Colors.blueAccent,
                fontSize: 50,
              ),
        ),
          Text(
            //"Score: $widget.score.toString()",
            "Score: 10",
            style: GoogleFonts.macondo(
            color: Color.fromARGB(255, 42, 84, 158),
            fontSize: 20,
            ),
          ),
        ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
          onPrimary: Colors.white
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GameScreen(10)));
        },
        child: Text('Continue',
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
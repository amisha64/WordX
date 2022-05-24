import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Win extends StatefulWidget {
  //final int score;
  // Win({required this.score});
  const Win({super.key});
  @override
  _Winner createState() => _Winner();
}

class _Winner extends State<Win> {
  // int finalscore=10;
  // void changeScore(){
  //   setState(() {
  //     finalscore+= 10;
  //   });
  // }

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
          "Wohoo! That's right 🎉",
          textAlign: TextAlign.center,
                style: GoogleFonts.macondo(
                color: Colors.blueAccent,
                fontSize: 40,
              ),
        ),
        Image.asset("assets/images/congo.gif",),
          // Text(
          //   //"Score: $widget.score.toString()",
          //   "Score: $finalscore",
          //   style: GoogleFonts.macondo(
          //   color: const Color.fromARGB(255, 42, 84, 158),
          //   fontSize: 20,
          //   ),
          // ),
        ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
        ),
        onPressed: () {
          //changeScore();
          Navigator.pop(context);
        },
        child: Text('Continue',
                style: GoogleFonts.macondo(
                fontSize: 20,
              ),),
        ),
        ],
        ),
      ),
    );
  }
}
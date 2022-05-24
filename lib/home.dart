import 'package:flutter/material.dart';
import 'gameScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('WordX',
          style: GoogleFonts.macondo(
          color: Colors.white
        ),),
          backgroundColor: Colors.blueAccent),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
        children: <Widget>[
        const SizedBox(
          height: 50, // <-- SEE HERE
        ),
        Text(
          "Welcome 💙",
                style: GoogleFonts.macondo(
                color: const Color.fromARGB(255, 42, 84, 158),
                fontSize: 50,
              ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
          onPrimary: Colors.white
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const GameScreen()));
        },
        child: Text('New Game',
                style: GoogleFonts.macondo(
                fontSize: 25,
              ),),
        ),
        const SizedBox(
          height: 60,
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 42, 84, 158),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            boxShadow: const [BoxShadow(
                  color: Color.fromARGB(46, 68, 137, 255),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(3, 3)
                ),],
            
          ),
          child:Text(
          "\nHOW TO PLAY: \n1. Find letters from words in pattern to get answer. \nEg: Pattern: Solo Trip \nHint: Word starting with ' O '. A conjunction .\n\n2. The hints will help determine the relationship between the position of the letter in the pattern and the answer. \nEg: #O#O  #r#p \n\n3. Similarly find the other letters to get the correct answer! \nAnswer : OR\n\nCan you score a PERFECT-100 !!! \n",
          textAlign: TextAlign.start,
          style: GoogleFonts.macondo(
                color: const Color.fromARGB(255, 42, 84, 158),
                fontSize: 15,
                //backgroundColor: Colors.blueAccent.withOpacity(0.2),
              ),
          )
        ),
        //1.Find letters from words in pattern to get answer. Eg: Pattern: Solo Trip  Hint: Word starting with ' O '. A conjunction . 2.The hints will help determine the relationship between the position of the letter in the pattern and the answer. Eg: s'O'l'O' trip  3. Similarly find the other letters to get the correct answer.
        ],
        ),
      ),
    );
  }
}
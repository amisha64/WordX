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
          "Welcome",
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
            
          ),
          child:Text(
          "\nHOW TO PLAY: \n1. Note the letters & its position given in the hint. \nEg: 3rd - r \n\n2.Find the relation of the hinted letter with third positioned word in pattern. \nEg: 'r' comes second in Brian. \n\n3.Similarly find the letters from other words in pattern to get complete word! \n\nCAN YOU SCORE A PERFECT 100!!!\n",
          textAlign: TextAlign.start,
          style: GoogleFonts.macondo(
                color: const Color.fromARGB(255, 42, 84, 158),
                fontSize: 15,
              ),
          )
        ),
        
        ],
        ),
      ),
    );
  }
}
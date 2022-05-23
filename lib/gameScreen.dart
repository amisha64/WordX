import 'package:flutter/material.dart';
import 'package:wordx/Screen2.dart';
import 'package:wordx/win.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_background/animated_background.dart';


class GameScreen extends StatefulWidget {
  //const GameScreen({super.key});
  final int score;
  const GameScreen(this.score);
  @override
  _GameScreen createState() => _GameScreen();
}

class _GameScreen extends State<GameScreen> with SingleTickerProviderStateMixin {
  // defination of ParticlesOptions.
  ParticleOptions particles = const ParticleOptions(
    baseColor: Color.fromARGB(204, 68, 137, 255),
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    particleCount: 70,
    spawnMaxRadius: 15.0,
    spawnMaxSpeed: 100.0,
    spawnMinSpeed: 30,
    spawnMinRadius: 7.0,
  );
  var hints=["Hint: Three letter word ending with 'r'. Meaning: Belonging",
  "Second",
  "Third",
  "Fourth",
  "Fifth",
  "Sixth",
  "Seventh",
  "Eighth",
  "Ninth",
  "Tenth"];

  var pattern = [
    'Look out Brian!',
    'second',
    'third',
    'fourth',
    'fifth',
    'sixth',
    'seventh',
    'eighth',
    'ninth',
    'tenth'
   ];

  var result = [
    'our',
    'sec',
    'thi',
    'fou',
    'fif',
    'six',
    'sev',
    'eig',
    'nin',
    'ten'
   ];

  var finalscore=0;

  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('WordX',
          style: GoogleFonts.macondo(
          color: Colors.white
        ),),
          backgroundColor: Colors.blueAccent),
      body: 
      AnimatedBackground(
          // vsync uses singleTicketProvider state mixin.
          vsync: this, 
          behaviour: RandomParticleBehaviour(options: particles),
      
      // Padding(
      //     padding: const EdgeInsets.all(20.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Text(
            "Pattern: Look out Brian!",
                  style: GoogleFonts.macondo(
                  color: Color.fromARGB(255, 42, 84, 158),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextField(
            textCapitalization: TextCapitalization.characters,
            controller: myController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: myController.clear,
                icon: Icon(Icons.clear)),
              hintText: 'The word is...',
            ),
          ),
          Text(
            "Hint: Three letter word ending with 'r'. Meaning: Belonging",
                  style: GoogleFonts.macondo(
                  color: Color.fromARGB(255, 42, 84, 158),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
          ),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent,
            onPrimary: Colors.white
          ),
          onPressed: () {
            if(myController.text.toString().toLowerCase()==result[0]){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Win(score: score,)));
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Win()));
              finalscore+=widget.score;
            }
            else{
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
            }
          },
          child: Text('Go!',
                  style: GoogleFonts.macondo(
                  fontSize: 25,
                ),),
        ),
          Text(
            "Score: $finalscore.",
            style: GoogleFonts.macondo(
            color: Colors.blueAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
          ),
        ],
        ),
      ),
    );
  }
}
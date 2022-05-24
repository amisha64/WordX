import 'package:flutter/material.dart';
import 'package:wordx/Screen2.dart';
import 'package:wordx/gameEnd.dart';
import 'package:wordx/win.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_background/animated_background.dart';


class GameScreen extends StatefulWidget {
  const GameScreen({super.key});
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
  
  String patt= "LOOK OUT BRIAN !";
  String hint= "Three letter word ending with 'r'. Meaning: Belonging";
  var finalscore=0;

  void changeScore(){
    setState(() {
      finalscore+= 10;
    });
  }

  void changePattern(int finalscore){
    switch(finalscore) {
      case 0: {
      patt="LOOK OUT BRIAN!";
      hint="Three letter word ending with 'r'. Meaning: Belonging";
      }
      break;

      case 10: {
      patt= "NOT";
      hint="N";
      }
      break;

      case 20: {
      patt= "NOT";
      hint="N";
      }
      break;

      case 30: {
      patt= "NOT";
      hint="N";
      }
      break;

      case 40: {
      patt= "NOT";
      hint="N";
      }
      break;

      case 50: {
      patt= "NOT";
      hint="N";
      }
      break;

      case 60: {
      patt= "NOT";
      hint="N";
      }
      break;

      case 70: {
      patt= "NOT";
      hint="N";
      }
      break;

      case 80: {
      patt= "NOT";
      hint="N";
      }  
      break;

      case 90: {
      patt= "NOT";
      hint="N";
      }     
      break;

      default: {
       patt= "";
       hint="";
      }
      break;
      }
  }

  int i=0;

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
            "Pattern: $patt",
                  style: GoogleFonts.macondo(
                  color: const Color.fromARGB(255, 42, 84, 158),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextField(
            textCapitalization: TextCapitalization.characters,
            controller: myController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: myController.clear,
                icon: const Icon(Icons.clear)),
              hintText: 'The word is...',
            ),
          ),
          Text(
            "Hint: $hint",
                  style: GoogleFonts.macondo(
                  color: const Color.fromARGB(255, 42, 84, 158),
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
            if(myController.text.toString().toLowerCase()==result[i]){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Win(score: score,)));
              changeScore();
              changePattern(finalscore);
              i+=1;
              myController.clear();
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Win()));
            if(finalscore==100){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const gameEnd()));}
            }
            else{
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Screen2()));
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
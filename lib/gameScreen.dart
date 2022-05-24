// ignore: file_names
import 'package:flutter/material.dart';
import 'package:wordx/Screen2.dart';
import 'package:wordx/gameEnd.dart';
import 'package:wordx/win.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_background/animated_background.dart';
//flushbar
import 'package:another_flushbar/flushbar.dart';


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
  
  String patt= "Speedily, We sneaked.";
  String hint= "3-letter word ending with ' N '. Used for writing.";
  var finalscore=0;

  void changeScore(){
    setState(() {
      finalscore+= 10;
    });
  }

  void changePattern(int finalscore){
    switch(finalscore) {
      case 0: {
      patt="Speedily, We sneaked.";
      hint="3-letter word ending with ' N '. Used for writing.";
      }
      break;

      case 10: {
      patt= "Who's your strength?";
      hint="3-letter word beginning with ' O '. Similar to belonging.";
      }
      break;

      case 20: {
      patt= "Get over fences.";
      hint="3-letter word with ' E ' in the middle. A number.";
      }
      break;

      case 30: {
      patt= "The pearl was adorable.";
      hint="4-letter word ending with ' D '. A body part.";
      }
      break;

      case 40: {
      patt= "Up for battle, Noah?";
      hint="A 4-letter word beginning with ' T '. A group.";
      }
      break;

      case 50: {
      patt= "Bring them out.";
      hint="3-letter word ending with ' P '. A vessel.";
      }
      break;

      case 60: {
      patt= "Face the aftermath.";
      hint="3-letter word with ' I ' in middle. Huge.";
      }
      break;

      case 70: {
      patt= "Cut in Oscar ads.";
      hint="4-letter word beginning with ' V '. Poll.";
      }
      break;

      case 80: {
      patt= "Visible inhumanity among wrestlers.";
      hint="4-letter word ending with ' E '. Footwear.";
      }  
      break;

      case 90: {
      patt= "Annoy hijackers slyly.";
      hint="' I ' is the second last letter. Verb meaning blend.";
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
    'pen',
    'our',
    'ten',
    'head',
    'team',
    'cup',
    'big',
    'vote',
    'shoe',
    'mix'
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
            "Pattern:\n$patt",
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
            "Hint:\n$hint",
                  style: GoogleFonts.macondo(
                  color: const Color.fromARGB(255, 42, 84, 158),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
          ),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
          ),
          onPressed: () {
            if(myController.text.toString().toLowerCase()==result[i]){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Win(score: score,)));
              changeScore();
              changePattern(finalscore);
              i+=1;
              myController.clear();
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Win()));

            if(finalscore==30) {
              Flushbar(title: 'New Level',
              //message: 'LEVEL::2',
              messageText: Text("LEVEL 2!", style: GoogleFonts.macondo(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
              backgroundGradient: const LinearGradient(colors: [Colors.blueAccent, Colors.lightBlue]),
              margin: const EdgeInsets.all(8),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              duration: const Duration(seconds: 3),).show(context);
            }
            if(finalscore==60) {
              Flushbar(title: 'New Level',
              //message: 'LEVEL 3',
              messageText: Text("LEVEL 3!", style: GoogleFonts.macondo(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
              backgroundGradient: const LinearGradient(colors: [Colors.blueAccent, Colors.lightBlue]),
              margin: const EdgeInsets.all(8),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              duration: const Duration(seconds: 3), 
              flushbarStyle:FlushbarStyle.FLOATING,).show(context);
            }
            if(finalscore==100){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const GameEnd()));}
            }
            else{
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Screen2()));
            }
          },
          child: Text('Go!',
                  style: GoogleFonts.macondo(
                  fontSize: 20,
                ),),
        ),
          Text(
            "Score: $finalscore",
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
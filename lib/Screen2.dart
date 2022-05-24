// ignore: file_names
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
          "Oops! That's wrong 😥",
                style: GoogleFonts.macondo(
                color: const Color.fromARGB(255, 42, 84, 158),
                fontSize: 50,
              ),
        ),
        Image.asset("assets/images/try.gif",),
        ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomeScreen()));
        },
        child: Text('New Game',
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
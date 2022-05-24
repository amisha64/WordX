// ignore: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text("WordX",
        style: GoogleFonts.macondo(
          textStyle: Theme.of(context).textTheme.headline4,
          fontSize: 120,
          fontWeight: FontWeight.w400,
          color: Colors.white
        ),),
      ),
    );
  }
}
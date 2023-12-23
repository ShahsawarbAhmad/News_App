import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_news_app/view/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    // final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/splash_pic.jpg',
                fit: BoxFit.cover,
                height: height * .9,
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "TOPS HEADLINES",
                style: GoogleFonts.anton(
                    letterSpacing: .6, color: Colors.grey.shade700),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              const SpinKitChasingDots(
                color: Colors.blue,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}

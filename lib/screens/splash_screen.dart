import 'package:flutter/material.dart';
import 'dart:async';
import 'onboarding_screen.dart';

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
        context,
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [Color(0xff6A5AE0), Color(0xff8EA7E9)],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Icon(Icons.music_note, color: Colors.white, size: 90),
            Image.asset('assets/images/app_logo.png'),
            const SizedBox(height: 20),
            // const Text(
            //   "Music App",
            //   style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
            // ),
            const SizedBox(height: 20),
            CircularProgressIndicator(color: Colors.white.withOpacity(0.8)),
          ],
        ),
      ),
    );
  }
}

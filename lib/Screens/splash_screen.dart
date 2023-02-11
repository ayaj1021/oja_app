import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oja_app/Screens/onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), ((() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.deepOrange),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('images/oja.png'),
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}

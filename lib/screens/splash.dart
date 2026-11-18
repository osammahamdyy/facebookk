import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
  super.initState();
  Future.delayed(const Duration(seconds: 3), () {
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, '/login');
  });
}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Logo in the center
          Center(
            child: Image.asset('lib/assets/images/logo.png', width: 180),
          ),

          
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Image.asset('lib/assets/images/meta.png', width: 100),
            ),
          ),
        ],
      ),
    );
  }
}

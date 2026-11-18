import 'package:facebook/screens/home.dart';
import 'package:facebook/screens/login.dart';
import 'package:facebook/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/splash',
  routes: {
    '/splash': (context) => const SplashScreen(),
    '/login': (context) => const LoginScreen(),
    '/home': (context) => const HomeScreen(),
  },
);
  }
}
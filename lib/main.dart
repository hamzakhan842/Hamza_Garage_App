import 'package:flutter/material.dart';
import 'package:hamza_garage_app/Onboarding/Randon_check.dart';
import 'package:hamza_garage_app/Splash_Screen/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_Screen(),
    );
  }
}

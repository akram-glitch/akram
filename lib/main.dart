import 'package:flutter/material.dart';
import 'package:paramacy_project/screen/login.dart';
import 'package:paramacy_project/screen/splash.dart';

void main() {
  runApp(const Pharmacy());
}

class Pharmacy extends StatelessWidget {
  const Pharmacy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Splash(),
      ),
    );
  }
}

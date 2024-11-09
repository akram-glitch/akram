import 'dart:async';

import 'package:flutter/material.dart';
import 'package:paramacy_project/screen/login.dart';
import 'package:paramacy_project/widgets/logo.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () async {
      await Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return Login();
      }));
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Logo(),
    );
  }
}

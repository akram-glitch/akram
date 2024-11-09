import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 220,
          ),
          Container(
              height: 150,
              child:const Image(image: AssetImage('assets/splash/pharmacy-7.png'))),
          const Center(
            child: Text(
              'Rosheta',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff4F46A3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

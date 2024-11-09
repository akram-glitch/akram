import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.text});
  void login (){}
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: login,
        style: ElevatedButton.styleFrom(
            backgroundColor:const Color(0xff4F46A3),
            minimumSize: const Size(300, 30)),
        child: Text(text,
            style:const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            )),
      ),
    );
  }
}

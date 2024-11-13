import 'package:flutter/material.dart';

import 'login_contiener.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        controller: ScrollController(
          keepScrollOffset: false,
        ),
          itemCount: 1,
          itemBuilder: (context,index){
        return Container(
          height: 1000,
          color: Color(0xff4F46A3),
          child: LoginContiener(),
        );
      })
    );
  }
}

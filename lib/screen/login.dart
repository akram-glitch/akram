import 'package:flutter/material.dart';
import 'package:paramacy_project/widgets/Textfield.dart';
import 'package:paramacy_project/widgets/buttom.dart';
import 'package:paramacy_project/widgets/password_textField.dart';

import 'register.dart';

class Login extends StatelessWidget {
  Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 150),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 100,
                    width: 100,
                    child:const Image(image: AssetImage('assets/splash/pharmacy-7.png'))),
                const Text(
                  'Rosheta',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4F46A3),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextfield(
              hintText: 'Email',
              labelText: 'Email',
              icons: const Icon(Icons.email)),
          const SizedBox(
            height: 20,
          ),
          const CustomPasswordTextfield(),
          const SizedBox(
            height: 20,
          ),
          const CustomButtom(
            text: 'Sign in',
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Register();
                    }));
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 18, color: Color(0xff4F46A3)),
                  )),
              const Text(
                'If You Don`t Have An Account',
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    ));
  }
}

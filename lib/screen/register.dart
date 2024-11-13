import 'package:flutter/material.dart';
import 'package:paramacy_project/widgets/Textfield.dart';
import 'package:paramacy_project/widgets/buttom.dart';
import 'package:paramacy_project/widgets/conform_password_Textfield.dart';
import 'package:paramacy_project/widgets/password_textField.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                'register',
                style: TextStyle(
                  color: Color(0xff4F46A3),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                CustomTextfield(
                    hintText: 'Name',
                    labelText: 'Name',
                    icons: const Icon(Icons.person)),
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
                CustomTextfield(
                    hintText: 'Phone',
                    labelText: 'Phone',
                    icons: const Icon(Icons.phone)),
                const SizedBox(
                  height: 20,
                ),
                const CustomPasswordTextfield(),
                const SizedBox(
                  height: 20,
                ),
                const ConformPasswordTextfield(),
                const SizedBox(
                  height: 30,
                ),
                const CustomButtom(
                  text: 'Sign up',
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          child:const Image(
                              image: AssetImage('assets/splash/pharmacy-7.png'))),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:paramacy_project/screen/register.dart';
import 'package:paramacy_project/widgets/buttom.dart';

import '../widgets/Textfield.dart';
import '../widgets/password_textField.dart';
import 'forgot_password.dart';

class LoginContiener extends StatelessWidget {
  const LoginContiener({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Medicine,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Cosmetics',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'Delivery and Shoping',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  Container(
                    height: 1000,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: 100,
                                      width: 100,
                                      child: const Image(
                                          image: AssetImage(
                                              'assets/splash/pharmacy-7.png'))),
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
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.square_outlined,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                const Text(
                                  '  Remember Me',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: (context) {
                                              return const ForgotPassword();
                                            }));
                                      },
                                      child: const Text('Forgot Password?',
                                        style: TextStyle(
                                            color: Color(0xff4F46A3),
                                            fontSize: 12
                                        ),
                                      )),
                                ),
                                Spacer(flex: 2,)
                              ],
                            ),
                          ),
                          SizedBox(height: 8,),
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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                          return const Register();
                                        }));
                                  },
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xff4F46A3)),
                                  )),
                              const Text(
                                'If You Don`t Have An Account',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }
}

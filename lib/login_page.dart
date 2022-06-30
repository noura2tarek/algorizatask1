
//import 'package:flutter/cupertino.dart';
//import 'package:country_pickers/country.dart';
//import 'package:country_pickers/country_pickers.dart';

import 'package:algorizatask/picker2.dart';
import 'package:algorizatask/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Button2.dart';
//import 'Form2.dart';
import 'Mybutton.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController Phonecontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Image(
                  width: double.infinity,
                  height: 155.0,
                  fit: BoxFit.fitWidth,
                  image: const AssetImage('images/image.jpg'),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Welcome to Fashion Daily',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Sign in',
                            style: GoogleFonts.lato(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 179.0,
                          ),
                          // ignore: prefer_const_constructors
                          Text(
                            'Help',
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.blueAccent,
                            ),
                          ),
                          const SizedBox(
                            width: 9.0,
                          ),
                          // ignore: prefer_const_constructors
                          CircleAvatar(
                            radius: 9.0,
                            backgroundColor: Colors.blueAccent,
                            // ignore: prefer_const_constructors
                            child: Icon(
                              Icons.question_mark,
                              color: Colors.white,
                              size: 17.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 34.0,
                      ),
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Color.fromARGB(134, 0, 0, 0),
                          fontSize: 19.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Picker2(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      MyButton(
                        text: 'Sign in',
                        onClick: () {
                          if(formKey.currentState!.validate()){

                          }
                        },
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Or',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const OutButton(),
                      const SizedBox(
                        height: 19,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Doesn\'t have any account ?',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 17.0),
                          ),
                          TextButton(
                            // ignore: prefer_const_constructors
                            child: Text(
                              'Register here',
                              // ignore: prefer_const_constructors
                              style: const TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 18.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => Register(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 21.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              ' Use the application according to policy rules. Any',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15.0,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              '  Kinds of violations will be subject to sanctions',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15.0,
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
          ),
        ),
      ),
    );
  }
}

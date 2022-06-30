
import 'package:algorizatask/picker2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Button2.dart';
import 'Form.dart';
import 'Form2.dart';
import 'Mybutton.dart';
import 'login_page.dart';

class Register extends StatelessWidget {
  
   Register({ Key? formkey }) : super(key: formkey);
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
   final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  height: 90.0,
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
                            'Register',
                            style: GoogleFonts.lato(
                              fontSize: 39,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 140.0,
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
                        height: 32.0,
                      ),
                      const Text(
                        'Email',
                        style: TextStyle(
                          color: Color.fromARGB(134, 0, 0, 0),
                          fontSize: 19.0,
                        ),
                      ),
                      const SizedBox(
                        height: 9.0,
                      ),
                      Myform(
                        hint: 'Eg. example@email.com',
                        validation: 'Email address must not be empty',
                        type: TextInputType.emailAddress,
                        isPassword: false,
                        controller: emailcontroller,
        
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
        
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Color.fromARGB(134, 0, 0, 0),
                          fontSize: 19.0,
                        ),
                      ),
                      const SizedBox(
                        height: 11.0,
                      ),
                      Picker2(),
                      const SizedBox(
                        height: 9.0,
                      ),
                      const Text(
                        'Password',
                        style: TextStyle(
                          color: Color.fromARGB(134, 0, 0, 0),
                          fontSize: 19.0,
                        ),
                      ),
                      const SizedBox(
                        height: 9.0,
                      ),
                      Formm(
                        hint: 'Password',
                        validation: 'password must not be empty' ,
                        type: TextInputType.visiblePassword,
                        controller: passcontroller,
                        isPassword: true,
                        icon:const Icon( Icons.remove_red_eye),

                      ),
                      const SizedBox(
                        height: 9.0,
                      ),


        
                      MyButton(
                        text: 'Register',
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
                      OutButton(),
                      const SizedBox(
                        height: 19,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Has any account ?',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 17.0),
                          ),
                          TextButton(
                            // ignore: prefer_const_constructors
                            child: Text(
                              'Sign in here',
                              // ignore: prefer_const_constructors
                              style: const TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 18.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              ' By regestering your account, you are agree to our',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15.0,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                
                                ' terms and condition',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 15.0,
                                ),
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
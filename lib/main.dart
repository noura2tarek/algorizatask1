import 'package:algorizatask/login_page.dart';
//import 'package:algorizatask/picker.dart';
//import 'package:algorizatask/picker2.dart';
//import 'package:algorizatask/register_page.dart';
import 'package:flutter/material.dart';

//import 'Form2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: Login() ,
    );
  }
}




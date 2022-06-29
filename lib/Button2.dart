import 'dart:ffi';

import 'package:flutter/material.dart';

class OutButton extends StatelessWidget {
  final String text;
  final Color textColor;
  //final Color buttonColor;
  final double height;
  final double width;
  //final  void onClick;
  final double radius;

  const OutButton({
    this.text = ' Sign with by google',
    this.textColor = Colors.blueAccent,
    this.height = 47.0,
    this.width = double.infinity,
    this.radius = 6.0,
    // required this.onClick,
    //this.buttonColor = Colors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: height,
      width: width,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: OutlinedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Image(
              height: 30.0,
              image: AssetImage('images/logogoogle.jpg'),
            ),
            const SizedBox(width: 5.0,),
            Text(
              text,
              style: TextStyle(
                fontSize: 16.0,
                color: textColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

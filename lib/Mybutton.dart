
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

   final String text;
   final Color textColor;
   final Color buttonColor;
   final double height;
   final double width;
   final VoidCallback onClick;
   final double radius;

  const MyButton({
     Key? key,
     required this.text,
     this.buttonColor = Colors.blue,
     this.textColor=Colors.white,
     this.height = 47.0,
     this.width = double.infinity,
     this.radius = 6.0,
     required this.onClick,

     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton (
        height: height,
        color: buttonColor,
        onPressed: () { 
          onClick;
         },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Myform extends StatelessWidget {
 //final String label;
 //final Widget icon;
 final String hint;
 final String validation;
 final TextInputType type;
 final TextEditingController controller;
 final bool isPassword; 
  
  const Myform({
       
       Key? key,
       //required this.label,
       required this.type,
       required this.controller,
       required this.validation,
        this.isPassword= false,
        required this.hint,
       

  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: controller,
      keyboardType: type,
      validator: (value) {
         if(value!.isEmpty){
         return validation;
         }
         return null;
      },
      decoration: InputDecoration(
       // suffixIcon: ,
        border: OutlineInputBorder(),
        //labelText: label,
        hintText: hint,
        
        
      ),
      obscureText: isPassword? true: false,
      
    );
  }
}
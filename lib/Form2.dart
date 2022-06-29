import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
//import 'package:country_picker/country_picker.dart';

class Formm extends StatelessWidget {
  //final String label;
  final Widget icon;
  final String hint;
  final String validation;
  final TextInputType type;
  final TextEditingController controller;
  final bool isPassword;

  const Formm({
    required this.icon,
    Key? key,
    required this.hint,
    //required this.label,
    required this.type,
    required this.controller,
    required this.validation,
    this.isPassword = false,
    //required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      validator: (value) {
        if (value!.isEmpty) {
          return validation;
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: icon,
        border: OutlineInputBorder(),
        hintText: hint,
      ),
      obscureText: isPassword ? true : false,
    );
  }
}

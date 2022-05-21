import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextForm extends StatelessWidget {
  TextForm(
      {Key? key,
      required this.isObscureText,
      required this.txt,
      required this.controller})
      : super(key: key);
  String txt;
  bool isObscureText = false;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(
            txt,
            style: const TextStyle(fontSize: 17, color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.black54, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.black54, width: 2)),
        ),
        obscureText: isObscureText);
  }
}

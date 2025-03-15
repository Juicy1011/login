import 'package:flutter/material.dart';

Widget myTextField({
  hintText,
  required controller,
  Color? fillColor,
  Color? textColor,
  Color? hintTextColor,
}) {
  return TextField(
      controller: controller,
      style: TextStyle(color: textColor), // This controls input text color
      decoration: InputDecoration(
          hintText: hintText,
          fillColor: fillColor ?? Colors.transparent,
          hintStyle:
              TextStyle(color: hintTextColor), // This controls hint text color
          prefixIcon: Icon(Icons.person),
          border: OutlineInputBorder(borderSide: BorderSide())));
}

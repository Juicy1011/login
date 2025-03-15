import 'package:flutter/material.dart';

Widget myTextField({
  hintText,
  required controller,
  Color? fillColor,
}) {
  return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          fillColor: fillColor ?? Colors.transparent,
          prefixIcon: Icon(Icons.person),
          border: OutlineInputBorder(borderSide: BorderSide())));
}

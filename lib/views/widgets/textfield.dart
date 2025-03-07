import 'package:flutter/material.dart';

Widget myTextField({hintText, required controller}) {
  return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(Icons.person),
          border: OutlineInputBorder(borderSide: BorderSide())));
}

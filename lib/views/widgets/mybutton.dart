import 'package:flutter/material.dart';

Widget myButton(VoidCallback work, {required label, color = Colors.blue}) {
  return MaterialButton(
    onPressed: work,
    color: color,
    minWidth: 300,
    child: Text(label),
  );
}

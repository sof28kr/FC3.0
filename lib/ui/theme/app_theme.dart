import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.pink,
  Colors.orange,
  Colors.grey,
  Color(0xff7A3381),
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: AppBarTheme(
        titleTextStyle: const TextStyle(
            color: Color.fromARGB(230, 255, 255, 255),
            fontSize: 18,
            fontWeight: FontWeight.bold),
        centerTitle: true,
        backgroundColor: colorList[selectedColor],
      ));
}

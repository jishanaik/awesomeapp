import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'dart:ffi';
import 'dart:ui';


void main() {
  runApp(
    MaterialApp(
    title: "Awesome App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
  ));
}


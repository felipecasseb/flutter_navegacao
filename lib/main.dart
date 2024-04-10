import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navegacao/home_screen.dart';
import 'package:flutter_navegacao/login_screen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    )
  );
}
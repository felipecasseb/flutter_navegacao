import 'package:flutter/material.dart'; //Android
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  final String email;
  const HomeScreen({
    required this.email,
    super.key
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Navegação"),
      ),
      body: Center(
        child: Text(widget.email),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Morepage extends StatelessWidget {
  const Morepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "more",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}

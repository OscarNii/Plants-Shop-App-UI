import 'package:flutter/material.dart';
import 'package:plantshop/StartUp/StartUp.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          StartUp(),
        ],
      ),
    );
  }
}

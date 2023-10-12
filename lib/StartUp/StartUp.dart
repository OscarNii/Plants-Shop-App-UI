// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plantshop/Pages/pages1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartUp extends StatelessWidget {
  final _controller = PageController();
  StartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                Pages1(),
                Pages1(),
                Pages1(),
                Pages1(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.black,
              dotColor: Colors.grey,
              dotHeight: 30,
              dotWidth: 20,
            ),
          )
        ],
      ),
    );
  }
}

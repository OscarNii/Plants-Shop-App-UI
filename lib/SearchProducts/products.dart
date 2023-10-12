// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Products"),
        //        leading: IconButton(),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_2_rounded),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Plants...',
            contentPadding: EdgeInsets.all(16.0),
            border: InputBorder.none,
            // suffixIcon: Icon(Icons.search),
          ),
          onChanged: (value) {
            // Handle search input here
          },
          style: TextStyle(color: Colors.black),
          cursorColor: Colors.white,
          // Set overflow to visible
        ),
        
      ),
    );
  }
}

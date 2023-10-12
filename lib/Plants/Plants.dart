// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Plants extends StatelessWidget {
  const Plants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 390,
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      margin: const EdgeInsets.only(right: 7, top: 5),
      decoration: BoxDecoration(
          color: const Color.fromARGB(233, 247, 196, 237),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(126, 0, 0, 0),
              Colors.white,
            ],
          ),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInUp(
            child: Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                    image: AssetImage("assets/plant3.png"), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Nextpage1(),
                        //   ),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            const Color.fromARGB(255, 47, 130, 127),
                        backgroundColor:
                            const Color.fromARGB(211, 244, 240, 240),
                        padding: const EdgeInsets.all(15.0),
                        fixedSize: const Size(110, 50),
                        textStyle: const TextStyle(
                          fontSize: 15,
                        ),

                        shadowColor: Colors.grey,
                        side: const BorderSide(color: Colors.white, width: 2),
                        shape: const StadiumBorder(),
                        //alignment: Alignment.center
                      ),
                      child: const Row(
                        children: [
                          Text(
                            ' 10 Plants',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Lucky Jade Plant',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                NumberFormat.simpleCurrency(locale: 'en-us', decimalDigits: 2)
                    .format(150.00),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 34,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
      height: 440,
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      margin: const EdgeInsets.only(right: 7, top: 5),
      decoration: BoxDecoration(
          color: const Color.fromARGB(233, 247, 196, 237),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(126, 0, 0, 0),
              Colors.black,
            ],
          ),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInUp(
            child: Container(
              height: 250,
              width: 200,
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
                        fixedSize: const Size(130, 50),
                        textStyle: const TextStyle(
                          fontSize: 18,
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
                            style: TextStyle(color: Colors.black),
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
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(width: 15),
              Text(
                NumberFormat.simpleCurrency(locale: 'en-us', decimalDigits: 2)
                    .format(150.00),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Stack(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Text(
                          '4.2',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

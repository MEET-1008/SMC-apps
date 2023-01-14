// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class demo extends StatelessWidget {
  const demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("404",style: TextStyle(
                fontSize: 60,
                color: Color.fromARGB(96, 116, 114, 114)
              ),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              Text("page is not found......!",style: TextStyle(fontSize: 17)),
            ],
          )
        ],
      ),
    );
  }
}
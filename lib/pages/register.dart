// ignore_for_file: camel_case_types, sort_child_properties_last, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use, avoid_print, unnecessary_string_interpolations

import 'package:flutter/material.dart';

import '../main.dart';


Widget texcrt (String text1){
    return     Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  hoverColor: Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255), width: 5),
                  ),
                  labelText: "$text1",
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                keyboardType: TextInputType.text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontStyle: FontStyle.italic),
                onChanged: (value) {},
              ),
            );
  }

class register extends StatelessWidget {
  const register({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                      child: Image.asset("assets/logo.png"),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Surat Muncipal Corporatiopn",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //           height: 60,
            //           child: Image.asset(
            //             "assets/Alertem Logo.png",
            //             color: Colors.red,
            //           )),
            //     ),
            //   ],
            // ),

            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //           height: 50, child: Image.asset("assets/mobile.png")),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 20,
            ),
         
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "register",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ), SizedBox(
              height: 20,
            ),
         texcrt("Enter your Full name"),
          SizedBox(
              height: 20,
            ),
         texcrt("Enter E-mail id"),
          SizedBox(
              height: 20,
            ),
         texcrt("Enter phone number"),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 255, 255, 255),
                minimumSize: Size(250, 50),
                elevation: 20,
              ),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.LoginPage);
              },
              child: Text('SUBMIT',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 15)),
            ),
            SizedBox(
              height: 80,
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         height: 45,
            //         child: SizedBox(
            //           height: 100,
            //           child: Card(
            //             elevation: 0,
            //             child: Image.asset(
            //               "assets/Gorisco white.png",
            //               color: Color.fromARGB(255, 91, 26, 141),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

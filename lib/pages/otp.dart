// ignore_for_file: camel_case_types, sort_child_properties_last, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../main.dart';

class otp extends StatelessWidget {
  const otp({super.key});

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
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageSlideshow(
                /// Width of the [ImageSlideshow].

                width: double.infinity,

                /// Height of the [ImageSlideshow].

                height: 200,

                /// The page to show when first creating the [ImageSlideshow].

                initialPage: 0,

                /// The color to paint the indicator.

                indicatorColor: Colors.blue,

                /// The color to paint behind th indicator.

                indicatorBackgroundColor: Colors.grey,

                /// The widgets to display in the [ImageSlideshow].

                /// Add the sample image file into the images folder

                children: [
                  Image.asset(
                    'assets/1.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/2.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/3.jpg',
                    fit: BoxFit.cover,
                  ),
                ],

                /// Called whenever the page in the center of the viewport changes.

                onPageChanged: (value) {
                  print('Page changed: $value');
                },

                /// Auto scroll interval.

                /// Do not auto scroll with null or 0.

                autoPlayInterval: 3000,

                /// Loops back to first slide.

                isLoop: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "OTP",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //       hoverColor: Color.fromARGB(255, 255, 255, 255),
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //         borderSide: BorderSide(
            //             color: Color.fromARGB(255, 255, 255, 255), width: 5),
            //       ),
            //       labelText: "Enter otp ",
            //       labelStyle: TextStyle(color: Colors.white),
            //       fillColor: Colors.white,
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.white, width: 2.0),
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //     ),
            //     keyboardType: TextInputType.number,
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 17.0,
            //         fontStyle: FontStyle.italic),
            //     onChanged: (value) {},
            //   ),
            // ),
                OtpTextField(
        numberOfFields: 4,
        borderColor: Colors.greenAccent,
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                );
                }
            );
        }, // end onSubmit
    ),
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
                Navigator.pushNamed(context, MyRoutes.HomePage);
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

// ignore_for_file: prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors, sort_child_properties_last, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:smc_app/pages/drower.dart';

import '../main.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Widget concrt() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, MyRoutes.DemoPage);
        },
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              child: Image.asset("assets/vaccine.png"),
              width: double.infinity,
            ),
            Text("Vaccine \n verification")
          ],
        ),
      ),
    );
  }

  Widget rowcrt() {
    return Row(
      children: [
        concrt(),
        concrt(),
        concrt(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Surat Muncipal Corporatiopn",
        ),
      ),
      drawer: DrowerP(),
      body: Column(
        children: [
          ImageSlideshow(
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
          rowcrt(),
          rowcrt(),
          rowcrt(),
        ],
      ),
    );
  }
}

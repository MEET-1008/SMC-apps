// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:smc_app/pages/demo.dart';
import 'package:smc_app/pages/drower.dart';
import 'package:smc_app/pages/home.dart';
import 'package:smc_app/pages/login.dart';
import 'package:smc_app/pages/register.dart';
import 'package:smc_app/pages/start.dart';
import 'package:smc_app/pages/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyRoutes {
 static String StartPage = "/start";
 static String HomePage = "/home";
 static String OtpPage = "/otp";
 static String LoginPage= "/login";
 static String RegisterPage= "/register";
 static String DemoPage= "/demo";
 static String DrowerPage= "/Drower";

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMC APPS ',
      theme: ThemeData(
      
      ),
        debugShowCheckedModeBanner: false,

      initialRoute: "/start",
      routes: {
        MyRoutes.StartPage: (context) => const start(),
        MyRoutes.HomePage: (context) => const home(),
        MyRoutes.OtpPage: (context) => const otp(),
        MyRoutes.LoginPage: (context) => const login(),
        MyRoutes.RegisterPage: (context) => const register(),
        MyRoutes.DemoPage: (context) => const demo(),
        MyRoutes.DrowerPage: (context) => const DrowerP(),
      }
      
     
    );
  }
}


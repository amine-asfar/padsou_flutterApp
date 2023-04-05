import 'package:flutter/material.dart';
import 'package:padsou/pages/login.dart';

import 'pages/onboarding.dart';
import 'pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context)=>const OnBoarding(),
        "/register":(context)=>const Register(),
        "/login":(context)=>const Login(),
      },

    );
  }
}


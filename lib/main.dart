import 'package:flutter/material.dart';
import 'package:text1field/SignInPage.dart';
import 'package:text1field/home_page.dart';
import 'package:text1field/sign_up_page.dart';
import 'package:text1field/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      routes: {
        SplashPage.id:(context)=>const SplashPage(),
        HomePage.id:(context)=>const HomePage(),
        SignInPage.id:(context)=>const SignInPage(),
        SignUpPage.id:(context)=>const SignUpPage(),
      },
    );
  }
}

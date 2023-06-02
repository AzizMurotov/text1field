import 'package:flutter/material.dart';

import 'SignInPage.dart';
class SplashPage extends StatefulWidget {
  static const String id = "splash_page";
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  ////////////////////////////////////////////////////
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, SignInPage.id);
    });
  }
  //////////////////////////////////////////////////////
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  /////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Center(
              child: Image.asset("assets/images/Amazon.jpg",width: 300,),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("Netflix",style: TextStyle(fontFamily: "BloodySunday",fontSize: 30),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

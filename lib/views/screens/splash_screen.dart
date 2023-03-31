import 'package:e_commerece_app/views/screens/screen_login.dart';
import 'package:e_commerece_app/views/screens/screen_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffCF2E2E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
            ),

            Text(
              "Logo",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "Poetsentone.ttf"),
            ),
            SizedBox(
              height: 20,
            ),

            Text("App Name",
                style: TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.white)),
            // SizedBox(height: 100,),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(screenLogIn());
                },
                child: const Text('Sign Up',style: TextStyle(color: Color(0xffCF2E2E)),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(257, 43),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return ScreenSignIn();
                  }));
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                ))
          ],
        ));
  }
}

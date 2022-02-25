import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job_applicaation/pages/started_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => GetStartedPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4141A4),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              'assets/images/logo.png',
              width: 59,
              height: 76,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("fluter Job",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 35.0,
              ))
        ],
      )),
    );
  }
}

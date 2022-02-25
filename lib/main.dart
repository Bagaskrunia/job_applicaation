import 'package:flutter/material.dart';
import 'package:job_applicaation/pages/splash_page.dart';
import 'package:job_applicaation/pages/started_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/started_page': (context) => GetStartedPage(),
      },
    );
  }
}

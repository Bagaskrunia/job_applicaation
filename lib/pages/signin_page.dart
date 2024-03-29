import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_applicaation/pages/signup_page.dart';
import 'package:job_applicaation/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:job_applicaation/theme.dart';

class SignInPages extends StatefulWidget {
  const SignInPages({Key? key}) : super(key: key);

  @override
  State<SignInPages> createState() => _SignInPagesState();
}

class _SignInPagesState extends State<SignInPages> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(
          top: 70.0,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: titleTextStyle,
            ),
            Text(
              'Build Your Career',
              style: subtitleTextStyle,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/illustration.png',
                    width: 262,
                    height: 240,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: titleTextStyle,
                ),
                SizedBox(height: 8),
                TextFormField(
                    controller: emailController,
                    onChanged: (value) {
                      print(value);
                      bool isValid = EmailValidator.validate(value);
                      print(isValid);
                      if (isValid) {
                        setState(() {
                          isEmailValid = true;
                        });
                      } else {
                        setState(() {
                          isEmailValid = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                            color: isEmailValid
                                ? Color(0xff4141A4)
                                : Color(0xffFD4F56)),
                      ),
                      hintText: '',
                    ),
                    style: TextStyle(
                      color:
                          isEmailValid ? Color(0xff4141A4) : Color(0xffFD4F56),
                    ))
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: titleTextStyle,
                ),
                SizedBox(height: 8),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Color(0xff4141A4)),
                      ),
                      hintText: ''),
                )
              ],
            ),
            SizedBox(height: 40),
            Container(
              width: 400,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xff41441a4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66))),
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: buttontitleTextStyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 80,
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    'Create New Account',
                    style: GoogleFonts.poppins(
                      color: Color(0xffB3B5C4),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

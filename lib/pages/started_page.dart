import 'package:flutter/material.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({ Key? key }) : super(key: key);

  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
                )
                ),
                )
        ],
      ),
      
    );
  }
}
import 'dart:async';
import 'package:coffeeapp/const/colors.dart';
import 'package:coffeeapp/page/home_page.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => homepage(),
          ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGcolor,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 150,
                height: 150,
                child: Image.asset('assets/images/black.png'),
              ),
          ),
          SizedBox(height: 20,),
          Center(child: Text("Chill Coffee Time", style: TextStyle(fontSize: 30, color: Colors.brown, fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}

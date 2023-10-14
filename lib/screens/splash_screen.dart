import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_2/screens/signing_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () { 
      Navigator.pushReplacement(context, MaterialPageRoute
        (builder: (context)=>const SignInScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: const Center(child: Text('LOADING..',style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),),)
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
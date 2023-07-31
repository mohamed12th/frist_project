import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/core/methood_help.dart';
import 'package:trannin_poject/screens/counter/cache_helper.dart';
import 'package:trannin_poject/screens/on_boarding/view.dart';

import '../login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      navgigateTo( context : context, page: CachHelper.getIfFristTime()? OnBoardingScreen():LoginScreen() , withHistor: false);


    }
    
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Image.asset("assets/icons/app.png"),
              Text("App Name",style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,color: Color(0xFF211F21)),),

            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:app/shared/theme.dart';
import 'package:app/ui/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.push(
        context, MaterialPageRoute(
          builder: (context) => const OnboardingPage()
          )
      );
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: blackBackgroundColor,
      body: Center (
        child: Container(
          width: 200,
          height: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/logo.png'
              )
            )
          ),
        ),
      )   
    );
  }
}
import 'package:app/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget{
  const SplashPage({super.key});
  
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
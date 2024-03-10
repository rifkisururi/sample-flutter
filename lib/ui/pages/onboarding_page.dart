import 'package:app/shared/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/images/indotel.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/images/serpul.png',
                  height: 331,
                ),
              ], 
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1, // agar gambar sebelum/ setelah nya tidak keliatan
                enableInfiniteScroll: false // biar bisa mentok gambar nya, tidak looping
              )
            ),
          ],
        ),
      ),
    );
  }
} 
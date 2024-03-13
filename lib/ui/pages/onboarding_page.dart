import 'package:app/shared/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

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
                enableInfiniteScroll: false, // biar bisa mentok gambar nya, tidak looping
                // ketika scroll ganti kata kata dibawah
                onPageChanged: (index, reason) => setState(() {
                  currentIndex = index;
                }),
              ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 24
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Text(
                    "Server H2h dflash \nMaju jatya",
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    'Dflash motto maju \nMaju terus',
                    style: greenTextStyle.copyWith(
                      fontSize: 16
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(
                          right: 10
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //color: blueColor
                          color: currentIndex == 0 ? blueColor : greyColor
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(
                          right: 10
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 1 ? blueColor : greyColor
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(
                          right: 10
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 2 ? blueColor : greyColor
                        ),
                      ),
                      const Spacer(), // mengisi ruang tersisa
                      Container(
                        width: 150,
                        height: 50,
                        child: TextButton(
                          child: Text(
                            'Lanjutkan',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          onPressed: () {
                            carouselController.nextPage();
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: blueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(56)
                            )
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
} 
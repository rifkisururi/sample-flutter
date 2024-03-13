import 'package:app/shared/theme.dart';
import 'package:app/ui/pages/sign_in_page.dart';
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
  List<String> titles = [
    'Dflash \nMaju jatya',
    'Indotel \nMurah lancar',
    'Serpul \nBerkah barokah'
  ];

  List<String> subtitles = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
    'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
    'when an unknown printer took a galley of type and scrambled it to make a type specimen book'
  ];

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
                    titles[currentIndex],
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
                    subtitles[currentIndex],
                    style: greenTextStyle.copyWith(
                      fontSize: 16
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: currentIndex == 2 ? 38 : 50,
                  ),
                  currentIndex == 2 ?
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity, // mengikuti lebar container
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            carouselController.nextPage();
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: blueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(56)
                            )
                          ),
                          child: Text(
                            'Mulai sekarang',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity, // mengikuti lebar container
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                                ),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero // menghapus padding
                          ),
                          child: Text(
                            'Masuk',
                            style: greenTextStyle.copyWith(
                              fontSize: 16
                            ),
                          ),
                        ),
                      ),
                    ],
                  ) :
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
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            carouselController.nextPage();
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: blueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(56)
                            )
                          ),
                          child: Text(
                            'Lanjutkan',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
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
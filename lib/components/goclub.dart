import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/theme.dart';
import '../widget/icon_left.dart';

class GoClub extends StatelessWidget {
  const GoClub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Padding(
      padding: EdgeInsets.only(
          top: screenWidth * 0.03,
          left: screenWidth * 0.04,
          right: screenWidth * 0.04),
      child: Container(
        height: screenWidth * 0.20, // Responsive height
        width: double.infinity,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFFEAF3F6), Colors.white]),
          borderRadius: BorderRadius.circular(
              screenWidth * 0.02), // Responsive border radius
          border: Border.all(color: const Color(0xFFE8E8E8)),
        ),
        child: Stack(children: [
          Positioned(
              left: screenWidth * 0.01, // Responsive positioning
              top: screenWidth * 0.005, // Responsive positioning
              bottom: screenWidth * 0.005, // Responsive positioning
              child: SvgPicture.asset('assets/icons/dots.svg')),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.03, // Responsive padding
              vertical: screenWidth * 0.015, // Responsive padding
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/star.svg',
                  height: 40, // Tetap menggunakan ukuran ikon
                ),
                SizedBox(
                  width: screenWidth * 0.04, // Responsive spacing
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '117 XP lagi ada Harta Karun',
                        style: semibold14.copyWith(color: dark1),
                      ),
                      SizedBox(
                        height: screenWidth * 0.02, // Responsive spacing
                      ),
                      Container(
                        width: double.infinity,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.005), // Responsive border radius
                        ),
                        child: LinearProgressIndicator(
                          backgroundColor: dark3,
                          color: green1,
                          value: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.06, // Responsive spacing
                ),
                const LeftIcon()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

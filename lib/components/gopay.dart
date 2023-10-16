import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/data/icons.dart';
import 'package:gojek/theme.dart';

class Gopay extends StatelessWidget {
  const Gopay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.03, // Responsive padding
        right: screenWidth * 0.03, // Responsive padding
        top: screenWidth * 0.03, // Responsive padding
      ),
      child: Container(
        height: screenWidth * 0.25, // Responsive height
        decoration: BoxDecoration(
          color: blue1,
          borderRadius: BorderRadius.circular(
              screenWidth * 0.05), // Responsive border radius
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.015, // Responsive padding
                right: screenWidth * 0.013, // Responsive padding
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.005, // Responsive width
                    height: screenWidth * 0.02, // Responsive height
                    decoration: BoxDecoration(
                      color: const Color(0xFFBBBBBB),
                      borderRadius: BorderRadius.circular(
                          screenWidth * 0.001), // Responsive border radius
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.01, // Responsive spacing
                  ),
                  Container(
                    width: screenWidth * 0.005, // Responsive width
                    height: screenWidth * 0.02, // Responsive height
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          screenWidth * 0.001), // Responsive border radius
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.013, // Responsive padding
              ),
              child: Column(
                children: [
                  Container(
                    height: screenWidth * 0.186, // Responsive height
                    width: screenWidth * 0.347, // Responsive width
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.006, // Responsive padding
                      vertical: screenWidth * 0.008, // Responsive padding
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          screenWidth * 0.016), // Responsive border radius
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/gopay.png',
                          height: screenWidth * 0.037, // Responsive height
                        ),
                        SizedBox(
                          height: screenWidth * 0.009, // Responsive spacing
                        ),
                        Text(
                          'Rp12.379',
                          style: bold16.copyWith(color: dark1),
                        ),
                        Text(
                          'Klik & cek riwayat',
                          style: semibold12_5.copyWith(color: green1),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ...gopayIcons.map((icon) => Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: screenWidth * 0.06, // Responsive width
                        height: screenWidth * 0.06, // Responsive height
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.02), // Responsive border radius
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/${icon.icon}.svg',
                          color: blue1,
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.014, // Responsive spacing
                      ),
                      Text(
                        icon.title,
                        style: semibold14.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

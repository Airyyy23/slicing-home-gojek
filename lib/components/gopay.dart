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
        left: screenWidth * 0.03,
        right: screenWidth * 0.03,
        top: screenWidth * 0.03,
      ),
      child: Container(
        height: screenWidth * 0.25,
        decoration: BoxDecoration(
          color: blue1,
          borderRadius: BorderRadius.circular(screenWidth * 0.05),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.015,
                right: screenWidth * 0.013,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.005,
                    height: screenWidth * 0.02,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBBBBBB),
                      borderRadius: BorderRadius.circular(screenWidth * 0.001),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.01,
                  ),
                  Container(
                    width: screenWidth * 0.005,
                    height: screenWidth * 0.02,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(screenWidth * 0.001),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.013,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: screenWidth * 0.186,
                    width: screenWidth * 0.347,
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.006,
                      vertical: screenWidth * 0.008,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(screenWidth * 0.016),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/gopay.png',
                          height: screenWidth * 0.037,
                        ),
                        SizedBox(
                          height: screenWidth * 0.009,
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
                        width: screenWidth * 0.06,
                        height: screenWidth * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.02),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/${icon.icon}.svg',
                          color: blue1,
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.014,
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

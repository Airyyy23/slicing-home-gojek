import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/icons.dart';
import '../theme.dart';

class Gopay extends StatelessWidget {
  const Gopay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final iconSize = screenWidth < 600 ? 24.0 : 32.0;
    double space = screenWidth < 600 ? 7.0 : 14.0;

    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 15,
      ),
      child: Container(
        height: screenWidth < 600 ? 80 : 96,
        decoration: BoxDecoration(
          color: blue1,
          borderRadius: BorderRadius.circular(screenWidth < 600 ? 10 : 15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 2,
                    height: screenWidth < 600 ? 4 : 8,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBBBBBB),
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 2,
                    height: screenWidth < 600 ? 4 : 8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  Container(
                    height: screenWidth < 600 ? 7 : 11,
                    width: screenWidth < 600 ? 90 : 118,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9CCDDB),
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(screenWidth < 600 ? 5 : 8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: screenWidth < 600 ? 65 : 68,
                    width: screenWidth < 600 ? 110 : 127,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(screenWidth < 600 ? 7 : 8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/gopay.png',
                          height: screenWidth < 600 ? 10 : 14,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Rp 12.379',
                          style: semibold14.copyWith(color: dark1),
                        ),
                        Text(
                          'Klik & cek riwayat',
                          style: semibold14.copyWith(
                            color: green1,
                            fontSize: screenWidth < 600 ? 12 : 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            for (var icon in gopayIcons)
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: iconSize,
                      height: iconSize,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(iconSize / 2),
                      ),
                      child: SvgPicture.asset('assets/icons/${icon.icon}.svg',
                          color: blue1),
                    ),
                    SizedBox(
                      height: space,
                    ),
                    Text(
                      icon.title,
                      style: TextStyle(
                        fontSize: screenWidth < 600 ? 14 : 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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

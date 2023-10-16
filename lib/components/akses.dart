import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/theme.dart';
import 'package:gojek/widget/icon_left.dart';

class Akses extends StatelessWidget {
  const Akses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.04, // Responsive padding
        top: screenWidth * 0.043, // Responsive padding
        right: screenWidth * 0.04, // Responsive padding
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Akses cepat',
            style: bold18.copyWith(color: dark1),
          ),
          SizedBox(
            height: screenWidth * 0.027, // Responsive spacing
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  screenWidth * 0.03), // Responsive border radius
              border: Border.all(color: const Color(0xFFE8E8E8)),
            ),
            child: Column(
              children: [
                ...[
                  'Pintu masuk motor, MNC Land',
                  'Pintu keluar motor, MNC Land'
                ].map((text) => Padding(
                      padding: EdgeInsets.all(
                          screenWidth * 0.036), // Responsive padding
                      child: Row(
                        children: [
                          Container(
                            width: screenWidth * 0.08, // Responsive width
                            height: screenWidth * 0.08, // Responsive height
                            decoration: BoxDecoration(
                              color: green2,
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.08),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/goride.svg',
                              color: Colors.white,
                              width: screenWidth * 0.08, // Responsive width
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.048, // Responsive spacing
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Text(
                              text,
                              style: regular14.copyWith(color: dark1),
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.048, // Responsive spacing
                          ),
                          const LeftIcon()
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

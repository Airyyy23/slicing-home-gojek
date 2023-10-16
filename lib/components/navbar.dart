import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/theme.dart';
import '../data/icons.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Container(
      height: 70,
      padding: EdgeInsets.only(top: 10),
      width: screenWidth,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: navbarIcon.map((icon) {
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final iconSize = screenWidth * 0.07; // Responsive icon size
              final textSpacing =
                  screenWidth * 0.015; // Responsive text spacing

              return Column(
                children: [
                  Container(
                    width: iconSize,
                    height: iconSize,
                    child: SvgPicture.asset(
                      'assets/icons/${icon.icon}.svg',
                      width: iconSize,
                      color: dark1,
                    ),
                  ),
                  SizedBox(
                    height: textSpacing,
                  ),
                  Text(icon.title, style: semibold12_5)
                ],
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

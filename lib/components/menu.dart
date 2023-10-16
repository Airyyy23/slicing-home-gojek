import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/data/icons.dart';
import 'package:gojek/theme.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.06, // Responsive padding
        right: screenWidth * 0.06, // Responsive padding
        top: screenWidth * 0.06, // Responsive padding
      ),
      child: SizedBox(
        height: screenWidth * 0.44, // Responsive height
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: screenWidth * 0.027, // Responsive spacing
          physics: NeverScrollableScrollPhysics(),
          children: [
            ...menuIcons.map(
              (icon) => Column(
                children: [
                  Container(
                    width: screenWidth * 0.1, // Responsive width
                    height: screenWidth * 0.1, // Responsive height
                    decoration: BoxDecoration(
                      color: icon.icon == 'goclub' ? Colors.white : icon.color,
                      borderRadius: BorderRadius.circular(
                          screenWidth * 0.05), // Responsive border radius
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/${icon.icon}.svg',
                      color: icon.icon == 'goclub'
                          ? icon.color
                          : icon.icon == 'other'
                              ? dark2
                              : Colors.white,
                      width: screenWidth * 0.06, // Responsive width
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.016, // Responsive spacing
                  ),
                  Text(
                    icon.title,
                    style: regular12_5.copyWith(color: dark2),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

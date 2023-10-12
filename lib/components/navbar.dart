import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/theme.dart';
import '../data/icons.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key); // Added super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 70,
      width: screenWidth,
      color: Colors.white, // Use Colors.white instead of undefined 'white'
      child: Row(
        children: navbarIcon.map((icon) {
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final iconSize = constraints.maxWidth * 0.2; // Use a fraction of maxWidth

              return Column(
                children: [
                  Container(
                    width: iconSize,
                    height: iconSize,
                    child: SvgPicture.asset(
                      'assets/icons/${icon.icon}.svg',
                      color: icon.color,
                      width: iconSize * 0.6,
                    ),
                  ),
                  SizedBox(
                    height: screenWidth < 600 ? 6 : 8,
                  ),
                  Text(
                    icon.title,
                    style: TextStyle(
                      fontSize: screenWidth < 600 ? 12.5 : 16, // Define the font size
                      color: dark2,
                    ),
                  )
                ],
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

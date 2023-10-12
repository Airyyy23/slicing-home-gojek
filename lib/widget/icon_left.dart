import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/theme.dart';

class LeftIcon extends StatelessWidget {
  const LeftIcon({Key? key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/left.svg',
      height: 24,
      color: dark1,
    );
  }
}

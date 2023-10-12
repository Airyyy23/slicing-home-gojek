import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../data/icons.dart';
import '../theme.dart';

class Menus extends StatelessWidget {
  const Menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 32),
      child: SizedBox(
        height: 157,
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
          children: menuIcons.map((icon) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final iconSize = constraints.maxWidth * 0.5;
                return Column(
                  children: [
                    Container(
                      width: iconSize,
                      height: iconSize,
                      decoration: BoxDecoration(
                        color:
                            icon.icon == 'goclub' ? Colors.white : icon.color,
                        borderRadius: BorderRadius.circular(iconSize / 2),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/${icon.icon}.svg',
                        color: icon.icon == 'goclub'
                            ? icon.color
                            : icon.icon == 'other'
                                ? dark2
                                : Colors.white,
                        width: iconSize * 0.6, // Sesuaikan sesuai kebutuhan
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      icon.title,
                      style: regular12_5.copyWith(color: dark2),
                    ),
                  ],
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gojek/theme.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: green1,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              'Beranda',
              style: semibold14.copyWith(color: green1),
            ),
          ),
          ...['Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth < 600 ? 8 : 14,
                    vertical: 12,
                  ),
                  child: Center(
                    child: Text(
                      title,
                      style: semibold14,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../theme.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
        top: screenWidth < 600 ? 21 : 32,
        left: screenWidth < 600 ? 8 : 15,
        right: screenWidth < 600 ? 8 : 15,
      ),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: dark3),
                  borderRadius:
                      BorderRadius.circular(screenWidth < 600 ? 25 : 40)),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth < 600 ? 4 : 8,
                    vertical: screenWidth < 600 ? 8 : 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFFAFAFA),
                  borderRadius:
                      BorderRadius.circular(screenWidth < 600 ? 25 : 40),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: dark1,
                      width: screenWidth < 600 ? 20 : 24,
                      height: screenWidth < 600 ? 20 : 24,
                    ),
                    SizedBox(
                      width: screenWidth < 600 ? 5 : 10,
                    ),
                    Text(
                      'Cari layanan, makanan, & tujuan',
                      style: regular14.copyWith(color: dark3),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth < 600 ? 8 : 15,
          ),
          SizedBox(
            width: screenWidth < 600 ? 35 : 45,
            height: screenWidth < 600 ? 35 : 45,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: dark3),
                      borderRadius: BorderRadius.circular(
                          screenWidth < 600 ? 17.5 : 23.5)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          screenWidth < 600 ? 17.5 : 23.5),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset('assets/images/avatar.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../data/news.dart';
import '../theme.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        //GopayLater
        Padding(
          padding: EdgeInsets.only(
            left: screenWidth < 600 ? 15 : 20,
            right: screenWidth < 600 ? 15 : 20,
            top: screenWidth < 600 ? 16 : 32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/gopaylater.png',
                height: screenWidth < 600 ? 10 : 14,
              ),
              SizedBox(
                height: screenWidth < 600 ? 4 : 8,
              ),
              Text(
                'Lebih hemat pake GoPayLater 🤩',
                style: bold16.copyWith(color: dark1),
              ),
              SizedBox(
                height: screenWidth < 600 ? 4 : 8,
              ),
              Text(
                'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
                style: regular14.copyWith(color: dark2),
              )
            ],
          ),
        ),

        SizedBox(
          height: screenWidth < 600 ? 12 : 24,
        ),

        //News
        ...news.map((item) => Padding(
              padding: EdgeInsets.only(
                bottom: screenWidth < 600 ? 16 : 24,
                left: screenWidth < 600 ? 15 : 16,
                right: screenWidth < 600 ? 15 : 16,
              ),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(screenWidth < 600 ? 10 : 15),
                  border: Border.all(color: dark4),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/${item.image}'),
                    Padding(
                      padding: EdgeInsets.all(screenWidth < 600 ? 12 : 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: bold16.copyWith(color: dark1),
                          ),
                          SizedBox(
                            height: screenWidth < 600 ? 6 : 8,
                          ),
                          Text(
                            item.description,
                            style: regular14.copyWith(color: dark2),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
        SizedBox(
          height: screenWidth < 600 ? 60 : 70,
        )
      ],
    );
  }
}

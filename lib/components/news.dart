import 'package:flutter/material.dart';
import 'package:gojek/data/news.dart';
import 'package:gojek/theme.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;

    return Column(
      children: [
        // GopayLater
        Padding(
          padding: EdgeInsets.only(
            left: mediaQuery.size.width * 0.05,
            right: mediaQuery.size.width * 0.05,
            top: screenHeight * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/gopaylater.png',
                height: screenHeight * 0.02,
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                'Lebih hemat pake GoPayLater 🤩',
                style: bold16.copyWith(color: dark1),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
                style: regular14.copyWith(color: dark2),
              )
            ],
          ),
        ),

        SizedBox(
          height: screenHeight * 0.04,
        ),

        // News
        ...news.map((item) => Padding(
              padding: EdgeInsets.only(
                bottom: screenHeight * 0.03,
                left: mediaQuery.size.width * 0.04,
                right: mediaQuery.size.width * 0.04,
              ),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: dark4),
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/${item.image}'),
                    Padding(
                      padding: EdgeInsets.all(screenHeight * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: bold16.copyWith(color: dark1),
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Text(
                            item.description,
                            style: regular14.copyWith(color: dark2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
        SizedBox(
          height: screenHeight * 0.1,
        ),
      ],
    );
  }
}

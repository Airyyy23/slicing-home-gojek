import 'package:flutter/material.dart';
import 'package:gojek/components/navbar.dart';
import 'package:gojek/theme.dart';

import '../components/akses.dart';
import '../components/goclub.dart';
import '../components/gopay.dart';
import '../components/menu.dart';
import '../components/news.dart';
import '../components/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark5,
        toolbarHeight: 71,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: white, // Warna latar belakang AppBar
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, // Warna bayangan
                  offset: Offset(0, 2), // Posisi bayangan (X, Y)
                  blurRadius: 4.0, // Radius blur bayangan
                  spreadRadius: 2.0, // Radius penyebaran bayangan
                ),
              ],
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Search(),
            ),
          ),
        ),
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gopay(),
              const Menus(),
              const GoClub(),
              const Akses(),
              const News(),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Navbar(),
        )
      ]),
    );
  }
}

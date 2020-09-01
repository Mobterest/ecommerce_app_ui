import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../global/config.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../pages/magdetails.dart';
import '../global/styles.dart';

class MSlider extends StatelessWidget {
  Widget build(context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: CSLIDER_HEIGHT,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: magList
          .map((item) => Container(
                  child: Column(
                children: <Widget>[
                  SizedBox(
                    height: CS_SBOX,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MagDetails(item['image'], item['title'])),
                        );
                      },
                      child: Flexible(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(item['image'],
                            fit: BoxFit.cover, width: CIMAGE_WIDTH),
                      ))),
                  SizedBox(
                    height: CS_SBOX,
                  ),
                  Text(item['title'],
                      style: STYLE_MAG_SLIDER),
                  SizedBox(height: 20),
                  Text(
                    item['date'],
                    style: TextStyle(color: GRAY_PALETTE_1),
                  )
                ],
              )))
          .toList(),
    );
  }
}

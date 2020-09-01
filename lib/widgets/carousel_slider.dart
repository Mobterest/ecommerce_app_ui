import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../global/config.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/constants.dart';
import '../global/styles.dart';

class CSlider extends StatelessWidget {
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
      items: imgList
          .map((item) => Container(
                  child: Column(
                children: <Widget>[
                  Padding(
                      padding: LANDING_PADDING_1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            ZERO + (imgList.indexOf(item) + 1).toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.remove, color: GRAY_PALETTE),
                          Text(
                            ZERO + imgList.length.toString(),
                            style: TextStyle(
                                color: GRAY_PALETTE,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  Flexible(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(item['image'],
                        fit: BoxFit.cover, width: CIMAGE_WIDTH),
                  )),
                  SizedBox(
                    height: CS_SBOX,
                  ),
                  Text(item['title'], style: STYLE_LANDING_TITLE),
                  SizedBox(height: CS_SBOX),
                  Text(item['desc'])
                ],
              )))
          .toList(),
    );
  }
}

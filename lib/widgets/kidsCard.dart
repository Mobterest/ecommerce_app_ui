import 'package:flutter/material.dart';
import '../global/config.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';

class KidsCard extends StatelessWidget {
  Widget build(context) {
    return Container(
      margin: WCARD_PADDING_1,
      color: GRAY_PALETTE,
      height: MediaQuery.of(context).size.height * WCARD_CHEIGHT,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Image.network(
            KIDS['image'],
            fit: BoxFit.cover,
          ),
          Positioned(
              top: WCARD_PTOP,
              right: WCARD_PRIGHT,
              child: Column(children: <Widget>[
                Text(KIDS['title'].toUpperCase(), style: STYLE_WCARD_TITLE),
                Text(
                  KIDS['desc'],
                  style: STYLE_WCARD_DESC,
                )
              ]))
        ],
      ),
    );
  }
}

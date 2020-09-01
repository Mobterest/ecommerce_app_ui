import 'package:flutter/material.dart';
import '../global/config.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';

class MenCard extends StatelessWidget {
  Widget build(context) {
    return Container(
      margin: MCARD_PADDING_1,
      color: GRAY_PALETTE,
      height: MediaQuery.of(context).size.height * MCARD_CHEIGHT,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Container(
              margin: MCARD_PADDING_2,
              width: MediaQuery.of(context).size.width * MCARD_CHEIGHT,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(MEN['title'].toUpperCase(), style: STYLE_MCARD_TITLE),
                    Text(
                      MEN['desc'],
                      style: STYLE_MCARD_DESC,
                    )
                  ])),
          Spacer(),
          Image.network(
            MEN['image'],
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

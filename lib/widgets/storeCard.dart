import 'package:flutter/material.dart';
import '../global/dimensions.dart';
import '../global/config.dart';
import '../global/colors.dart';
import '../global/styles.dart';
import '../global/constants.dart';

class StoreCard extends StatelessWidget {
  Widget build(context) {
    return Container(
      margin: HOME_MARGIN_1,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * HOME_CHEIGHT,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(STORE_IMG),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: Container(
              width: MediaQuery.of(context).size.width * HOME_CWIDTH1,
              child: FlatButton(
                  color: BLACK_PALETTE,
                  child: Text(LSTORE, style: STYLE_LSTORE),
                  onPressed: () {}))),
    );
  }
}

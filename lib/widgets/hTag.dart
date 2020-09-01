import 'package:flutter/material.dart';
import '../global/dimensions.dart';
import '../global/constants.dart';
import '../global/styles.dart';

class HTag extends StatelessWidget {
  Widget build(context) {
    return Padding(
        padding: HOME_PADDING_3,
        child: Text(
          HOME_HTAG,
          style: STYLE_HOME_HTAG,
        ));
  }
}

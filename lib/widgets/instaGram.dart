import 'package:flutter/material.dart';
import '../global/dimensions.dart';
import '../global/config.dart';

class InstaGram extends StatelessWidget {
  Widget build(context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: 0.7,
            children: _buildList()));
  }

  List<Widget> _buildList() {
    List x = <Widget>[];

    for (var i = 0; i < ig.length; i++) {
      x.add(Container(
          padding: EdgeInsets.only(right: 5),
          child: Image.network(ig[i], height: BSELLER_IHEIGHT)));
    }
    return x;
  }
}

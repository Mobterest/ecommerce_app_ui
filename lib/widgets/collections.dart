import 'package:flutter/material.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../global/config.dart';

class Collections extends StatelessWidget {
  Widget build(context) {
    return Container(
        child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: COLLECTION_CARATIO,
            children: _buildList(context)));
  }

  List<Widget> _buildList(BuildContext context) {
    List x = <Widget>[];

    for (var i = 0; i < collections.length; i++) {
      x.add(Container(
        width: MediaQuery.of(context).size.width * COLLECTION_CWIDTH,
        height: COLLECTION_CHEIGHT,
        color: WHITE_PALETTE,
        margin: BSELLER_PADDING_2,
        child: Column(
          children: <Widget>[
            Image.network(collections[i]['image'], height: BSELLER_IHEIGHT),
            SizedBox(height: BSELLER_SBOX),
            Text(collections[i]['title'], style: STYLE_BSELLER_DESC),
            Text(collections[i]['desc'], style: STYLE_BSELLER_PRICE)
          ],
        ),
      ));
    }
    return x;
  }
}

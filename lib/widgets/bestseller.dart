import 'package:e_commerce/global/colors.dart';
import 'package:flutter/material.dart';
import '../global/dimensions.dart';
import '../global/constants.dart';
import '../global/styles.dart';
import '../global/config.dart';

class BestSeller extends StatefulWidget {
  final String title;
  final bool iconVisible;

  BestSeller(this.title, this.iconVisible);
  State<StatefulWidget> createState() => BestSellerState();
}

class BestSellerState extends State<BestSeller> {
  Widget build(context) {
    return Column(children: <Widget>[
      Row(children: <Widget>[
        Padding(
            padding: BSELLER_PADDING_1,
            child: Text(
              widget.title,
              style: STYLE_BSELLER,
            )),
        Spacer(),
        Visibility(
            visible: widget.iconVisible,
            child: IconButton(
                icon: Icon(Icons.keyboard_arrow_right), onPressed: () {}))
      ]),
      Visibility(visible: !widget.iconVisible, child: SizedBox(height: 10)),
      Container(
          margin: BSELLER_MARGIN_1,
          height: MediaQuery.of(context).size.height * BSELLER_CHEIGHT,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _buildList(),
          ))
    ]);
  }

  List<Widget> _buildList() {
    List x = <Widget>[];

    for (var i = 0; i < bestSellers.length; i++) {
      x.add(Container(
        width: BSELLER_CWIDTH,
        color: WHITE_PALETTE,
        margin: BSELLER_PADDING_2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(bestSellers[i]['image'], height: BSELLER_IHEIGHT),
            SizedBox(height: BSELLER_SBOX),
            Text(bestSellers[i]['desc'], style: STYLE_BSELLER_DESC),
            Text(bestSellers[i]['price'], style: STYLE_BSELLER_PRICE)
          ],
        ),
      ));
    }
    return x;
  }
}

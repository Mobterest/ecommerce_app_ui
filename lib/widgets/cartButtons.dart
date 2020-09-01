import 'package:flutter/material.dart';
import '../global/colors.dart';
import '../pages/home.dart';
import '../global/constants.dart';
import '../pages/checkout.dart';
import '../global/dimensions.dart';

class CartButtons extends StatelessWidget {
  Widget build(context) {
    return Container(
        margin: CART_PADDING_3,
        child: Row(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width * CART_BTNS_WIDTH,
                child: RaisedButton.icon(
                    color: WHITE_PALETTE,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    icon: Icon(Icons.keyboard_arrow_left),
                    label: Text(CART_BTN_1))),
            Spacer(),
            Container(
                width: MediaQuery.of(context).size.width * CART_BTNS_WIDTH,
                child: RaisedButton(
                    color: BLACK_PALETTE,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Checkout()),
                      );
                    },
                    child: Text(
                      CART_BTN_2,
                      style: TextStyle(color: WHITE_PALETTE),
                    )))
          ],
        ));
  }
}

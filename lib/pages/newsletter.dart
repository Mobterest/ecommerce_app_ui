import 'package:flutter/material.dart';
import '../global/config.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../global/constants.dart';
import '../global/colors.dart';
import 'signin.dart';

class Newsletter extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
          margin: NLETTER_PADDING_3,
          child: Column(
            children: <Widget>[
              Image.network(NEWSLETTER['img'],
                  fit: BoxFit.cover,
                  width: CIMAGE_WIDTH,
                  height: MediaQuery.of(context).size.height * CIMAGE_HEIGHT),
              SizedBox(
                height: NL_SBOX,
              ),
              Text(NEWSLETTER['title'], style: STYLE_NEWSLETTER_TITLE),
              SizedBox(height: NL_SBOX),
              Text(NEWSLETTER['desc']),
              TextField(
                  decoration: InputDecoration(
                contentPadding: NLETTER_PADDING_1,
                isDense: true,
                hintText: EMAIL,
                prefixIcon: Padding(
                  padding: NLETTER_PADDING_2,
                  child: Icon(Icons.email),
                ),
              ))
            ],
          ),
        )),
        bottomNavigationBar: Builder(
            builder: (context) => Container(
                  height: BNAVIGATION_BAR,
                  child: RaisedButton(
                      color: BLACK_PALETTE,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signin()),
                        );
                      },
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: FOOTER_SBOX,
                        ),
                        Text(NEWSLETTER_BTN, style: STYLE_FOOTER_BTN),
                        Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: FOOTER_ICON_SIZE,
                        ),
                      ])),
                )));
  }
}

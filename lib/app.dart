import 'package:flutter/material.dart';
import './widgets/carousel_slider.dart';
import './global/colors.dart';
import './global/constants.dart';
import './global/dimensions.dart';
import './global/styles.dart';
import './pages/newsletter.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Container(
                  child: Column(
            children: <Widget>[
              CSlider(),
            ],
          ))),
          bottomNavigationBar: Builder(
              builder: (context) => Container(
                    height: BNAVIGATION_BAR,
                    child: RaisedButton(
                        color: BLACK_PALETTE,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Newsletter()),
                          );
                        },
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: LANDING_SBOX,
                          ),
                          Text(LANDING_BTN, style: STYLE_LANDING_BTN),
                          Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: LANDING_ICON_SIZE,
                          ),
                        ])),
                  ))),
      debugShowCheckedModeBanner: false,
    );
  }
}

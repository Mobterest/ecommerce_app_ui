import 'package:flutter/material.dart';
import '../global/config.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../global/constants.dart';
import '../global/colors.dart';
import 'signin.dart';
import '../util/func.dart';

class ForgotPass extends StatefulWidget {
  State<StatefulWidget> createState() => ForgotPassState();
}

class ForgotPassState extends State<ForgotPass> {
  Func f = new Func();
  Widget build(context) {
    return Scaffold(
        backgroundColor: WHITE_PALETTE,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: WHITE_PALETTE,
          iconTheme: IconThemeData(color: BLACK_PALETTE),
          bottomOpacity: 0.0,
        ),
        body: Container(
          margin: FPASS_PADDING_1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(FORGOTPASS['img'],
                  width: FP_CIMAGE_WIDTH,
                  height:
                      MediaQuery.of(context).size.height * FP_CIMAGE_HEIGHT),
              SizedBox(
                height: FP_SBOX,
              ),
              Text(FORGOTPASS['title'], style: STYLE_FPASS_TITLE),
              SizedBox(height: FP_SBOX),
              Text(FORGOTPASS['desc']),
              TextField(
                  decoration: InputDecoration(
                contentPadding: FPASS_PADDING_2,
                isDense: true,
                hintText: EMAIL,
                prefixIcon: Padding(
                  padding: FPASS_PADDING_3,
                  child: Icon(Icons.email),
                ),
              ))
            ],
          ),
        ),
        bottomNavigationBar: Builder(
            builder: (context) =>
                f.singleBottomBar(context, FPASS_BTN, Signin())));
  }
}

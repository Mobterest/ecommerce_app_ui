import '../global/colors.dart';
import 'package:flutter/material.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../global/constants.dart';
import 'forgotpass.dart';
import 'home.dart';

class Signin extends StatefulWidget {
  State<StatefulWidget> createState() => SigninState();
}

class SigninState extends State<Signin> {
  Widget build(context) {
    return DefaultTabController(
      length: TAB_LENGTH,
      child: Scaffold(
          backgroundColor: WHITE_PALETTE,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(APPBAR_HEIGHT),
              child: Padding(
                  padding: SIGNIN_PADDING_1,
                  child: AppBar(
                    automaticallyImplyLeading: false,
                    elevation: 0.0,
                    backgroundColor: WHITE_PALETTE,
                    title: Padding(
                        padding: SIGNIN_PADDING_2,
                        child: Text(
                          APP_NAME,
                          style: STYLE_APPNAME,
                        )),
                    bottom: TabBar(
                      labelColor: BLACK_PALETTE,
                      indicatorColor: BLACK_PALETTE,
                      tabs: [
                        Tab(
                          text: TAB_1,
                        ),
                        Tab(
                          text: TAB_2,
                        ),
                      ],
                    ),
                  ))),
          body: TabBarView(
            children: [
              Padding(
                  padding: SIGNIN_PADDING_3,
                  child: Column(children: <Widget>[
                    Padding(
                        padding: SIGNIN_PADDING_4,
                        child: TextField(
                            decoration: InputDecoration(
                          contentPadding: SIGNIN_PADDING_5,
                          isDense: true,
                          hintText: USER,
                          prefixIcon: Padding(
                            padding: SIGNIN_PADDING_6,
                            child: Icon(Icons.person_outline),
                          ),
                        ))),
                    Padding(
                        padding: SIGNIN_PADDING_7,
                        child: TextField(
                            decoration: InputDecoration(
                          contentPadding: SIGNIN_PADDING_5,
                          isDense: true,
                          hintText: PASS,
                          prefixIcon: Padding(
                            padding: SIGNIN_PADDING_6,
                            child: Icon(Icons.lock_outline),
                          ),
                        ))),
                    Padding(
                        padding: SIGNIN_PADDING_4,
                        child: Container(
                            width: MediaQuery.of(context).size.width *
                                SIGNIN_BTN_CWIDTH,
                            height: SIGNIN_BTN_CHEIGHT,
                            child: RaisedButton(
                                color: BLACK_PALETTE,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  );
                                },
                                child: Text(
                                  TAB_1,
                                  style: STYLE_SIGNIN,
                                )))),
                    Padding(
                        padding: SIGNIN_PADDING_4,
                        child: Container(
                            width: MediaQuery.of(context).size.width *
                                SIGNIN_BTN_CWIDTH,
                            height: SIGNIN_BTN_CHEIGHT,
                            child: RaisedButton(
                                color: FB_PALETTE,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  );
                                },
                                child: Text(
                                  LOG_FB,
                                  style: STYLE_LOG_FB,
                                )))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPass()),
                              );
                            },
                            child: Text(
                              FPASS,
                              style: STYLE_FPASS,
                            )))
                  ])),
              Padding(
                  padding: SIGNIN_PADDING_3,
                  child: Column(children: <Widget>[
                    Padding(
                        padding: SIGNIN_PADDING_4,
                        child: TextField(
                            decoration: InputDecoration(
                          contentPadding: SIGNIN_PADDING_5,
                          isDense: true,
                          hintText: EMAIL,
                          prefixIcon: Padding(
                            padding: SIGNIN_PADDING_6,
                            child: Icon(Icons.email),
                          ),
                        ))),
                    Padding(
                        padding: SIGNIN_PADDING_4,
                        child: TextField(
                            decoration: InputDecoration(
                          contentPadding: SIGNIN_PADDING_5,
                          isDense: true,
                          hintText: USER,
                          prefixIcon: Padding(
                            padding: SIGNIN_PADDING_6,
                            child: Icon(Icons.person_outline),
                          ),
                        ))),
                    Padding(
                        padding: SIGNIN_PADDING_7,
                        child: TextField(
                            decoration: InputDecoration(
                          contentPadding: SIGNIN_PADDING_5,
                          isDense: true,
                          hintText: PASS,
                          prefixIcon: Padding(
                            padding: SIGNIN_PADDING_6,
                            child: Icon(Icons.lock_outline),
                          ),
                        ))),
                    Padding(
                        padding: SIGNIN_PADDING_8,
                        child: Container(
                            width: MediaQuery.of(context).size.width *
                                SIGNIN_BTN_CWIDTH,
                            height: SIGNIN_BTN_CHEIGHT,
                            child: RaisedButton(
                                color: BLACK_PALETTE,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  );
                                },
                                child: Text(
                                  TAB_2,
                                  style: STYLE_SIGNUP,
                                ))))
                  ])),
            ],
          ),
          bottomNavigationBar: Builder(
              builder: (context) => Container(
                    height: BNAVIGATION_BAR,
                    child: RaisedButton(
                        color: BLACK_PALETTE,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: FOOTER_SBOX,
                          ),
                          Text(GUEST, style: STYLE_FOOTER_BTN),
                          Icon(
                            Icons.remove,
                            color: WHITE_PALETTE,
                            size: FOOTER_ICON_SIZE,
                          ),
                        ])),
                  ))),
    );
  }
}

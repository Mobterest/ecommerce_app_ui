import 'package:e_commerce/global/colors.dart';
import 'package:flutter/material.dart';
import '../global/dimensions.dart';
import '../global/constants.dart';
import '../global/styles.dart';
import '../global/config.dart';
import 'home.dart';
import 'productdetail.dart';

class SizeGuide extends StatefulWidget {
  final String image;
  SizeGuide(this.image);
  State<StatefulWidget> createState() => SizeGuideState();
}

class SizeGuideState extends State<SizeGuide> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int index = 0;

  @override
  void initState() {
    super.initState();
  }

  Widget build(context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: WHITE_PALETTE,
            key: _scaffoldKey,
            appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                centerTitle: true,
                elevation: 0.0,
                actions: [
                  IconButton(
                    icon: Icon(Icons.close),
                    color: BLACK_PALETTE,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail(widget.image)),
                      );
                    },
                  )
                ],
                title: Padding(
                    padding: SIGNIN_PADDING_2,
                    child: Text(
                      'Size Guide',
                      style: STYLE_SUBTITLES,
                    )),
                bottom: TabBar(
                  labelColor: BLACK_PALETTE,
                  indicatorColor: BLACK_PALETTE,
                  tabs: [
                    Tab(
                      text: 'INCH',
                    ),
                    Tab(
                      text: 'CM',
                    )
                  ],
                )),
            body: TabBarView(children: [
              Container(
                  margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Height'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Weight'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'RESULT FOR YOUR SIZE',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'XL',
                          style: TextStyle(
                              fontSize: 80, fontWeight: FontWeight.w300),
                        ),
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Height'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Weight'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'RESULT FOR YOUR SIZE',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'X',
                          style: TextStyle(
                              fontSize: 80, fontWeight: FontWeight.w300),
                        ),
                      )
                    ],
                  ))
            ]),
            bottomNavigationBar: Builder(
                builder: (context) => Container(
                      height: BNAVIGATION_BAR,
                      child: RaisedButton(
                          color: BLACK_PALETTE,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetail(widget.image)),
                            );
                          },
                          child: Column(children: <Widget>[
                            SizedBox(
                              height: FOOTER_SBOX,
                            ),
                            Text('FIND MY SIZE', style: STYLE_FOOTER_BTN),
                            Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: FOOTER_ICON_SIZE,
                            ),
                          ])),
                    ))));
  }
}

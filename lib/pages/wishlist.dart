import 'package:e_commerce/global/config.dart';
import 'package:flutter/material.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../widgets/drawer.dart';

class Wishlist extends StatefulWidget {
  State<StatefulWidget> createState() => WishlistState();
}

class WishlistState extends State<Wishlist> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget build(context) {
    return Scaffold(
      backgroundColor: WHITE_PALETTE,
      key: _scaffoldKey,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.short_text, color: BLACK_PALETTE),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          centerTitle: true,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: BLACK_PALETTE,
              onPressed: () {},
            )
          ],
          title: Padding(
              padding: SIGNIN_PADDING_2,
              child: Text(
                'Wishlist',
                style: STYLE_SUBTITLES,
              ))),
      drawer: Drawer(child: DrawerWidget()),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 20),
                color: BLACK_PALETTE,
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Text(
                  '3 items',
                  style: TextStyle(color: WHITE_PALETTE),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(children: <Widget>[
                    Image.asset('assets/dress.jpg', width: 70, height: 100),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Adjustable Strap Jersey Cami Bodycon Dress',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(CURRENCY + '19.99',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18))),
                          RaisedButton(
                            color: BLACK_PALETTE,
                            onPressed: () {},
                            child: Text(
                              'ADD TO CART',
                              style: TextStyle(color: WHITE_PALETTE),
                            ),
                          )
                        ]),
                  ])),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(children: <Widget>[
                    Image.asset('assets/dress.jpg', width: 70, height: 100),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Adjustable Strap Jersey Cami Bodycon Dress',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(CURRENCY + '19.99',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18))),
                          RaisedButton(
                            color: BLACK_PALETTE,
                            onPressed: () {},
                            child: Text(
                              'ADD TO CART',
                              style: TextStyle(color: WHITE_PALETTE),
                            ),
                          )
                        ]),
                  ])),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(children: <Widget>[
                    Image.asset('assets/dress.jpg', width: 70, height: 100),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Adjustable Strap Jersey Cami Bodycon Dress',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(CURRENCY + '19.99',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18))),
                          RaisedButton(
                            color: BLACK_PALETTE,
                            onPressed: () {},
                            child: Text(
                              'ADD TO CART',
                              style: TextStyle(color: WHITE_PALETTE),
                            ),
                          )
                        ]),
                  ])),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(children: <Widget>[
                    Image.asset('assets/dress.jpg', width: 70, height: 100),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Adjustable Strap Jersey Cami Bodycon Dress',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(CURRENCY + '19.99',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18))),
                          RaisedButton(
                            color: BLACK_PALETTE,
                            onPressed: () {},
                            child: Text(
                              'ADD TO CART',
                              style: TextStyle(color: WHITE_PALETTE),
                            ),
                          )
                        ]),
                  ])),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(children: <Widget>[
                    Image.asset('assets/dress.jpg', width: 70, height: 100),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Adjustable Strap Jersey Cami Bodycon Dress',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(CURRENCY + '19.99',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18))),
                          RaisedButton(
                            color: BLACK_PALETTE,
                            onPressed: () {},
                            child: Text(
                              'ADD TO CART',
                              style: TextStyle(color: WHITE_PALETTE),
                            ),
                          )
                        ]),
                  ])),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(children: <Widget>[
                    Image.asset('assets/dress.jpg', width: 70, height: 100),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Adjustable Strap Jersey Cami Bodycon Dress',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(CURRENCY + '19.99',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18))),
                          RaisedButton(
                            color: BLACK_PALETTE,
                            onPressed: () {},
                            child: Text(
                              'ADD TO CART',
                              style: TextStyle(color: WHITE_PALETTE),
                            ),
                          )
                        ]),
                  ])),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(children: <Widget>[
                    Image.asset('assets/dress.jpg', width: 70, height: 100),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Adjustable Strap Jersey Cami Bodycon Dress',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(CURRENCY + '19.99',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18))),
                          RaisedButton(
                            color: BLACK_PALETTE,
                            onPressed: () {},
                            child: Text(
                              'ADD TO CART',
                              style: TextStyle(color: WHITE_PALETTE),
                            ),
                          )
                        ]),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../global/colors.dart';
import '../global/config.dart';
import '../global/dimensions.dart';
import '../global/constants.dart';
import '../global/styles.dart';
import '../pages/collection.dart';
import '../pages/magazine.dart';
import '../pages/deals.dart';
import '../pages/profile.dart';
import '../pages/findastore.dart';
import '../pages/home.dart';

class DrawerWidget extends StatefulWidget {
  State<StatefulWidget> createState() => DrawerWidgetState();
}

class DrawerWidgetState extends State<DrawerWidget> {
  Widget build(context) {
    return Drawer(
        child: Container(
            margin: DRAWER_PADDING_1,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                    child: Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Container(
                      margin: DRAWER_PADDING_2,
                      child: Column(children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()),
                              );
                            },
                            child: Row(children: <Widget>[
                              CircleAvatar(
                                  backgroundImage: NetworkImage(IMG_PROF),
                                  radius: 30,
                                  backgroundColor: BLACK_PALETTE),
                              Container(
                                  margin: DRAWER_PADDING_3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(PROF_NAME.toUpperCase(),
                                          style: STYLE_PROF_NAME),
                                      Text(
                                        PROF_BAL,
                                        style: STYLE_PROF_BAL,
                                      )
                                    ],
                                  )),
                              Spacer(),
                              IconButton(
                                icon: Icon(Icons.keyboard_arrow_right),
                                onPressed: () {},
                                color: GRAY_PALETTE_1,
                              )
                            ])),
                      ])),
                )),
                ListTile(
                  leading: Icon(Icons.search, color: GRAY_PALETTE_1),
                  title: Text(DITEM_S, style: STYLE_DRAWER_ITEM),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  title: Text(DITEM_11),
                  onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
                ListTile(
                  title: Text(DITEM_1),
                  onTap: () {},
                ),
                ExpansionTile(
                  title: Text(DITEM_2, style: STYLE_ETILE),
                  children: <Widget>[
                    Padding(
                        padding: DRAWER_PADDING_4,
                        child: ListTile(
                          title: Text(DITEM_2A, style: STYLE_DRAWER_ITEM),
                          onTap: () {},
                        )),
                    Padding(
                        padding: DRAWER_PADDING_4,
                        child: ListTile(
                          title: Text(DITEM_2B, style: STYLE_DRAWER_ITEM),
                          onTap: () {},
                        )),
                    Padding(
                        padding: DRAWER_PADDING_4,
                        child: ListTile(
                          title: Text(DITEM_2C, style: STYLE_DRAWER_ITEM),
                          onTap: () {},
                        )),
                    Padding(
                        padding: DRAWER_PADDING_4,
                        child: ListTile(
                          title: Text(DITEM_2D, style: STYLE_DRAWER_ITEM),
                          onTap: () {},
                        ))
                  ],
                ),
                ExpansionTile(
                  title: Text(DITEM_3, style: STYLE_ETILE),
                  children: <Widget>[
                    Padding(
                        padding: DRAWER_PADDING_4,
                        child: ListTile(
                          title: Text(DITEM_3A, style: STYLE_DRAWER_ITEM),
                          onTap: () {},
                        )),
                    Padding(
                        padding: DRAWER_PADDING_4,
                        child: ListTile(
                          title: Text(DITEM_3B, style: STYLE_DRAWER_ITEM),
                          onTap: () {},
                        )),
                    Padding(
                        padding: DRAWER_PADDING_4,
                        child: ListTile(
                          title: Text(DITEM_3C, style: STYLE_DRAWER_ITEM),
                          onTap: () {},
                        )),
                    Padding(
                        padding: DRAWER_PADDING_4,
                        child: ListTile(
                          title: Text(DITEM_3D, style: STYLE_DRAWER_ITEM),
                          onTap: () {},
                        ))
                  ],
                ),
                ListTile(
                  title: Text(DITEM_4),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Collection()),
                    );
                  },
                ),
                ListTile(
                  title: Text(DITEM_5),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Deals()),
                    );
                  },
                ),
                ListTile(
                  title: Text(DITEM_6),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FindAStore()),
                    );
                  },
                ),
                ListTile(
                  title: Text(DITEM_7),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Magazine()),
                    );
                  },
                ),
                ListTile(
                  title: Text(DITEM_8),
                  onTap: () {},
                ),
              ],
            )));
  }
}

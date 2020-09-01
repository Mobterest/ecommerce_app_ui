import 'package:flutter/material.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../widgets/drawer.dart';
import '../global/constants.dart';
import '../util/func.dart';

class Collection extends StatefulWidget {
  State<StatefulWidget> createState() => CollectionState();
}

class CollectionState extends State<Collection> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Func f = new Func();
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
                  COLLEC,
                  style: STYLE_SUBTITLES,
                ))),
        drawer: Drawer(child: DrawerWidget()),
        body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: f.buildCollection(context),
                ))));
  }
}

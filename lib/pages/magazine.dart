import 'package:flutter/material.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../widgets/drawer.dart';
import '../widgets/mag_slider.dart';
import '../util/func.dart';
import '../global/config.dart';
import '../global/constants.dart';

class Magazine extends StatefulWidget {
  State<StatefulWidget> createState() => MagazineState();
}

class MagazineState extends State<Magazine> {
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
                  FMAG_TITLE,
                  style: STYLE_SUBTITLES,
                ))),
        drawer: Drawer(child: DrawerWidget()),
        body: SingleChildScrollView(child: MSlider()),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            f.navigateToScreens(index, context);
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: f.bottomBar(nullIndex),
        ));
  }
}

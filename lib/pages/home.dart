import 'package:e_commerce/global/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../global/dimensions.dart';
import '../global/constants.dart';
import '../global/styles.dart';
import '../global/config.dart';
import '../widgets/bestseller.dart';
import '../widgets/womenCard.dart';
import '../widgets/menCard.dart';
import '../widgets/kidsCard.dart';
import '../widgets/collections.dart';
import '../widgets/instaGram.dart';
import '../widgets/hTag.dart';
import '../widgets/storeCard.dart';
import '../util/func.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Func f = new Func();

  @override
  void initState() {
    super.initState();
  }

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
            bottomOpacity: 0.0,
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
                  APP_NAME,
                  style: STYLE_SUBTITLES,
                ))),
        drawer: Drawer(child: DrawerWidget()),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  child: Row(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width * HOME_CWIDTH,
                      child: Padding(
                          padding: HOME_PADDING_1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(WELTEXT_1, style: STYLE_HOME_WELTEXT_1),
                              Text(WELTEXT_2, style: STYLE_HOME_WELTEXT_2),
                              Padding(
                                  padding: HOME_PADDING_2,
                                  child: Text(
                                    WELTEXT_3,
                                    style: STYLE_HOME_WELTEXT_3,
                                  ))
                            ],
                          ))),
                  Container(
                      width: MediaQuery.of(context).size.width * HOME_CWIDTH_1,
                      child: Image.network(
                        HOME_IMAGE,
                        height: MediaQuery.of(context).size.height *
                            HOME_IMAGE_HEIGHT,
                      )),
                ],
              )),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: HOME_MARGIN_1,
                child: FlatButton(
                    color: BLACK_PALETTE,
                    onPressed: () {},
                    child: Text(
                      SHIP,
                      style: STYLE_SHIP,
                    )),
              ),
              WomenCard(),
              MenCard(),
              BestSeller(BSELLER, true),
              KidsCard(),
              Collections(),
              StoreCard(),
              HTag(),
              InstaGram()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: homeIndex,
          onTap: (int index) {
            f.navigateToScreens(index, context);
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: f.bottomBar(homeIndex),
        ));
  }
}

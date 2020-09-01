import 'package:e_commerce/global/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../global/dimensions.dart';
import '../global/constants.dart';
import '../global/styles.dart';
import '../global/config.dart';
import '../util/func.dart';

class Categories extends StatefulWidget {
  State<StatefulWidget> createState() => CategoriesState();
}

class CategoriesState extends State<Categories> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Func f = new Func();

  @override
  void initState() {
    super.initState();
  }

  Widget build(context) {
    return DefaultTabController(
        length: CTAB_LENGTH,
        child: Scaffold(
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
                      CAT,
                      style: STYLE_SUBTITLES,
                    )),
                bottom: TabBar(
                  labelColor: BLACK_PALETTE,
                  indicatorColor: BLACK_PALETTE,
                  tabs: [
                    Tab(
                      text: DITEM_2,
                    ),
                    Tab(
                      text: DITEM_3,
                    ),
                    Tab(
                      text: TAB_3,
                    ),
                  ],
                )),
            drawer: Drawer(child: DrawerWidget()),
            body: TabBarView(children: [
              Container(
                  margin: CART_TABVIEW,
                  child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      physics: NeverScrollableScrollPhysics(),
                      childAspectRatio: 0.7,
                      children: f.buildMenList(context))),
              Container(
                  margin: CART_TABVIEW,
                  child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      physics: NeverScrollableScrollPhysics(),
                      childAspectRatio: 0.7,
                      children: f.buildWomenList(context))),
              Container(
                  margin: CART_TABVIEW,
                  child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      physics: NeverScrollableScrollPhysics(),
                      childAspectRatio: 0.7,
                      children: f.buildKidsList(context)))
            ]),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: catIndex,
              onTap: (int index) {
                f.navigateToScreens(index, context);
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: f.bottomBar(catIndex),
            )));
  }
}

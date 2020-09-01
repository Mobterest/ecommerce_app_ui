import 'package:flutter/material.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../widgets/drawer.dart';
import '../global/constants.dart';
import '../global/config.dart';
import 'wishlist.dart';
import 'trackOrder.dart';
import 'categories.dart';
import 'cart.dart';
import 'profilesettings.dart';

class Profile extends StatefulWidget {
  State<StatefulWidget> createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int index = 3;

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
                icon: Icon(Icons.settings),
                color: BLACK_PALETTE,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileSettings()),
                  );
                },
              )
            ],
            title: Padding(
                padding: SIGNIN_PADDING_2,
                child: Text(
                  'Profile',
                  style: STYLE_SUBTITLES,
                ))),
        drawer: Drawer(child: DrawerWidget()),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                            backgroundImage: NetworkImage(IMG_PROF),
                            radius: 30,
                            backgroundColor: BLACK_PALETTE),
                        Container(
                            margin: DRAWER_PADDING_3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(PROF_NAME.toUpperCase(),
                                    style: STYLE_PROF_NAME),
                                Text(
                                  PROF_BAL,
                                  style: STYLE_PROF_BAL,
                                )
                              ],
                            ))
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Divider(height: 10)),
              ListTile(
                leading: Icon(Icons.notifications_none, color: GRAY_PALETTE_1),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: GRAY_PALETTE_1),
                title: Text('Notification', style: STYLE_DRAWER_ITEM),
                onTap: () {},
              ),
              Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Divider(height: 10)),
              ListTile(
                leading: Icon(Icons.library_books, color: GRAY_PALETTE_1),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: GRAY_PALETTE_1),
                title: Text('My Order', style: STYLE_DRAWER_ITEM),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TrackOrder()),
                  );
                },
              ),
              Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Divider(height: 10)),
              ListTile(
                leading: Icon(Icons.pin_drop, color: GRAY_PALETTE_1),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: GRAY_PALETTE_1),
                title: Text('Address', style: STYLE_DRAWER_ITEM),
                onTap: () {},
              ),
              Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Divider(height: 10)),
              ListTile(
                leading:
                    Icon(Icons.account_balance_wallet, color: GRAY_PALETTE_1),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: GRAY_PALETTE_1),
                title: Text('Payment', style: STYLE_DRAWER_ITEM),
                onTap: () {},
              ),
              Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Divider(height: 10)),
              ListTile(
                leading: Icon(Icons.favorite_border, color: GRAY_PALETTE_1),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: GRAY_PALETTE_1),
                title: Text('Wish List', style: STYLE_DRAWER_ITEM),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Wishlist()),
                  );
                },
              ),
              Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Divider(height: 10)),
              ListTile(
                leading:
                    Icon(Icons.subdirectory_arrow_right, color: GRAY_PALETTE_1),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: GRAY_PALETTE_1),
                title: Text('Log Out', style: STYLE_DRAWER_ITEM),
                onTap: () {},
              ),
              Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Divider(height: 10)),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (int index) {
            setState(() {
              this.index = index;
            });
            _navigateToScreens(index);
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 20),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storage, size: 20),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket, size: 20),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: BLACK_PALETTE, size: 20),
              title: SizedBox.shrink(),
            ),
          ],
        ));
  }

  _navigateToScreens(int index) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Categories()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Cart()),
      );
    }
  }
}

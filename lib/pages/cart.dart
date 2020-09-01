import 'package:flutter/material.dart';
import '../global/config.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../widgets/drawer.dart';
import '../global/constants.dart';
import '../global/styles.dart';
import '../util/func.dart';
import '../widgets/cartButtons.dart';

class Cart extends StatefulWidget {
  State<StatefulWidget> createState() => CartState();
}

class CartState extends State<Cart> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Func f = new Func();
  Widget build(context) {
    return Scaffold(
        backgroundColor: WHITE_PALETTE,
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: BLACK_PALETTE,
          leading: IconButton(
            icon: Icon(Icons.short_text, color: WHITE_PALETTE),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          centerTitle: true,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: WHITE_PALETTE,
              onPressed: () {},
            )
          ],
          title: Padding(
              padding: SIGNIN_PADDING_2,
              child: Text(
                CART_TITLE,
                style: STYLE_CART_TITLE,
              )),
        ),
        drawer: Drawer(child: DrawerWidget()),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  color: BLACK_PALETTE,
                  height: MediaQuery.of(context).size.height * CART_CHEIGHT,
                  width: MediaQuery.of(context).size.width,
                  child: Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        CART_DESC,
                        style: STYLE_CART_DESC,
                      ),
                      Padding(
                          padding: CART_PADDING_1,
                          child: Text.rich(TextSpan(
                            children: <InlineSpan>[
                              TextSpan(
                                  text: CART_DETAIL_1,
                                  style: STYLE_CART_DETAIL_1),
                              TextSpan(
                                  text: CURRENCY + CART_DETAIL_2,
                                  style: STYLE_CART_DETAIL_2),
                            ],
                          )))
                    ],
                  ))),
              Column(children: f.buildCart()),
              Container(
                  margin: CART_PADDING_2,
                  child: Row(
                    children: <Widget>[
                      Text(
                        CART_PRICETITLE_1,
                        style: STYLE_CART_PTITLE,
                      ),
                      Spacer(),
                      Text(CURRENCY + CART_PRICEVALUE_1,
                          style: STYLE_CART_PTITLE),
                    ],
                  )),
              Container(
                  margin: CART_PADDING_2,
                  child: Row(
                    children: <Widget>[
                      Text(
                        CART_PRICETITLE_2,
                        style: STYLE_CART_PTITLE,
                      ),
                      Spacer(),
                      Text(CURRENCY + CART_PRICEVALUE_2,
                          style: STYLE_CART_PTITLE),
                    ],
                  )),
              Container(
                  margin: CART_PADDING_4,
                  child: Row(
                    children: <Widget>[
                      Text(
                        CART_T,
                        style: STYLE_CART_T,
                      ),
                      Spacer(),
                      Text(CURRENCY + CART_T_V, style: STYLE_CART_T),
                    ],
                  )),
              CartButtons(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: cartIndex,
          onTap: (int index) {
            f.navigateToScreens(index, context);
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: f.bottomBar(cartIndex),
        ));
  }
}

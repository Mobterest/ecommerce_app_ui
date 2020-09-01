import 'package:flutter/material.dart';
import '../global/colors.dart';
import '../pages/categories.dart';
import '../pages/home.dart';
import '../pages/profile.dart';
import '../pages/cart.dart';
import '../global/config.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../pages/products.dart';

class Func {
  Func();

  singleBottomBar(BuildContext context, String title, locale) {
    return Container(
      height: BNAVIGATION_BAR,
      child: RaisedButton(
          color: BLACK_PALETTE,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => locale),
            );
          },
          child: Column(children: <Widget>[
            SizedBox(
              height: FOOTER_SBOX,
            ),
            Text(title, style: STYLE_FOOTER_BTN),
            Icon(
              Icons.remove,
              color: Colors.white,
              size: FOOTER_ICON_SIZE,
            ),
          ])),
    );
  }

  bottomBar(int index) {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home,
            size: 20, color: index == 0 ? BLACK_PALETTE : GRAY_PALETTE_1),
        title: SizedBox.shrink(),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.storage,
            size: 20, color: index == 1 ? BLACK_PALETTE : GRAY_PALETTE_1),
        title: SizedBox.shrink(),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_basket,
            size: 20, color: index == 2 ? BLACK_PALETTE : GRAY_PALETTE_1),
        title: SizedBox.shrink(),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person,
            size: 20, color: index == 3 ? BLACK_PALETTE : GRAY_PALETTE_1),
        title: SizedBox.shrink(),
      ),
    ];
  }

  navigateToScreens(int index, BuildContext context) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Categories()),
      );
    } else if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Profile()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Cart()),
      );
    }
  }

  List<Widget> buildCart() {
    List x = <Widget>[];

    for (var i = 0; i < cart.length; i++) {
      x.add(Container(
          child: ListTile(
        leading: Container(child: Image.network(cart[i]['image'])),
        title: Text(cart[i]['title']),
        subtitle: Text(CURRENCY + cart[i]['price']),
        trailing: IconButton(
            icon: Icon(
              Icons.close,
              color: GRAY_PALETTE,
            ),
            onPressed: () {}),
        isThreeLine: true,
      )));
    }

    return x;
  }

  List<Widget> buildStores(BuildContext context) {
    List x = <Widget>[];

    for (var i = 0; i < 5; i++) {
      x.add(Card(
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      STORE_IMG,
                      fit: BoxFit.cover,
                    ))),
            SizedBox(
              height: 5,
            ),
            Text(
              'ABC Store',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text('98 Almond Suite 100',
                style: TextStyle(
                  fontSize: 12,
                  color: GRAY_PALETTE_1,
                )),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ));
    }
    return x;
  }

  List<Widget> buildMenList(BuildContext context) {
    List x = <Widget>[];

    for (var i = 0; i < men.length; i++) {
      x.add(Container(
        margin: HOME_MARGIN_1,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * HOME_CHEIGHT,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(men[i]['image']),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width * HOME_CWIDTH1,
                margin: EdgeInsets.only(left: 10, right: 10),
                child: FlatButton(
                    color: BLACK_PALETTE,
                    child: Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          men[i]['title'] + '\n' + men[i]['desc'],
                          style: STYLE_LSTORE,
                          textAlign: TextAlign.center,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Products()),
                      );
                    }))),
      ));
    }

    return x;
  }

  List<Widget> buildWomenList(BuildContext context) {
    List x = <Widget>[];

    for (var i = 0; i < women.length; i++) {
      x.add(Container(
        margin: HOME_MARGIN_1,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * HOME_CHEIGHT,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(women[i]['image']),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width * HOME_CWIDTH1,
                margin: EdgeInsets.only(left: 10, right: 10),
                child: FlatButton(
                    color: BLACK_PALETTE,
                    child: Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          women[i]['title'] + '\n' + women[i]['desc'],
                          style: STYLE_LSTORE,
                          textAlign: TextAlign.center,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Products()),
                      );
                    }))),
      ));
    }

    return x;
  }

  List<Widget> buildKidsList(BuildContext context) {
    List x = <Widget>[];

    for (var i = 0; i < kids.length; i++) {
      x.add(Container(
        margin: HOME_MARGIN_1,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * HOME_CHEIGHT,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(kids[i]['image']),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width * HOME_CWIDTH1,
                margin: EdgeInsets.only(left: 10, right: 10),
                child: FlatButton(
                    color: BLACK_PALETTE,
                    child: Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          kids[i]['title'] + '\n' + kids[i]['desc'],
                          style: STYLE_LSTORE,
                          textAlign: TextAlign.center,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Products()),
                      );
                    }))),
      ));
    }

    return x;
  }

  List<Widget> buildCard() {
    List x = <Widget>[];

    for (var i = 0; i < 3; i++) {
      x.add(Container(
          width: BSELLER_CWIDTH,
          //color: WHITE_PALETTE,
          margin: EdgeInsets.only(left: 5, top: 10, bottom: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Icon(Icons.credit_card), Text('Credit Card')],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: WHITE_PALETTE,
            boxShadow: [
              BoxShadow(color: GRAY_PALETTE_1, spreadRadius: 1),
            ],
          )));
    }
    return x;
  }

  List<Widget> buildCollection(BuildContext context) {
    List x = <Widget>[];

    for (var i = 0; i < collectionSlide.length; i++) {
      x.add(Container(
        width: MediaQuery.of(context).size.width,
        color: WHITE_PALETTE,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Image.network(bestSellers[i]['image'],
                height: MediaQuery.of(context).size.height * 0.6,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Collection',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 20),
            Text(
              'LENGTH AUTUMN DRESSES',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Text(
              '244 items',
              style: TextStyle(color: GRAY_PALETTE_1),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () {},
              child: Text(
                'SEE MORE',
                style: TextStyle(color: WHITE_PALETTE),
              ),
              color: BLACK_PALETTE,
            )
          ],
        ),
      ));
    }
    return x;
  }

  List<Widget> buildDeals(BuildContext context) {
    List x = <Widget>[];

    for (var i = 0; i < 5; i++) {
      x.add(Card(
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1496747611176-843222e1e57c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80',
                      fit: BoxFit.cover,
                    ))),
            RaisedButton(
              color: BLACK_PALETTE,
              onPressed: () {},
              child: Text('-30%', style: TextStyle(color: WHITE_PALETTE)),
            ),
            Text(
              'New Store Sale Off 30%',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Out Date: 05-07-2017',
                style: TextStyle(
                  fontSize: 12,
                  color: GRAY_PALETTE_1,
                )),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ));
    }
    return x;
  }

  List buildDropList() {
    List<DropdownMenuItem<int>> x = [];

    for (var i = 0; i < months.length; i++) {
      x.add(DropdownMenuItem(
        child: Text(months[i]),
        value: i + 1,
      ));
    }

    return x;
  }

  List buildCatList() {
    List<DropdownMenuItem<int>> x = [];

    for (var i = 0; i < cats.length; i++) {
      x.add(DropdownMenuItem(
        child: Text(
          cats[i],
          style: TextStyle(color: GRAY_PALETTE_1),
        ),
        value: i + 1,
      ));
    }

    return x;
  }
}

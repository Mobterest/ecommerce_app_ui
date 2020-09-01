import 'package:flutter/material.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../global/config.dart';
import '../widgets/bestseller.dart';
import 'products.dart';
import 'sizeguide.dart';
import 'videoplayer.dart';
import 'reviewers.dart';

class ProductDetail extends StatefulWidget {
  final String image;

  ProductDetail(this.image);
  State<StatefulWidget> createState() => ProductDetailState();
}

class ProductDetailState extends State<ProductDetail> {
  int _value = 1;
  int _value1 = 1;
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: BLACK_PALETTE),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Products()),
              );
            },
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: NetworkImage(widget.image),
                          fit: BoxFit.fill,
                        )))),
                Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                        color: GRAY_PALETTE,
                        width: 1.0,
                      )),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(
                              color: GRAY_PALETTE,
                              width: 1.0,
                            )),
                          ),
                          child: IconButton(
                            alignment: Alignment.centerLeft,
                            icon: Icon(Icons.favorite),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(
                              color: GRAY_PALETTE,
                              width: 1.0,
                            )),
                          ),
                          child: IconButton(
                            alignment: Alignment.centerLeft,
                            icon: Icon(Icons.play_circle_outline),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoPlayer()),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: IconButton(
                            alignment: Alignment.centerLeft,
                            icon: Icon(Icons.file_upload),
                            onPressed: () {},
                          ),
                        )
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 20.0, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text('Mini Cami Skater Dress in Rib',
                            style: TextStyle(fontSize: 16)),
                        Spacer(),
                        Text(
                          CURRENCY + '19.99',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(right: 10.0, left: 10.0),
                    child: Divider(
                      height: 10.0,
                      color: GRAY_PALETTE,
                    )),
                Container(
                    margin: EdgeInsets.only(right: 10.0, left: 10.0),
                    child: Row(children: <Widget>[
                      Expanded(
                          child: DropdownButton(
                              isExpanded: true,
                              iconEnabledColor: GRAY_PALETTE_1,
                              value: _value,
                              items: [
                                DropdownMenuItem(
                                  child: ClipOval(
                                      child: Container(
                                    color: BLACK_PALETTE,
                                    height: 20.0,
                                    width: 20.0,
                                  )),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: ClipOval(
                                      child: Container(
                                    color: BURGUNDY,
                                    height: 20.0,
                                    width: 20.0,
                                  )),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: ClipOval(
                                      child: Container(
                                    color: BLUE,
                                    height: 20.0,
                                    width: 20.0,
                                  )),
                                  value: 3,
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              })),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: DropdownButton(
                              isExpanded: true,
                              iconEnabledColor: GRAY_PALETTE_1,
                              value: _value1,
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    "SIZE",
                                    style: TextStyle(color: GRAY_PALETTE_1),
                                  ),
                                  value: 1,
                                )
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _value1 = value;
                                });
                              }))
                    ])),
                Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Divider(
                      height: 10.0,
                      color: GRAY_PALETTE_1,
                    )),
                ListTile(
                  trailing: Icon(Icons.keyboard_arrow_right),
                  title: Text('Information Details'),
                  onTap: () {},
                ),
                ListTile(
                  trailing: Icon(Icons.keyboard_arrow_right),
                  title: Text('Reviewers'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Reviewers(widget.image)),
                    );
                  },
                ),
                ListTile(
                  trailing: Icon(Icons.keyboard_arrow_right),
                  title: Text('Size Guide'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SizeGuide(widget.image)),
                    );
                  },
                ),
                SizedBox(height: 10),
                BestSeller('YOU MAY ALSO LIKE THIS', false)
              ],
            ),
          ),
        ),
        bottomNavigationBar: Builder(
            builder: (context) => Container(
                  height: BNAVIGATION_BAR,
                  child: RaisedButton(
                      color: BLACK_PALETTE,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Products()),
                        );
                      },
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: FOOTER_SBOX,
                        ),
                        Text('ADD TO CART', style: STYLE_FOOTER_BTN),
                        Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: FOOTER_ICON_SIZE,
                        ),
                      ])),
                )));
  }
}

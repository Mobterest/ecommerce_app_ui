import 'package:flutter/material.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../global/config.dart';
import 'products.dart';
import '../global/constants.dart';
import '../util/func.dart';

class Filter extends StatefulWidget {
  State<StatefulWidget> createState() => FilterState();
}

class FilterState extends State<Filter> {
  RangeValues _dollarsRange = RangeValues(15, 99);
  int _value = 1;
  int _color = 0;
  int _brand = 0;
  Func f = new Func();

  @override
  void initState() {
    super.initState();
  }

  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          bottomOpacity: 0.0,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: Icon(Icons.close),
              color: BLACK_PALETTE,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Products()),
                );
              },
            )
          ],
          title: Padding(
              padding: SIGNIN_PADDING_2,
              child: Text(
                FLTR,
                style: STYLE_SUBTITLES,
              )),
        ),
        body: SingleChildScrollView(
          child: Container(
              margin: FILTER_PADDING_1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(R_PRICE, style: STYLE_R_PRICE),
                  Container(
                      margin: FILTER_PADDING_2,
                      child: RangeSlider(
                        values: _dollarsRange,
                        min: 0.0,
                        max: 130.0,
                        divisions: 5,
                        labels: RangeLabels(
                            '${_dollarsRange.start}', '${_dollarsRange.end}'),
                        inactiveColor: Colors.grey,
                        activeColor: Colors.black,
                        onChanged: (RangeValues newValues) {
                          setState(() {
                            _dollarsRange = newValues;
                          });
                        },
                      )),
                  Container(
                      margin: FILTER_PADDING_3,
                      child: Row(children: <Widget>[
                        Text(CURRENCY + '${_dollarsRange.start}',
                            style: TextStyle(color: GRAY_PALETTE_1)),
                        Spacer(),
                        Text(CURRENCY + '${_dollarsRange.end}',
                            style: TextStyle(color: GRAY_PALETTE_1)),
                      ])),
                  Padding(
                      padding: FILTER_PADDING_4,
                      child: Text(CATS, style: STYLE_CATS)),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: DropdownButton(
                          isExpanded: true,
                          iconEnabledColor: GRAY_PALETTE_1,
                          value: _value,
                          items: f.buildCatList(),
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          })),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(CLR, style: STYLE_CLR)),
                  Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                              (_color == 1)
                                  ? Icons.radio_button_checked
                                  : Icons.lens,
                              color: BLACK_PALETTE,
                              size: 30),
                          onPressed: () {
                            setState(() {
                              _color = 1;
                            });
                          }),
                      IconButton(
                          icon: Icon(
                              (_color == 2)
                                  ? Icons.radio_button_checked
                                  : Icons.lens,
                              color: GRAY_PALETTE,
                              size: 30),
                          onPressed: () {
                            setState(() {
                              _color = 2;
                            });
                          }),
                      IconButton(
                          icon: Icon(
                              (_color == 3)
                                  ? Icons.radio_button_checked
                                  : Icons.lens,
                              color: BURGUNDY,
                              size: 30),
                          onPressed: () {
                            setState(() {
                              _color = 3;
                            });
                          }),
                      IconButton(
                          icon: Icon(
                              (_color == 4)
                                  ? Icons.radio_button_checked
                                  : Icons.lens,
                              color: GRAY_PALETTE_1,
                              size: 30),
                          onPressed: () {
                            setState(() {
                              _color = 4;
                            });
                          }),
                      IconButton(
                          icon: Icon(
                              (_color == 5)
                                  ? Icons.radio_button_checked
                                  : Icons.lens,
                              color: ORANGE,
                              size: 30),
                          onPressed: () {
                            setState(() {
                              _color = 5;
                            });
                          }),
                      IconButton(
                          icon: Icon(
                              (_color == 6)
                                  ? Icons.radio_button_checked
                                  : Icons.lens,
                              color: BLUE,
                              size: 30),
                          onPressed: () {
                            setState(() {
                              _color = 6;
                            });
                          })
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('BRAND',
                          style: TextStyle(fontWeight: FontWeight.w500))),
                  ListTile(
                    title: Text(
                      'Adidas',
                      style: TextStyle(
                          color:
                              (_brand == 1) ? BLACK_PALETTE : GRAY_PALETTE_1),
                    ),
                    trailing: Visibility(
                        visible: (_brand == 1), child: Icon(Icons.check)),
                    onTap: () {
                      setState(() {
                        _brand = 0;
                        _brand = _brand + 1;
                      });
                    },
                  ),
                  ListTile(
                    title: Text('Puma',
                        style: TextStyle(
                            color: (_brand == 2)
                                ? BLACK_PALETTE
                                : GRAY_PALETTE_1)),
                    trailing: Visibility(
                        visible: (_brand == 2), child: Icon(Icons.check)),
                    onTap: () {
                      setState(() {
                        _brand = 0;
                        _brand = _brand + 2;
                      });
                    },
                  ),
                  ListTile(
                    title: Text('Nike',
                        style: TextStyle(
                            color: (_brand == 3)
                                ? BLACK_PALETTE
                                : GRAY_PALETTE_1)),
                    trailing: Visibility(
                        visible: (_brand == 3), child: Icon(Icons.check)),
                    onTap: () {
                      setState(() {
                        _brand = 0;
                        _brand = _brand + 3;
                      });
                    },
                  ),
                  ListTile(
                    title: Text('Elise',
                        style: TextStyle(
                            color: (_brand == 4)
                                ? BLACK_PALETTE
                                : GRAY_PALETTE_1)),
                    trailing: Visibility(
                        visible: (_brand == 4), child: Icon(Icons.check)),
                    onTap: () {
                      setState(() {
                        _brand = 4;
                      });
                    },
                  ),
                  ListTile(
                    title: Text('Mango',
                        style: TextStyle(
                            color: (_brand == 5)
                                ? BLACK_PALETTE
                                : GRAY_PALETTE_1)),
                    trailing: Visibility(
                        visible: (_brand == 5), child: Icon(Icons.check)),
                    onTap: () {
                      setState(() {
                        _brand = 5;
                      });
                    },
                  ),
                  ListTile(
                    title: Text('Bitis',
                        style: TextStyle(
                            color: (_brand == 6)
                                ? BLACK_PALETTE
                                : GRAY_PALETTE_1)),
                    trailing: Visibility(
                        visible: (_brand == 6), child: Icon(Icons.check)),
                    onTap: () {
                      setState(() {
                        _brand = 6;
                      });
                    },
                  ),
                  ListTile(
                    title: Text('ASOS',
                        style: TextStyle(
                            color: (_brand == 7)
                                ? BLACK_PALETTE
                                : GRAY_PALETTE_1)),
                    trailing: Visibility(
                        visible: (_brand == 7), child: Icon(Icons.check)),
                    onTap: () {
                      setState(() {
                        _brand = 7;
                      });
                    },
                  ),
                  ListTile(
                    title: Text('Robin',
                        style: TextStyle(
                            color: (_brand == 8)
                                ? BLACK_PALETTE
                                : GRAY_PALETTE_1)),
                    trailing: Visibility(
                        visible: (_brand == 8), child: Icon(Icons.check)),
                    onTap: () {
                      setState(() {
                        _brand = 8;
                      });
                    },
                  ),
                ],
              )),
        ),
        bottomNavigationBar: Builder(
            builder: (context) =>
                f.singleBottomBar(context, 'APPLY', Products())));
  }
}

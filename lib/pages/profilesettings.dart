import 'package:flutter/material.dart';
import '../global/config.dart';
import '../global/colors.dart';
import '../global/constants.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import 'profile.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class ProfileSettings extends StatefulWidget {
  State<StatefulWidget> createState() => ProfileSettingsState();
}

class ProfileSettingsState extends State<ProfileSettings> {
  TextEditingController dobController = TextEditingController();
  int _value = 1;

  @override
  void initState() {
    super.initState();
  }

  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: BLACK_PALETTE),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          title: Padding(
              padding: SIGNIN_PADDING_2,
              child: Text(
                'Profile Settings',
                style: TextStyle(
                    color: BLACK_PALETTE,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(left: 30, top: 10),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                        child: Container(
                            alignment: Alignment.bottomRight,
                            child: ClipOval(
                                child: Container(
                                    width: 23,
                                    height: 23,
                                    color: BLACK_PALETTE,
                                    child: Icon(
                                      Icons.add_a_photo,
                                      color: GRAY_PALETTE_1,
                                      size: 16,
                                    )))),
                        backgroundImage: NetworkImage(IMG_PROF),
                        radius: 40,
                        backgroundColor: BLACK_PALETTE),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Full Name'),
                    ),
                    TextFormField(
                      onTap: () {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(2018, 3, 5),
                            maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                          dobController.text =
                              DateFormat('dd-MM-yyyy').format(date);
                        }, onConfirm: (date) {
                          dobController.text =
                              DateFormat('dd-MM-yyyy').format(date);
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      controller: dobController,
                      decoration: InputDecoration(labelText: 'Birthday'),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        child: DropdownButton(
                            isExpanded: true,
                            iconEnabledColor: GRAY_PALETTE_1,
                            value: _value,
                            items: [
                              DropdownMenuItem(
                                child: Text('Gender'),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text('Female'),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text('Male'),
                                value: 3,
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            })),
                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(labelText: 'Bio'),
                    ),
                  ],
                ))),
        bottomNavigationBar: Builder(
            builder: (context) => Container(
                  height: BNAVIGATION_BAR,
                  child: RaisedButton(
                      color: BLACK_PALETTE,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: FOOTER_SBOX,
                        ),
                        Text('SUBMIT', style: STYLE_FOOTER_BTN),
                        Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: FOOTER_ICON_SIZE,
                        ),
                      ])),
                )));
  }
}

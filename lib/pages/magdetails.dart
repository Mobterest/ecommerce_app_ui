import 'package:flutter/material.dart';
import 'magazine.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/constants.dart';
import '../global/config.dart';
import '../global/styles.dart';

class MagDetails extends StatefulWidget {
  final String image;
  final String title;
  MagDetails(this.image, this.title);
  State<StatefulWidget> createState() => MagDetailState();
}

class MagDetailState extends State<MagDetails> {
  Widget build(context) {
    return Scaffold(
      backgroundColor: WHITE_PALETTE,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: BLACK_PALETTE),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Magazine()),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.share, color: BLACK_PALETTE),
            onPressed: () {},
          )
        ],
        backgroundColor: WHITE_PALETTE,
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
              widget.image,
              width: CIMAGE_WIDTH,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  widget.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )),
            SizedBox(height: 30),
            Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Text(
                  magContent,
                  style: TextStyle(fontSize: 16, wordSpacing: 5),
                )),
            Card(
              child: ListTile(
                title: Text('Christie Doe'),
                subtitle: Text('Writer @ Magazine'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

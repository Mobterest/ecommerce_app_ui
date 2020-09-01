import 'package:flutter/material.dart';
import '../global/colors.dart';
import 'productdetail.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../global/config.dart';

class Reviewers extends StatefulWidget {
  final String image;

  Reviewers(this.image);
  State<StatefulWidget> createState() => ReviewerState();
}

class ReviewerState extends State<Reviewers> {
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
                MaterialPageRoute(
                    builder: (context) => ProductDetail(widget.image)),
              );
            },
          )
        ],
        title: Padding(
            padding: SIGNIN_PADDING_2,
            child: Text(
              'Reviewers',
              style: STYLE_SUBTITLES,
            )),
      ),
      body: ListView(children: _buildList()),
    );
  }

  List<Widget> _buildList() {
    List x = <Widget>[];

    for (var i = 0; i < 20; i++) {
      x.add(Card(
        child: ListTile(
          leading: CircleAvatar(
              backgroundImage: NetworkImage(IMG_PROF),
              radius: 30,
              backgroundColor: BLACK_PALETTE),
          title: Text('Sean King'),
          subtitle:
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
          trailing: Icon(Icons.star_border),
          isThreeLine: true,
        ),
      ));
    }

    return x;
  }
}

import 'package:flutter/material.dart';
import '../global/colors.dart';
import 'products.dart';

class VideoPlayer extends StatefulWidget {
  State<StatefulWidget> createState() => VideoPlayerState();
}

class VideoPlayerState extends State<VideoPlayer> {
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
        ),
        body: Center(child: Text('Coming soon')));
  }
}
//https://www.pexels.com/video/woman-picking-out-clothes-853800/

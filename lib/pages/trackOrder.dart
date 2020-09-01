import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../global/config.dart';

class TrackOrder extends StatefulWidget {
  State<StatefulWidget> createState() => TrackOrderState();
}

class TrackOrderState extends State<TrackOrder> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _index = 0;
  bool step1 = false;
  bool step2 = false;
  bool step3 = true;
  bool step4 = false;
  bool step5 = false;

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
                icon: Icon(Icons.search),
                color: BLACK_PALETTE,
                onPressed: () {},
              )
            ],
            title: Padding(
                padding: SIGNIN_PADDING_2,
                child: Text(
                  'Track Order',
                  style: STYLE_SUBTITLES,
                ))),
        drawer: Drawer(child: DrawerWidget()),
        body: SingleChildScrollView(
            child: Container(
                child: Column(children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 20),
            color: BLACK_PALETTE,
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Column(
              children: <Widget>[
                Text.rich(TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                        text: 'Order code is ',
                        style: TextStyle(color: WHITE_PALETTE)),
                    TextSpan(
                        text: '#XXXXXX',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: GRAY_PALETTE_1))
                  ],
                )),
                Text.rich(TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                        text: '2 items ',
                        style: TextStyle(color: WHITE_PALETTE)),
                    TextSpan(
                        text: CURRENCY + '69.66',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: GRAY_PALETTE_1)),
                  ],
                )),
              ],
            ),
          ),
          Stepper(
            physics: ClampingScrollPhysics(),
            steps: [
              Step(
                isActive: step1,
                title: Text("Order Placed"),
                content: Text("We have received your order"),
              ),
              Step(
                isActive: step2,
                title: Text("Confirmed"),
                content: Text("Your order has been confirmed"),
              ),
              Step(
                isActive: step3,
                title: Text("Order Shipped"),
                content: Text("Estimated for 29 September 2020"),
              ),
              Step(
                isActive: step4,
                title: Text("Out for Delivery"),
                content: Text("Estimated for 29 September 2020"),
              ),
              Step(
                isActive: step5,
                title: Text("Delivered"),
                content: Text("Estimated for 29 September 2020"),
              ),
            ],
            currentStep: _index,
            onStepTapped: (index) {
              setState(() {
                _index = index;
              });
            },
            controlsBuilder: (BuildContext context,
                    {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
                Container(),
          ),
        ]))));
  }
}

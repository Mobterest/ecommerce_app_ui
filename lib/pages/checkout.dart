import 'package:flutter/material.dart';
import '../global/colors.dart';
import 'cart.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import 'home.dart';
import '../util/func.dart';
import '../global/constants.dart';

class Checkout extends StatefulWidget {
  State<StatefulWidget> createState() => CheckoutState();
}

class CheckoutState extends State<Checkout> {
  int _index = 0;
  bool step1 = true;
  bool step2 = false;
  bool step3 = false;
  int _value = 1;
  Func f = new Func();

  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: BLACK_PALETTE),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cart()),
            );
          },
        ),
        title: Padding(
            padding: SIGNIN_PADDING_2,
            child: Text(
              CHECKOUT_TITLE,
              style: STYLE_CHECKOUT_TITLE,
            )),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Container(
        margin: CHECKOUT_PADDING_1,
        constraints:
            BoxConstraints.expand(height: MediaQuery.of(context).size.height),
        color: WHITE_PALETTE,
        child: Stepper(
          physics: ClampingScrollPhysics(),
          type: StepperType.horizontal,
          steps: [
            Step(
              isActive: step1,
              title: Text(""),
              content: Column(
                children: <Widget>[
                  Text(CHECKOUT_STEP1),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Full Name'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Address 1'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Address 2'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Full Name'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Zip Code'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'State'),
                  ),
                  Container(
                    margin: CHECKOUT_PADDING_2,
                    width: MediaQuery.of(context).size.width,
                    height: BNAVIGATION_BAR,
                    child: RaisedButton(
                        color: BLACK_PALETTE,
                        onPressed: () {
                          setState(() {
                            _index = 1;
                            step1 = false;
                            step2 = true;
                            step3 = false;
                          });
                        },
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: FOOTER_SBOX,
                          ),
                          Text('NEXT', style: STYLE_FOOTER_BTN),
                          Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: FOOTER_ICON_SIZE,
                          ),
                        ])),
                  )
                ],
              ),
            ),
            Step(
              isActive: step2,
              title: Text(CHECKOUT_STEP1),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(STEP_2),
                  Container(
                      margin: BSELLER_MARGIN_1,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: f.buildCard(),
                      )),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Name on Card'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Card Number'),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Expiry Month',
                        style: TextStyle(color: GRAY_PALETTE_1),
                      )),
                  DropdownButton(
                      isExpanded: true,
                      iconEnabledColor: GRAY_PALETTE_1,
                      value: _value,
                      items: f.buildDropList(),
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Expiry Date',
                        style: TextStyle(color: GRAY_PALETTE_1),
                      )),
                  DropdownButton(
                      isExpanded: true,
                      iconEnabledColor: GRAY_PALETTE_1,
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text('01'),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text('02'),
                          value: 2,
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'CVV'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width,
                    height: BNAVIGATION_BAR,
                    child: RaisedButton(
                        color: BLACK_PALETTE,
                        onPressed: () {
                          setState(() {
                            _index = 2;
                            step1 = false;
                            step2 = false;
                            step3 = true;
                          });
                        },
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: FOOTER_SBOX,
                          ),
                          Text('PAY NOW', style: STYLE_FOOTER_BTN),
                          Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: FOOTER_ICON_SIZE,
                          ),
                        ])),
                  )
                ],
              ),
            ),
            Step(
              isActive: step3,
              title: Text(""),
              content: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.check_circle_outline,
                    size: 100,
                  ),
                  Text('PAYMENT COMPLETE'),
                  SizedBox(height: 20),
                  Text.rich(TextSpan(
                    children: <InlineSpan>[
                      TextSpan(text: 'Order code is '),
                      TextSpan(
                          text: '#XXXXXX',
                          style: TextStyle(fontWeight: FontWeight.w900)),
                    ],
                  )),
                  SizedBox(height: 20),
                  Text('Please check the delivery status at'),
                  Text.rich(TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                          text: 'Order Tracker ',
                          style: TextStyle(fontWeight: FontWeight.w900)),
                      TextSpan(text: 'Page')
                    ],
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width,
                    height: BNAVIGATION_BAR,
                    child: RaisedButton(
                        color: BLACK_PALETTE,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: FOOTER_SBOX,
                          ),
                          Text('CONTINUE SHOPPING', style: STYLE_FOOTER_BTN),
                          Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: FOOTER_ICON_SIZE,
                          ),
                        ])),
                  )
                ],
              )),
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
      ),
    );
  }
}

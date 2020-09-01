import 'package:flutter/material.dart';
import '../global/colors.dart';
import '../global/dimensions.dart';
import '../global/styles.dart';
import '../widgets/menCard.dart';
import '../global/config.dart';
import 'filter.dart';
import 'categories.dart';
import 'productdetail.dart';

class Products extends StatefulWidget {
  State<StatefulWidget> createState() => ProductsState();
}

class ProductsState extends State<Products> {
  bool grid = true;

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
              MaterialPageRoute(builder: (context) => Categories()),
            );
          },
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        bottomOpacity: 0.0,
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
              'Dresses',
              style: STYLE_SUBTITLES,
            )),
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.only(left: 10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 10), child: Text('4 items')),
                Spacer(),
                IconButton(
                    icon: Icon(Icons.list),
                    onPressed: () {
                      setState(() {
                        grid = false;
                      });
                    }),
                IconButton(
                    icon: Icon(Icons.grid_on),
                    onPressed: () {
                      setState(() {
                        grid = true;
                      });
                    }),
                FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Filter()),
                      );
                    },
                    child: Text('FILTER'))
              ],
            ),
            MenCard(),
            grid
                ? Container(
                    margin: EdgeInsets.all(10),
                    child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        childAspectRatio: 0.7,
                        children: _buildList()))
                : Container(
                    margin: EdgeInsets.all(10),
                    child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 1,
                        physics: NeverScrollableScrollPhysics(),
                        childAspectRatio: 4,
                        children: _buildList())),
          ],
        ),
      )),
    );
  }

  List<Widget> _buildList() {
    List x = <Widget>[];

    for (var i = 0; i < rprods.length; i++) {
      x.add(grid
          ? Container(
              width: MediaQuery.of(context).size.width * COLLECTION_CWIDTH,
              height: COLLECTION_CHEIGHT,
              color: WHITE_PALETTE,
              margin: BSELLER_PADDING_2,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProductDetail(rprods[i]['image'])),
                  );
                },
                child: Flexible(
                    child: Column(
                  children: <Widget>[
                    Image.network(rprods[i]['image'],
                        height: BSELLER_IHEIGHT, width: 200),
                    SizedBox(height: BSELLER_SBOX),
                    Text(rprods[i]['title'], style: STYLE_BSELLER_DESC),
                    Text(rprods[i]['price'], style: STYLE_BSELLER_PRICE)
                  ],
                )),
              ))
          : Card(
              child: ListTile(
                  leading: Image.network(rprods[i]['image']),
                  title: Text(rprods[i]['title'], style: STYLE_BSELLER_DESC),
                  subtitle:
                      Text(rprods[i]['price'], style: STYLE_BSELLER_PRICE),
                  trailing: Icon(Icons.favorite_border),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProductDetail(rprods[i]['image'])),
                    );
                  }),
            ));
    }

    return x;
  }
}

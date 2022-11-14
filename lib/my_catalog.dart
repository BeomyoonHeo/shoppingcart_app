import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart_app/my_cart.dart';

class MyCatalog extends StatefulWidget {
  const MyCatalog({Key? key}) : super(key: key);

  @override
  State<MyCatalog> createState() => _MyCatalogState();
}

class _MyCatalogState extends State<MyCatalog> {
  int _color = 0xFFffffff;
  List<int> _list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3860c4),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => MyCart(list: _list)));
                },
                icon: Icon(Icons.shopping_cart, color: Color(_color))),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Catalog",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            buildRow(context, "Item 1"),
            buildRow(context, "Item 2"),
            buildRow(context, "Item 3"),
            buildRow(context, "Item 4"),
            buildRow(context, "Item 5"),
          ],
        ),
      ),
    );
  }

  Padding buildRow(context, text) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 250,
            color: Color(0xff3860c4),
            child: Center(child: Text(text)),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  List<String> _num = text.toString().split(' ');
                  var productnumber = int.parse(_num[1]);
                  _list.add(productnumber.toInt());
                  _color = 0xFFff0000;
                });
              },
              child: Text("Add")),
        ],
      ),
    );
  }
}

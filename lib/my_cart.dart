import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart_app/appbar.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key, required this.list}) : super(key: key);

  final List<int> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("cart"),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 50),
                Column(
                  children: containerList(list.length),
                ),
                SizedBox(height: 100),
                Container(
                  height: 90,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff3860c4), width: 5),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Buy",
                        style:
                            TextStyle(fontSize: 50, color: Color(0xff3860c4)),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  List<Widget> containerList(int data) {
    List<Widget> _list = [];
    for (int i = 0; i < data; i++) {
      _list.add(
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 75,
              width: 250,
              color: Color(0xff3860c4),
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerRight,
              height: 100,
              child: Text(
                "\$42",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            )
          ],
        ),
      );
    }
    return _list;
  }
}

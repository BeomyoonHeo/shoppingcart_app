import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart_app/appbar.dart';
import 'package:flutter_shoppingcart_app/my_catalog.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("wellcome"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150.0,
              width: 190.0,
              padding: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              child: Center(child: Image.asset("assets/login.jpg")),
            ),
            buildPadding("Id"),
            SizedBox(
              height: 5,
            ),
            buildPadding("Password"),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xff3860c4),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MyCatalog()));
                  },
                  child: Text(
                    "Enter",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Padding buildPadding(text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text(text),
              hintText: "Input" + text,
            ),
          ),
        ],
      ),
    );
  }
}

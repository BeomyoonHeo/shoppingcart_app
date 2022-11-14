import 'package:flutter/material.dart';

AppBar buildAppBar(text) {
  return AppBar(
    backgroundColor: Color(0xff3860c4),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              text,
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}

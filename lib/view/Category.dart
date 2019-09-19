import 'package:flutter/material.dart';
class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              child: Image.asset("images/logo.jpg"),
            ),
            Container(
              child: Image.asset("images/logo2.jpg"),
            ),
            Container(child: Image.asset("images/logo.jpg"),
            ),
            Container(child: Image.asset("images/logo2.jpg"),)
          ],
        ),
      ),
    );
  }
}
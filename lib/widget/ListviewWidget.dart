import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  List<Widget> _getData() {
    return [
      ListTile(
        leading: Icon(Icons.book),
        title: Text(
          "习近平在河南深入煤矿机械企业和农村考察调研",
          style: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      ListTile(
        // leading: Icon(Icons.book),
        title: Text(
          "习近平在河南深入煤矿机械企业和农村考察调研",
          // style: TextStyle(
          //     color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      ListTile(
        // leading: Icon(Icons.book),
        title: Text(
          "习近平在河南深入煤矿机械企业和农村考察调研",
          // style: TextStyle(
          //     color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}

import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first app"),
      ),
      body: Center(
        child: Text(
          "goodgoodgood $count",
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.w500, fontSize: 18),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

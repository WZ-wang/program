import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图片"),
      ),
      body: Center(
        child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(color: Colors.orange),
            child: ClipOval(
              child: Image(
                image: AssetImage("images/logo.jpg"),
                // image: NetworkImage(
                // "https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png"),
                // fit:BoxFit.fill
                // fit:BoxFit.contain
                fit:BoxFit.fitHeight
              ),
            )),
      ),
    );
  }
}

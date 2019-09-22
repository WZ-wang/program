import 'package:flutter/material.dart';
class AddressWidget extends StatelessWidget {
  final arguments;
  AddressWidget({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Address"),),
    body: Center(child: Text("${this.arguments["address"]}"),),);;
  }
}
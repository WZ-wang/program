import 'package:flutter/material.dart';
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("搜索页面"),
    );
  }
}

// Container(
//                     decoration:BoxDecoration(
//                       border: Border.all(color: Colors.red,width: 0.5),
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.circular(10)
//                     ),
//                     child:Text("data"))
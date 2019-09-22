import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class DioWidget extends StatefulWidget {
  @override
  _DioWidgetState createState() => _DioWidgetState();
}

class _DioWidgetState extends State<DioWidget> {
  List _list = [];
  
  dio1() async {
    Response response = await Dio().get(
        "http://m.maoyan.com/ajax/movieOnInfoList?token=");
    Map<String,dynamic> responsedata = json.decode(response.toString());
    _list = responsedata["movieList"];

  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("DIO"),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (BuildContext context,int i){
              return Text("${_list[i]['nm']}");
            },
          ),
   
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              this.dio1();
            },
          ),
        );
  }
}

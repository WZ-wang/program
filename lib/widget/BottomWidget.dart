import 'package:flutter/material.dart';
import '../view/Category.dart';
import '../view/Home.dart';
import '../view/Setting.dart';
import '../view/Search.dart';
class BottomWidget extends StatefulWidget {
  @override
  _BottomWidgetState createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int _currentIndex = 0;
  List bottom = [Home(),Category(),Setting(),Search()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("bottom"),),
      body: this.bottom[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
           this._currentIndex = index; 
          });
        },
        currentIndex: this._currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.category),title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text("设置")),
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("搜索")),
        ],
      ),
    );
  }
}
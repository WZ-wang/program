import 'package:flutter/material.dart';
import './Movie.dart';
import './Film.dart';
import './Person.dart';
class BottomCat extends StatefulWidget {
  @override
  _BottomCatState createState() => _BottomCatState();
}

class _BottomCatState extends State<BottomCat> {
  int _currentIndex = 0;
  List _list = [Movie(),Film(),Person()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("猫眼电影"),centerTitle: true,backgroundColor: Colors.red,),
      body: _list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_filled),title: Text("电影")),
          BottomNavigationBarItem(icon: Icon(Icons.movie_creation),title: Text("影院")),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("我的"))
        ],
        onTap: (int index){
          setState(() {
           _currentIndex = index; 
          });
        },
      ),
    );
  }
}
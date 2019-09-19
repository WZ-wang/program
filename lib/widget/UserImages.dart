import 'package:flutter/material.dart';
class UserImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("圆形图片"),),
    body: Center(
      child:ClipOval(
        child:  Image.network("https://imgsa.baidu.com/news/q%3D100/sign=19c97f3e8918367aab897bdd1e728b68/08f790529822720ea56b50ed74cb0a46f21fab04.jpg"),
      )
    ),);
  }
}
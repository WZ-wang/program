import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  @override
  _TabbarWidgetState createState() => _TabbarWidgetState();
}

//SingleTickerProviderStateMixin提供滑动切换动画
class _TabbarWidgetState extends State<TabbarWidget>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.phone),
            ),
            Tab(
              icon: Icon(Icons.chat),
            ),
            Tab(
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _controller,
      children: <Widget>[
        one(),
        two(),
        three()
      ],),
    );
  }
}
class one extends StatefulWidget {
  @override
  _oneState createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("11111"),
    );
  }
}
class two extends StatefulWidget {
  @override
  _twoState createState() => _twoState();
}

class _twoState extends State<two> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("22222"),
    );
  }
}
class three extends StatefulWidget {
  @override
  _threeState createState() => _threeState();
}

class _threeState extends State<three> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("33333"),
    );
  }
}
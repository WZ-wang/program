import 'package:flutter/material.dart';
import './City.dart';
import './Moving.dart';
import './MovieWill.dart';
import './Search.dart';

class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Row(
                  children: <Widget>[Text("北京",style: TextStyle(color: Colors.black87),), Icon(Icons.arrow_drop_down,color: Colors.grey,)],
                ),
              ),
              Expanded(
                flex: 8,
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Colors.red,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.red,
                  labelPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  tabs: <Widget>[
                    Tab(
                      text: "正在热映",
                    ),
                    Tab(
                      text: "即将上映",
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Icon(Icons.search,color: Colors.red,))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // City(),
            Moving(),
            MovieWill(),
            // Search(),
          ],
        ),
      ),
    );
  }
}

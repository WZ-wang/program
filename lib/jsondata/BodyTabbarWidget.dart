import 'package:flutter/material.dart';

class BodyTabbarWidget extends StatefulWidget {
  @override
  _BodyTabbarWidgetState createState() => _BodyTabbarWidgetState();
}

class _BodyTabbarWidgetState extends State<BodyTabbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabbar"),
      ),
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              title: Row(
                children: <Widget>[
                  Expanded(
                    child: TabBar(
                      indicatorColor: Colors.blue, //下划线
                      labelColor: Colors.blue,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelPadding: EdgeInsets.fromLTRB(40,0,40,0),
                      tabs: <Widget>[
                        Tab(
                          text: "首页",
                        ),
                        Tab(
                          text: "vue",
                        ),
                        Tab(
                          text: "node",
                        ),
                      ],
                    ),
                  )
                ],
              )),
              body: TabBarView(
                children: <Widget>[
                  ListView(
                    children: <Widget>[
                      ListTile(title: Text("11"),),
                      ListTile(title: Text("11"),),
                      ListTile(title: Text("11"),),
                      ListTile(title: Text("11"),),
                    ],
                  ),
                  ListView(
                    children: <Widget>[
                      ListTile(title: Text("22"),),
                      ListTile(title: Text("22"),),
                      ListTile(title: Text("11"),),
                    ],
                  ),
                  ListView(
                    children: <Widget>[
                      ListTile(title: Text("33"),),
                      ListTile(title: Text("33"),),
                      ListTile(title: Text("11"),),
                    ],
                  ),
                ],
              ),
        ),
      ),
    );
  }
}

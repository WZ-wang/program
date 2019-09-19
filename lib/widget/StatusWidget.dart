import 'package:flutter/material.dart';

class StatusWidget extends StatefulWidget {
  StatusWidget({Key key,this.title}):super(key:key);
  final String title;
  @override
  _StatusWidgetState createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  int _count = 0;
  @override
  void add() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30,bottom: 30),
              child: Image(
                image: AssetImage("images/logo.jpg"),
              ),
            ),
            Text("点击加一",
            ),
            Text(
              "$_count",
              style:TextStyle(color: Colors.orange,fontSize: 30,),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }
}

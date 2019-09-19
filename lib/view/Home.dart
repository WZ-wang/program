import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.white10,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
              "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=4064075977,3738371861&fm=26&gp=0.jpg"),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 60, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Oeschonsl Lake Campground",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Kandsadejaf,Swdafad",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.star, color: Colors.orange),
                Text("41")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[Icon(Icons.phone,color: Colors.blue,), Text("CALL",style: TextStyle(color: Colors.blue,height: 1.5),)],
                ),
                Column(
                  children: <Widget>[Icon(Icons.router,color: Colors.blue),SizedBox(height: 10,) ,Text("ROUTE",style: TextStyle(color: Colors.blue,))],
                ),
                Column(
                  children: <Widget>[Icon(Icons.share,color: Colors.blue), Text("SHARE",style: TextStyle(color: Colors.blue,height: 1.5),)],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(
                "The [direction], [mainAxisAlignment], [mainAxisSize], [crossAxisAlignment], and [verticalDirection] arguments must not be null. If [crossAxisAlignment] is [CrossAxisAlignment.baseline], then [textBaseline] must not be null."),
          ),
        ],
      ),

    );
  }
}

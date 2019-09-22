import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class Moving extends StatefulWidget {
  @override
  _MovingState createState() => _MovingState();
}

class _MovingState extends State<Moving> {
  List _list = [];
  @override
  void didChangeDependencies() {
    this.getData();
    super.didChangeDependencies();
  }

  getData() async {
    Response response =
        await Dio().get("http://m.maoyan.com/ajax/movieOnInfoList?token=");
    Map<String, dynamic> responsedata = json.decode(response.toString());
    setState(() {
      this._list = responsedata["movieList"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _list.length,
        itemBuilder: (BuildContext context, int i) {
          return Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 90,
                      width: 64,
                      child: Image.network(
                          "https://p0.meituan.net/128.180/movie/845dce25ba800e91ac591b683a0c3ba92450317.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "${_list[i]['nm']}",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue, width: 1),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                            padding:
                                                EdgeInsets.fromLTRB(2, 2, 2, 2),
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                            ),
                                            child: Text(
                                              "2D",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            )),
                                        Container(
                                            padding:
                                                EdgeInsets.fromLTRB(2, 2, 2, 2),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Text(
                                              "IMAX",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.blue),
                                            )),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              child: this._list[i]['showst'] == 3
                                  ? Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 5,
                                          child: Text(
                                            this._list[i]['sc'] == 0
                                                ? "暂无评分"
                                                : "观众评",
                                          ),
                                        ),
                                        Expanded(
                                          flex: 12,
                                          child: Text(
                                              this._list[i]['sc'] == 0
                                                  ? ""
                                                  : "${_list[i]['sc']}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.w800)),
                                        )
                                      ],
                                    )
                                  : Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 10,
                                          child: Text("${_list[i]['wish']}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.w800)),
                                        ),
                                        Expanded(
                                          flex: 19,
                                          child: Text(
                                            "人想看",
                                          ),
                                        ),
                                      ],
                                    )),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "主演:",
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    "${_list[i]['star']}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "${_list[i]['showInfo']}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 70,
                      child: RaisedButton(
                        child: Text(this._list[i]['showst'] == 3 ? "购票" : "预售",
                            style: TextStyle(color: Colors.white)),
                        color: this._list[i]['showst'] == 3
                            ? Colors.red
                            : Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}

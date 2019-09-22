import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class MovieWill extends StatefulWidget {
  @override
  _MovieWillState createState() => _MovieWillState();
}

class _MovieWillState extends State<MovieWill> {
  List _list = [];
  List _movielist = [];

  @override
  void initState() {
    this.getmovie();
    this.getData();
    super.initState();
  }

  getData() async {
    Response response = await Dio().get(
        "http://m.maoyan.com/ajax/mostExpected?ci=699&limit=10&offset=0&token=");
    Map<String, dynamic> responseData = json.decode(response.toString());
    setState(() {
      _list = responseData["coming"];
    });
  }

  getmovie() async {
    Response responsemovie = await Dio()
        .get("http://m.maoyan.com/ajax/comingList?ci=699&token=&limit=10");
    Map<String, dynamic> responsemovieData =
        json.decode(responsemovie.toString());
    setState(() {
      _movielist = responsemovieData["coming"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
          child: Text("近期最受期待"),
        ),
        Container(
          height: 220,
          child: ListView.builder(
            // shrinkWrap: true, 								//解决无限高度问题
            // physics: new NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: _list.length,
            itemBuilder: (BuildContext context, int i) {
              return Container(
                margin: EdgeInsets.fromLTRB(20, 15, 0, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 85,
                      height: 115,
                      child: Image.network(
                          "https://p0.meituan.net/170.230/movie/f0614f9d08e84abfe947531c491b1cf55397550.jpg"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 85,
                      child: Text(
                        "${_list[i]['nm']}",
                        style: TextStyle(fontWeight: FontWeight.w800),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text("${_list[i]['comingTitle']}",
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
          child: ListView.builder(
              shrinkWrap: true, //解决无限高度问题
              physics: new NeverScrollableScrollPhysics(),
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
                                          "${_movielist[i]['nm']}",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w800),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    child: Row(
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                    "${_movielist[i]['wish']}",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontWeight:
                                                            FontWeight.w800)),
                                              ),
                                              Container(
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
                                        child: Text(
                                          "主演:${_movielist[i]['star']}",
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
                                          "${_movielist[i]['rt']}上映",
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
                              child: Text(
                                  this._movielist[i]['showst'] == 4 ? "预售" : "想看",
                                  style: TextStyle(color: Colors.white)),
                              color: this._movielist[i]['showst'] == 4
                                  ? Colors.blue
                                  : Colors.orange,
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
              }),
        )
      ],
    );
  }
}

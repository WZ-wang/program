import 'package:flutter/material.dart';
class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child:Column(
        children: <Widget>[
          Image.asset("images/logo.jpg"),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child:Container(
                      height: 110,
                      margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Image(image: AssetImage("images/logo2.jpg"),fit:BoxFit.cover,),) ,
              ),
              SizedBox(width: 5,),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      child: Image(image: AssetImage("images/logo.jpg"),fit:BoxFit.cover,)),
                    SizedBox(height: 5,),
                    Container(
                      height: 50,
                      child: Image(image: AssetImage("images/logo.jpg"),fit:BoxFit.cover,)),
                  ],
                ),
              )
            ],
          )
        ],
      ) ,
    );
  }
}
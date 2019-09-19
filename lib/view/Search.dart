import 'package:flutter/material.dart';
import './Addresslist.dart';
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String _address = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return Addresslist();
                    })
                  ).then((res){
                    setState(() {
                     this._address = res; 
                    });
                  });
                },
                child: Text("搜索",style: TextStyle(color: Colors.white),),
              ),
              SizedBox(width: 10,),
              RaisedButton.icon(
                color: Colors.yellow,
                icon: Icon(Icons.subject),
                onPressed: (){
                },
                label: Text("图标"),
              ),
              SizedBox(width: 10,),
              Container(
                child: RaisedButton(
                  child: Text("圆角"),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  onPressed: (){
                  },
                  ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Container(
                height: 50,
                child: RaisedButton(
                  child: Text("圆形"),
                  color: Colors.blue,
                  shape: CircleBorder(
                    side: BorderSide(color: Colors.white)
                  ),
                  onPressed: (){
                  },
                  ),
              ),
              Container(
                height: 50,
                width: 100,
                child: RaisedButton(
                  child: Text("自定义"),
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: (){
                  },
                  ),
              ),
            ],
          )
         ,SizedBox(height: 10,),
          Text(this._address=="" ?"没有选择地址":this._address)
        ],
      ),
    );
  }
}
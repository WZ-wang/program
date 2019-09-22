import 'package:flutter/material.dart';
class Person extends StatefulWidget {
  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("登录"),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: (){
                Navigator.pushNamed(context,"/login");
              },
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,"/address",arguments: {
                  "address":"北京市昌平区沙河镇北京科技经营管理学院"
                });
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue,width: 1),
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.blue,
                ),
                child: Text("我的地址",style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
class Addresslist extends StatefulWidget {
  @override
  _AddresslistState createState() => _AddresslistState();
}

class _AddresslistState extends State<Addresslist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("地址列表"),
        centerTitle: true,
        leading: IconButton(onPressed: (){},
        icon: Icon(Icons.menu),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){},)
        ],
        
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop("旺财 北京市昌平区沙河镇北京科技经营管理学院");
            },
            child: Container(
              child: ListTile(
                leading: Icon(Icons.watch),
                title: Text("旺财 北京市昌平区沙河镇北京科技经营管理学院",maxLines: 1,overflow: TextOverflow.ellipsis,),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop("大神 北京市昌平区沙河镇北京科技经营管理学院");
            },
            child: Container(
              child: ListTile(
                leading: Icon(Icons.watch),
                title: Text("大神 北京市昌平区沙河镇北京科技经营管理学院",maxLines: 1,overflow: TextOverflow.ellipsis,),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop("威威 北京市昌平区沙河镇北京科技经营管理学院");
            },
            child: Container(
              child: ListTile(
                leading: Icon(Icons.watch),
                title: Text("威威 北京市昌平区沙河镇北京科技经营管理学院",maxLines: 1,overflow: TextOverflow.ellipsis,),
              ),
            ),
          ),
        ],
      ),
      );
  }
}
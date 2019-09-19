import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  List<Widget> _getData() {
    List<Widget> listData = [];
    for(var i = 0;i<10;i++){
      listData.add(Column(
        children: <Widget>[
          Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1629766254,893572877&fm=26&gp=0.jpg"),
          Text("第$i张图片"),
          
        ],
      ));
    }
    return listData;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 0.6,
      padding: EdgeInsets.all(10),
      children: this._getData(),
    );
  }
}

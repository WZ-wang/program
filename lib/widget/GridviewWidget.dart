import 'package:flutter/material.dart';
class GridviewWidget extends StatelessWidget {
  List<Widget> _getData(){
    List<Widget> dataList = [] ;
    for(var i=0;i<10;i++){
      dataList.add(Text("111"));
    }
    return dataList;
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 2,
      children: this._getData()
    );
  }
}
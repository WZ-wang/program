import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  // List<Widget> _getData() {
  //   List<Widget> data = [];
  //   for (var i = 0; i < 5; i++) {
  //     data.add(
  //       Text("第$i张"),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 200,
            color: Colors.orange,
            child: Text("111",textAlign: TextAlign.center,),
          ),
          
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './widget/Main.dart';
import './widget/ImageWidget.dart';
import './widget/StatusWidget.dart';
import './widget/ListviewWidget.dart';
import './widget/UserImages.dart';
import './widget/GridviewWidget.dart';
import './widget/ColumnWidget.dart';
import './widget/RowWidget.dart';
import './widget/PaddingWidget.dart';
import './widget/BottomWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "myapp",
      theme: ThemeData(primaryColor: Colors.blue),
      // home: StatusWidget(title: "计数器",),
      // home: UserImages(),
      // home: ImageWidget(),
      // home: Scaffold(appBar: AppBar(title: Text("flutter widget"),),
      // body: PaddingWidget(),
      home: BottomWidget(),
      // ),
    );
  }
}


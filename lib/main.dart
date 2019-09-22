import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; //多语言
import 'package:myflutter/routes/routes.dart' as prefix0; //路由
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
import './jsondata/DioWidget.dart';
import './jsondata/TabbarWidget.dart';
import './jsondata/BodyTabbarWidget.dart';
import './catmovie/BottomCat.dart';
import './form/FormWidget.dart';

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
      home: BottomCat(),
      // initialRoute:,//默认路由
      onGenerateRoute: prefix0.onGenerateRoute,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale("zh","CH"),  //那里用到就指定local:local("zh")
        const Locale('en', 'US'), // English
        const Locale('fr', 'CA'), // canadian French
        // ... other locales the app supports
      ],
      // ),
    );
  }
}

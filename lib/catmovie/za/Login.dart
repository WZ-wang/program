import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  DateTime _dateTime = DateTime.now();
  DateTimePickerLocale _locale = DateTimePickerLocale.zh_cn;
   void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确认', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse('2010-05-12'),
      maxDateTime: DateTime.parse('2091-11-25'),
      initialDateTime: _dateTime,
      dateFormat: 'yyyy-MMMM-dd',
      locale: _locale,
      // onClose: () => print("----- onClose -----"),
      // onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child:InkWell(
          onTap: _showDatePicker,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("${formatDate(_dateTime,[yyyy,'-',mm,'-',dd])}"),
            Icon(Icons.arrow_drop_down)
          ],
        ),
        )
      ),
    );
  }
}

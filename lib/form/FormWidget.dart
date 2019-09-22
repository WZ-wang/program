import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  GlobalKey _formKey = GlobalKey<FormState>();
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  int _s = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Form(   
        key: _formKey,
        autovalidate: true,
        child: Column(
        children: <Widget>[
          TextFormField(
            controller: _unameController,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "请输入用户名",
                prefixIcon: Icon(Icons.person)),
                validator: (v){
                  return v.trim().length>0?null:"用户名不能为空";
                },
          ),
          TextFormField(
            controller: _pwdController,
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                prefixIcon: Icon(Icons.lock)),
                validator: (v){
                  return v.trim().length>5?null:"密码不能少于6位";
                },
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
            children: <Widget>[
              SizedBox(width: 20,),
              Expanded(
                  child: RaisedButton(
                  padding: EdgeInsets.all(10),
                  child: Text("登录$_s"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    if((_formKey.currentState as FormState).validate()){
                      _s=2;
                    }
                  },
                )
              ),
              SizedBox(width: 20,)
            ],
          ),)
        ],
      ),
      )
    );
  }
}

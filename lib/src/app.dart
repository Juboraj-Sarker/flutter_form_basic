import 'package:flutter/material.dart';
import 'package:flutterformbasic/src/screen/login_screen.dart';

class MyApp extends StatelessWidget{

  Widget build(context){
    var app = MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("Form Validator"),
                backgroundColor: Colors.green,
                leading: Icon(Icons.arrow_back)
            ),
            body: LoginScreen()
        )
    );

    return app;
  }

}
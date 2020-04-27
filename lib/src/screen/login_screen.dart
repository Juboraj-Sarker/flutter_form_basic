import 'package:flutter/material.dart';
import 'package:flutterformbasic/src/widgets/button_widget.dart';
import 'package:flutterformbasic/src/widgets/form_widget.dart';
import 'package:flutterformbasic/src/widgets/my_geometric_widgets.dart';
import '../utils/validation_mixin.dart';

class LoginScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }


}

class LoginScreenState extends State<LoginScreen> with ValidationMixin{

  final formKey = GlobalKey<FormState>();
  String email, password ;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();


  @override
  Widget build(context){
    return Container(
      padding: new MyGeometricWidget().setPadding(10.0),
      margin: new MyGeometricWidget().setMargin(10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey)
      ),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new FormWidget().emailField(emailController),
           Container(margin: EdgeInsets.only(bottom: 8.0)),
           new FormWidget().passwordField(passwordController),
           new ButtonWidget().buttonField(formKey, emailController)
          ],
        ),
      )
    );
  }



}
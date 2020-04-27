import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget{
  Widget buttonField(GlobalKey<FormState> formKey, emailController){

    return new RaisedButton(
        child: Container(
            width: double.infinity,
            child: Center(
              child: Text("Submit"),
            )
        ),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: (){

          if (formKey.currentState.validate()){
            print(emailController.text);
          }

        }
    );

  }
}
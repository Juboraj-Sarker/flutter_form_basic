import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterformbasic/src/utils/validation_mixin.dart';

class FormWidget{

  Widget emailField(emailController){
    return TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
            labelText: "Enter your Email",
            labelStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
            ),
            contentPadding: EdgeInsets.all(8.0), // Inside box padding
            border: OutlineInputBorder(
                gapPadding: 1.0,
                borderRadius: BorderRadius.circular(1.5)
            )
        ),
        validator: new ValidationMixin().validateEmail
    );
  }


  Widget passwordField(passwordController){

    return TextFormField(
        controller: passwordController,
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
            labelText: "Enter your Password",
            labelStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
            ),
            contentPadding: EdgeInsets.all(8.0), // Inside box padding
            border: OutlineInputBorder(
              gapPadding: 1.0,
              borderRadius: BorderRadius.circular(1.5),
            )
        ),
        validator: new ValidationMixin().validatePassword


    );

  }





}
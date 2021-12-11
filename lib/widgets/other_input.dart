import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget usernameFormField() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.blue[50],
    ),
    child: TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: 'Username',
          suffixIcon: Icon(Icons.account_circle, color: Colors.cyan[900]),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget reppeatFormField() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.blue[50],
    ),
    child: TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: 'Reppeat password',
          suffixIcon: Icon(Icons.password, color: Colors.cyan[900]),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )),
    ),
  );
}

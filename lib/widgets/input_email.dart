import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class EmailInputFeild extends StatefulWidget {
  EmailInputFeild({Key? key}) : super(key: key);

  @override
  _EmailInputFeildState createState() => _EmailInputFeildState();
}

class _EmailInputFeildState extends State<EmailInputFeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue[50],
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'example@fuko.com',
            suffixIcon: Icon(Icons.email, color: Colors.cyan[900]),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}

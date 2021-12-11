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
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'example@fuko.com',
            suffixIcon: Icon(Icons.check_circle, color: Colors.blue),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}

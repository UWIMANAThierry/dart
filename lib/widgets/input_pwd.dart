import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PwdInputField extends StatefulWidget {
  PwdInputField({Key? key}) : super(key: key);

  @override
  _PwdInputFieldState createState() => _PwdInputFieldState();
}

class _PwdInputFieldState extends State<PwdInputField> {
  bool _passwordVisibility = false;

  @override
  void initState() {
    setState(() {
      _passwordVisibility = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue[50],
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: _passwordVisibility,
        decoration: InputDecoration(
          hintText: 'Password',
          suffixIcon: IconButton(
              onPressed: () {
                // Get password visibility bool var
                setState(() {
                  _passwordVisibility = !_passwordVisibility;
                });
              },
              icon: Icon(
                  !_passwordVisibility
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Colors.cyan[900])),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fuko_app/widgets/custom_btn.dart';
import 'package:fuko_app/widgets/input_email.dart';
import 'package:fuko_app/widgets/input_pwd.dart';
import 'package:fuko_app/widgets/other_input.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            topContent(),
            SizedBox(
              height: 10,
            ),
            loginInputField()
          ],
        ),
      ))),
    );
  }

  Widget topContent() {
    return Container(
      margin: EdgeInsets.only(right: 30, left: 30),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Fuko",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            color: Colors.cyan[800]),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget loginInputField() {
    final colorOne = Colors.cyan[900];
    final colorTwo = Colors.cyan[50];
    final textColorOne = Colors.white;
    final textColorTwo = Colors.black54;
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Form(
        child: Column(
          children: [
            usernameFormField(),
            SizedBox(
              height: 20,
            ),
            EmailInputFeild(),
            SizedBox(
              height: 20,
            ),
            PwdInputField(),
            SizedBox(
              height: 20,
            ),
            reppeatFormField(),
            SizedBox(
              height: 60,
            ),
            customButtomB(context, 'Sign up', colorOne, textColorOne),
            SizedBox(
              height: 35,
            ),
            customButtomB(context, 'Login', colorTwo, textColorTwo),
            SizedBox(
              height: 48,
            ),
          ],
        ),
      ),
    );
  }
}

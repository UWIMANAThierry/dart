import 'package:flutter/material.dart';
import 'package:fuko_app/screens/auth/login.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  topContent(),
                  SizedBox(
                    height: 10,
                  ),
                  buttonsContent(),
                ],
              ),
              Positioned(
                bottom: 0.0,
                width: MediaQuery.of(context).size.width,
                child: totalCashRemain(),
              )
            ],
          ),
        )),
      )),
    );
  }

  Widget topContent() {
    return Container(
      height: 100,
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              alignment: Alignment.bottomRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  icon: Icon(
                    Icons.logout,
                    color: Colors.black,
                    size: 20,
                  ))),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  Widget totalCashRemain() {
    return Container(
      color: Colors.cyan[900],
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "Frw",
              style: TextStyle(
                  color: Colors.white60,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            child: Text(
              "5,000, 000.00",
              style: TextStyle(
                  color: Colors.white60,
                  fontSize: 40,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }

  Widget buttonsContent() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              width: 100,
              child: TextButton(
                child: Column(
                  children: [
                    Icon(
                      Icons.calculate,
                      size: 30,
                      color: Colors.cyan[900],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Budget",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Container(
              width: 100,
              child: TextButton(
                child: Column(
                  children: [
                    Icon(
                      Icons.savings,
                      size: 30,
                      color: Colors.cyan[900],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Savings",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ]),
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              width: 100,
              child: TextButton(
                child: Column(
                  children: [
                    Icon(
                      Icons.account_balance,
                      size: 30,
                      color: Colors.cyan[900],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Loan",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Container(
              width: 100,
              child: TextButton(
                child: Column(
                  children: [
                    Icon(
                      Icons.money_off,
                      size: 30,
                      color: Colors.cyan[900],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Depts",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ])
        ],
      ),
    );
  }
}

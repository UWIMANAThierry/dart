import 'package:flutter/material.dart';
import 'package:fuko_app/screens/pages/home.dart';

class LoanPage extends StatefulWidget {
  LoanPage({Key? key}) : super(key: key);

  @override
  _LoanPageState createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            amountContent(),
            Positioned(
                top: 0,
                child: Container(
                  color: Colors.cyan[900],
                  child: Column(
                    children: [
                      Container(
                          color: Colors.cyan[900],
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  },
                                  child: Text(
                                    "Back",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.date_range,
                                    size: 28,
                                    color: Colors.white,
                                  ))
                            ],
                          )),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Text("Loan/current year"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Rwf",
                                    style: TextStyle(
                                        color: Colors.black87,
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
                                        color: Colors.black87,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Positioned(
                bottom: 32,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.cyan[900],
                        borderRadius: BorderRadius.circular(50.0),

                        // border: Border.all(color: Colors.cyan)
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 28,
                          )),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget amountContent() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 160),
        child: Column(
          children: [displayDetails()],
        ),
      ),
    );
  }

  Widget displayDetails() {
    return Container(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            titleContent(),
            titleContent(),
            titleContent(),
            titleContent(),
            titleContent(),
            titleContent(),
            titleContent(),
            titleContent(),
            titleContent(),
            titleContent()
          ],
        ),
      ),
    );
  }

  Widget titleContent() {
    return Container(
        height: 90,
        child: Card(
          child: ListTile(
            contentPadding: EdgeInsets.all(8),
            leading: Column(
              children: [
                Icon(
                  Icons.calendar_today,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "23",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            title: Row(
              children: [
                Container(margin: EdgeInsets.only(top: 5), child: Text("Rwf ")),
                Text("200.00",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ],
            ),
            subtitle: Text("john",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ),
        ));
  }
}

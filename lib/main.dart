import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isVisible = false;
  bool visible = true;
  bool isVisible2 = false;
  bool visible2 = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFAFAFC),
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
          title: Text(
            "Internet",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Container(
              color: Colors.black12,
              height: 1,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
// Frame 1

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
// Box 1

                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xFFFFF5E6),
                            border: Border.all(
                              color: Color(0xFFF3CC46),
                              width: 1,
                            )),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.error_outline_rounded,
                              color: Color(0xFFF3CC46),
                            ),
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: RichText(
                                  text: TextSpan(
                                    text:
                                        "Perlu diketahui, proses verifikasi transaksi dapat memakan waktu hingga",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: " 1x24 jam",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
// end Box 1
// Box 2
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Choose All",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            Checkbox(
                              value: isChecked,
                              activeColor: Colors.red,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value ?? false;
                                  isChecked1 = value ?? false;
                                  isChecked2 = value ?? false;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
// End Box 2
// Box 3
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.black12, width: 1),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.black12, width: 1),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.bar_chart_outlined,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Rp.450.000",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              "Due date on 16 Feb 2024",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xFF838799),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Checkbox(
                                    value: isChecked1,
                                    activeColor: Colors.red,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked1 = value ?? false;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 50),
                              height: isVisible ? 105 : 0,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.black12, width: 1),
                                ),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Provider"),
                                        Text("Nethome"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("ID Pelanggan"),
                                        Text("11289824727424"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Paket Layanan"),
                                        Text("Nethome 100 Mbps"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 50),
                              height: isVisible ? 50 : 0,
                              padding: EdgeInsets.all(10),
                              child: ElevatedButton(
                                child: Text(
                                  "Clossed",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStateProperty.all(0),
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isVisible = false;
                                    visible = true;
                                  });
                                },
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 50),
                              height: visible ? 50 : 0,
                              padding: EdgeInsets.all(10),
                              child: ElevatedButton(
                                child: Text(
                                  "See Details",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStateProperty.all(0),
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isVisible = true;
                                    visible = false;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
// End Box 3
//Box 4
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.black12, width: 1),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.black12, width: 1),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.bar_chart_outlined,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Rp.240.000",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              "Due date on 20 Feb 2024",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xFF838799),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Checkbox(
                                    value: isChecked2,
                                    activeColor: Colors.red,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked2 = value ?? false;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 50),
                              height: isVisible2 ? 105 : 0,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.black12, width: 1),
                                ),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Provider"),
                                        Text("Nethome"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("ID Pelanggan"),
                                        Text("11289824727424"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Paket Layanan"),
                                        Text("Nethome 100 Mbps"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 50),
                              height: isVisible2 ? 50 : 0,
                              padding: EdgeInsets.all(10),
                              child: ElevatedButton(
                                child: Text(
                                  "Clossed",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStateProperty.all(0),
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isVisible2 = false;
                                    visible2 = true;
                                  });
                                },
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(microseconds: 50),
                              height: visible2 ? 50 : 0,
                              padding: EdgeInsets.all(10),
                              child: ElevatedButton(
                                child: Text(
                                  "See Details",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStateProperty.all(0),
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isVisible2 = true;
                                    visible2 = false;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
// End Box 4
                    ],
                  ),
                ),
// End Frame 1
// Frame 2
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Transaction History",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                      ),
                    ],
                  ),
                ),
// End Frame 2
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.all(0),
          height: 150,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.payment_sharp,
                          color: Colors.red,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Total Payment",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Rp.450.000",
                      style: TextStyle(
                        color: Color(0xff244091),
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        "Pay Now",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        elevation: MaterialStateProperty.all(0),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

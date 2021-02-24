import 'package:flutter/material.dart';

class HomeInfo extends StatelessWidget {
  Widget UserInfo() {
    return Container(
        width: 400,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.cyan[200],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(5, 5),
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 2)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "STATION PPRD ID :",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text("API NAME :",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Text(
                  "API KEY :",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // TextField(
                //
                // ),
                Container(
                    width: 200,
                    height: 40,
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: Text(
                      "100007",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[400]),
                    )),
                // Text("100007"),
                Container(
                    width: 200,
                    height: 40,
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: Text(
                      "Kaung Zaw Hein",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[400]),
                    )),
                Container(
                    width: 200,
                    height: 40,
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: Text(
                      "MKK2G/MMA",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[400]),
                    )),
              ],
            )
          ],
        ));
  }

  Widget saleList() {
    return SizedBox(
      width: 400,
      height: 300,
      child: Card(
        color: Colors.white,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ListTile(
                // leading: Icon(Icons.check),
                title: Center(
                  child: Text(
                    'SALE',
                    style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 350,
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blue[200],
                ),
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                      height: 100,
                      color: Colors.amber[600],
                      child: const Center(
                          child: Text(
                        'Sale_api sending is  successful!',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[500],
                    //   child: const Center(child: Text('Entry B')),
                    // ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[100],
                    //   child: const Center(child: Text('Entry C')),
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget purchaseList() {
    return SizedBox(
      width: 400,
      height: 300,
      child: Card(
        color: Colors.white,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ListTile(
                // leading: Icon(Icons.check),
                title: Center(
                  child: Text(
                    'PURCHASE',
                    style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 350,
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blue[200],
                ),
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Container(
                      height: 100,
                      margin: EdgeInsets.only(
                          top: 30, left: 30, right: 30, bottom: 50),
                      color: Colors.amber[600],
                      // color: Colors.white,
                      child: const Center(
                          child: Text(
                        'Purchase_api sending is  successful!',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[500],
                    //   child: const Center(child: Text('Entry B')),
                    // ),
                    // Container(
                    //   height: 50,
                    //   color: Colors.amber[100],
                    //   child: const Center(child: Text('Entry C')),
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 400,
        height: double.infinity,
        // color: Colors.grey[400],
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(5, 5),
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 2)
                    ]),
                width: 400,
                height: 300,
                // color: Colors.grey[400],
                child: Column(
                  children: [
                    Expanded(child: UserInfo()),
                    Expanded(child: saleList()),
                    Expanded(child: purchaseList()),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

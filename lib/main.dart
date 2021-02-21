import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pprd/ui/home.dart';
import 'package:provider/provider.dart';

import 'network/api_service.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _now = DateFormat("yyyy-MM-dd hh:mm:ss").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Provider(create: (context) => ApiService.create(),
    child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.grey[200],
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Scaffold(
        appBar: AppBar(
          title:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("PPRD DATA SENDING SYSTEM",style: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.bold,color: Colors.white,fontStyle: FontStyle.italic),),
              Text("INTERNET STATUS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow),),
              Text(_now)
            ],
          ),
        ),
        body: HomePage(),
      ),
    )
    );
  }
}
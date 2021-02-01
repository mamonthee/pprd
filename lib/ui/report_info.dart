import 'package:flutter/material.dart';

class ReportInfo extends StatelessWidget {
  Widget ReportList(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 900,
        height: 500,
        color: Colors.white,
        child: ListView.builder(
          itemBuilder: (context,index)=>Container(
            height: 50,
            width: 30,
            child: Card(child: Text("$index" ),),
          ),
        )
      ),
    );
  }

  Widget AlertInfo(){
    return Container(
      width: 400,
      height: 150,
      // padding: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(2,2),
            color: Colors.grey,
            blurRadius: 2,
            spreadRadius: 1
          )
        ]
      ),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("LAST SENDING TIME TO MPTA",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 19),),
            Text("02-Feb-2020 16:12:12",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),),
            Text("01-Jan-2020 12:2:00",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),)
          ],
        ),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // alignment: Alignment.topRight,
        // width: 625,
        height: double.infinity,
        color: Colors.blue[200],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("REPORT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26)),
            ),
            ReportList(),
            AlertInfo()
          ],
        ),
      ),
    );
  }
}

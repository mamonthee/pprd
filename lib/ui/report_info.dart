import 'package:flutter/material.dart';
import 'package:pprd/network/api_service.dart';
import 'package:pprd/network/model/api_model.dart';
import 'package:provider/provider.dart';

class ReportInfo extends StatelessWidget {
  Widget ReportList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 900,
          height: 500,
          color: Colors.white,
          child: ListView.builder(
            itemBuilder: (context, index) => Container(
              height: 50,
              width: 30,
              child: Card(
                child: Text("$index"),
              ),
            ),
          )),
    );
  }

  Widget alertInfo() {
    return Container(
      width: 400,
      height: 100,
      // padding: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(10),
          // boxShadow: [
          // BoxShadow(
          // offset: Offset(2,2),
          // color: Colors.grey,
          // blurRadius: 1,
          // spreadRadius: 1
          // )
          // ]
          ),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            // borderRadius: BorderRadius.circular(20),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "LAST SENDING TIME TO MPTA",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            ),
            Text(
              "02-Feb-2020 16:12:12",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Text(
              "01-Jan-2020 12:2:00",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   width: 200,
        //   height: 300,
        //   child: _listFutureApi(context)
        // )
        Expanded(
      child: Container(
        // alignment: Alignment.topRight,
        width: 625,
        height: double.infinity,
        color: Colors.blue[200],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text("REPORT",
                  style: TextStyle(
                      color: Colors.red[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 26)),
            ),
            Container(
              width: 900,
              height: 550,
              color: Colors.white,
              child: _listFutureApi(context),
            ),
            // ReportList(),

            alertInfo()
          ],
        ),
      ),
    );
  }

  FutureBuilder _listFutureApi(BuildContext context) {
    return FutureBuilder<List<ApiModel>>(
      future: Provider.of<ApiService>(context, listen: false).getApi(),
      builder: (BuildContext context, AsyncSnapshot<List<ApiModel>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Container(
                child: Center(
              child: Text("Something went wrong"),
            ));
          }
          final getApi = snapshot.data;
          return listReport(context: context, getApi: getApi);
          // return ReportList();
        } else {
          return Container(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }

  ListView listReport({BuildContext context, List<ApiModel> getApi}) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Text("Title"),
                title: Text(getApi[index].title),
              ),
            ),
          );
        });
  }
}

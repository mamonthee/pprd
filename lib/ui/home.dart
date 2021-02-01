import 'package:flutter/material.dart';
import 'package:pprd/ui/report_info.dart';
import 'package:pprd/information/home_info.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeInfo(),
          ReportInfo(),
        ],
      ),
    );
  }
}

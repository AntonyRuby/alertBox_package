import 'package:alert_box/alert_box.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Alert Box Screen"),
      ),
      body: Center(
        child: MaterialButton(
            child: Text("Show Dialog"),
            onPressed: () {
              CustomAlertBox.showCustomAlertBox(
                  context: context,
                  willDisplayWidget: Container(
                      child: Text("Dialog Box Successfully Displayed!")));
            }),
      ),
    );
  }
}

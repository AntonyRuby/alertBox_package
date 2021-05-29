import 'package:alert_box/alert_box.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample Alert Box Screen"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Name"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Name'),
                ),
              ),
              Center(
                child: MaterialButton(
                    color: Colors.blue,
                    child: Text(
                      "Show Dialog",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      CustomAlertBox.showCustomAlertBox(
                          context: context,
                          willDisplayWidget: Container(
                              child:
                                  Text("Dialog Box Successfully Displayed!")));
                    }),
              ),
            ],
          ),
        ));
  }
}

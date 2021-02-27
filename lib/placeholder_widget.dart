import 'package:flutter/material.dart';

class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              new Flexible(
                  child: Padding(
                padding:
                    EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 10),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num1controller,
                  decoration: InputDecoration(
                      labelStyle:
                          TextStyle(color: Colors.black87, fontSize: 24.0),
                      border: OutlineInputBorder(),
                      labelText: 'Kwh/Year',
                      contentPadding: EdgeInsets.all(20)),
                ),
              )),
            ],
          ),
          Row(
            children: <Widget>[
              new Flexible(
                  child: Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num2controller,
                  decoration: InputDecoration(
                      labelStyle:
                          TextStyle(color: Colors.black87, fontSize: 24.0),
                      border: OutlineInputBorder(),
                      labelText: 'Kwh Price',
                      contentPadding: EdgeInsets.all(20)),
                ),
              )),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.black87,
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) +
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
              Text(
                "Result: " + result,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

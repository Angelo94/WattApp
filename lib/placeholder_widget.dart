import 'dart:ffi';

import 'package:flutter/material.dart';

class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  TextEditingController num3controller = new TextEditingController();
  TextEditingController num4controller = new TextEditingController();
  TextEditingController num5controller = new TextEditingController();
  TextEditingController num6controller = new TextEditingController();
  TextEditingController num7controller = new TextEditingController();
  String result = "0";
  String hour_result = "0";
  String day_result = "0";
  String month_result = "0";
  String year_result = "0";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Row(children: <Widget>[
            new Flexible(
                child: Padding(
                    padding: EdgeInsets.only(
                        top: 50, left: 20, right: 20, bottom: 10),
                    child: new Text(
                      'If you know the media of Kwh/Year do this:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 22,
                      ),
                    )))
          ]),
          Row(
            children: <Widget>[
              new Flexible(
                  child: Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
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
                    var sum = double.parse(num1controller.text) *
                        double.parse(num2controller.text);
                    result = sum.toStringAsFixed(2);
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
          Row(children: <Widget>[
            new Flexible(
                child: Padding(
                    padding: EdgeInsets.only(
                        top: 50, left: 20, right: 20, bottom: 10),
                    child: new Text(
                      'Insert Watt and prevision of use:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 22,
                      ),
                    )))
          ]),
          Row(
            children: <Widget>[
              new Flexible(
                  child: Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num3controller,
                  decoration: InputDecoration(
                      labelStyle:
                          TextStyle(color: Colors.black87, fontSize: 24.0),
                      border: OutlineInputBorder(),
                      labelText: 'Watt',
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
                  controller: num4controller,
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
          Row(
            children: <Widget>[
              new Flexible(
                  child: Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num5controller,
                  decoration: InputDecoration(
                      labelStyle:
                          TextStyle(color: Colors.black87, fontSize: 24.0),
                      border: OutlineInputBorder(),
                      labelText: 'Daily Hours',
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
                  controller: num6controller,
                  decoration: InputDecoration(
                      labelStyle:
                          TextStyle(color: Colors.black87, fontSize: 24.0),
                      border: OutlineInputBorder(),
                      labelText: 'Day in mont',
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
                  controller: num7controller,
                  decoration: InputDecoration(
                      labelStyle:
                          TextStyle(color: Colors.black87, fontSize: 24.0),
                      border: OutlineInputBorder(),
                      labelText: 'Month in year',
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
                    var sum_hour = (double.parse(num3controller.text) *
                            double.parse(num4controller.text)) /
                        1000;
                    hour_result = sum_hour.toStringAsFixed(2);

                    var sum_day =
                        sum_hour * (double.parse(num5controller.text));
                    day_result = sum_day.toStringAsFixed(2);

                    var sum_month =
                        sum_day * (double.parse(num6controller.text));
                    month_result = sum_month.toStringAsFixed(2);

                    var sum_year =
                        sum_month * (double.parse(num7controller.text));
                    year_result = sum_year.toStringAsFixed(2);
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Hour Price: " + hour_result,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Daily Price: " + day_result,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Monthly Price: " + month_result,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Year Price: " + year_result,
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

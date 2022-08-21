import 'dart:io';

import 'package:flutter/material.dart';
import '../faren.dart';
class Eva extends StatefulWidget {
  @override
  State<Eva> createState() => _EvaState();
}

class _EvaState extends State<Eva> {
  @override
  final _controller = TextEditingController();
  final _aongsa = Game();
  var _feeblackText = "";
  var sum = 0.00;

  void handleClickGuess(){
    print('celsiustofahrenheit click');
    var guess = double.tryParse(_controller.text);
    if(guess==null){
      setState(() {
        _feeblackText = "INPUT ERROR";
      });
    }
    else{
      var result = _aongsa.celsiustofahrenheit(guess);
      setState(() {
        sum = result;
      });
    }
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Midterm Exam")),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("temperature converter"),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Please enter temperature', //ข้อความข้างใน
            ),
          ),
          ElevatedButton(
            onPressed: handleClickGuess, //เมื่อกดปุ่มให้นำไปผูกกับคลาส
            child: Text("celsius to fahrenheit"), //ข้อความบนปุ่ม
          ),
          ElevatedButton(
            onPressed: handleClickGuess, //เมื่อกดปุ่มให้นำไปผูกกับคลาส
            child: Text("celsius to kelvin"), //ข้อความบนปุ่ม
          ),
          ElevatedButton(
            onPressed: handleClickGuess, //เมื่อกดปุ่มให้นำไปผูกกับคลาส
            child: Text("fahrenheit to celsius"), //ข้อความบนปุ่ม
          ),
          ElevatedButton(
            onPressed: handleClickGuess, //เมื่อกดปุ่มให้นำไปผูกกับคลาส
            child: Text("fahrenheit to kelvin"), //ข้อความบนปุ่ม
          ),
          ElevatedButton(
            onPressed: handleClickGuess, //เมื่อกดปุ่มให้นำไปผูกกับคลาส
            child: Text("kelvin to celsius"), //ข้อความบนปุ่ม
          ),
          ElevatedButton(
            onPressed: handleClickGuess, //เมื่อกดปุ่มให้นำไปผูกกับคลาส
            child: Text("kelvin to fahrenheit"), //ข้อความบนปุ่ม
          ),
          Text(_feeblackText)
        ],
      )),
    );
  }
}

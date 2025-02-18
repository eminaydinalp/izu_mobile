import 'package:flutter/material.dart';

class Containerwidget extends StatelessWidget {
  const Containerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Widget"),
        backgroundColor: Colors.yellow,
      ),

      body: Container(
        width: 250,
        height: 250,
        //color: Colors.amber,
        child: Text(
          "Flutter Öğreniyorum"
        ),
        margin: EdgeInsets.only(top: 50, left: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}

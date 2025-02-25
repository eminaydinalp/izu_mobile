import 'package:flutter/material.dart';

class Buttonwidget extends StatefulWidget {

  @override
  State<Buttonwidget> createState() => _ButtonwidgetState();
}

class _ButtonwidgetState extends State<Buttonwidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Button Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sonuç: " + _counter.toString(),
              style: TextStyle(
                fontSize: 32
              ),
            ),

            SizedBox(height: 25,),

            ElevatedButton(
              onPressed: _pressButton,

              child: Text("Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 10
              ),
            )

          ],
        ),
      ),
    );
  }

  void _pressButton(){
    setState(() {
      _counter++;
    });
  }
}

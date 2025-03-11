import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  String? data;

  //SecondPage(this.data);
  SecondPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Second Page"),
        automaticallyImplyLeading: false,
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gelen Data : ${data}"),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:konu_anlatim/MainWidgets/TextFieldWidget.dart';
import 'package:konu_anlatim/navigator_processes/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("First Page"),
      ),
      
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondPage())

            );
          },
          child: Text("Go New Page"),
        ),
      ),
    );
  }
}

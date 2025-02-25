import 'package:flutter/material.dart';

class Columnandrow extends StatelessWidget {
  const Columnandrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Column And Row"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.green,
          ),
          SizedBox(height: 15,),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
          SizedBox(height: 15,),
          Text("Column"),
          SizedBox(height: 15,),
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}

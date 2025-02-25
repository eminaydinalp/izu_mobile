import 'package:flutter/material.dart';

class Textfieldwidget extends StatefulWidget {
  @override
  State<Textfieldwidget> createState() => _TextfieldwidgetState();
}

class _TextfieldwidgetState extends State<Textfieldwidget> {
  String _userName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("TextField Widget"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Kullanıcı Adı",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              onChanged: (value) {
                setState(() {
                  _userName = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Kullanıcı Adı: " + _userName,
            style: TextStyle(
              fontSize: 24
            ),
          ),
        ],
      ),
    );
  }
}

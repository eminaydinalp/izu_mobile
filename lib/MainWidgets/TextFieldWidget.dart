import 'package:flutter/material.dart';

class Textfieldwidget extends StatefulWidget {
  @override
  State<Textfieldwidget> createState() => _TextfieldwidgetState();
}

class _TextfieldwidgetState extends State<Textfieldwidget> {
  String _userName = "";
  TextEditingController _controller = TextEditingController();

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
                  //_userName = value;
                });
              },
              controller: _controller,
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
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: _showUserName,
            child: Text("Login"),
          )
        ],
      ),
    );
  }

  void _showUserName(){
    setState(() {
      _userName = _controller.text;
    });

  }
}

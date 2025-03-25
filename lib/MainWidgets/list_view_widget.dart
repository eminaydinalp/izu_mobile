import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Widget"),
        backgroundColor: Colors.green,
      ),

      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Öğe 1"),
              subtitle: Text("Bu bir alt başlıktır."),
              leading: Icon(Icons.start),
              trailing: Text("1"),
            ),
          ),
          ListTile(
            title: Text("Öğe 2"),
            subtitle: Text("Bu bir alt başlıktır."),
            leading: Icon(Icons.start),
            trailing: Text("2"),
          ),
          ListTile(
            title: Text("Öğe 3"),
            subtitle: Text("Bu bir alt başlıktır."),
            leading: Icon(Icons.start),
            trailing: Text("3"),
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}

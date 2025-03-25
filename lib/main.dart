
import 'package:flutter/material.dart';
import 'package:konu_anlatim/MainWidgets/ButtonWidget.dart';
import 'package:konu_anlatim/MainWidgets/ColumnAndRow.dart';
import 'package:konu_anlatim/MainWidgets/ContainerWidget.dart';
import 'package:konu_anlatim/MainWidgets/TextFieldWidget.dart';
import 'package:konu_anlatim/MainWidgets/TextWidget.dart';
import 'package:konu_anlatim/MainWidgets/list_view_builder.dart';
import 'package:konu_anlatim/MainWidgets/list_view_widget.dart';
import 'package:konu_anlatim/navigator_processes/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewBuilder()
    );
  }
}


class ScaffoldGiris extends StatelessWidget {
  const ScaffoldGiris({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İlk Proje"),
        backgroundColor: Colors.blue,
      ),
      body: Text("Herkese Merhaba"),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print("Butona basıldı");
      }),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menü")),
            DrawerHeader(child: Text("Menü")),
            DrawerHeader(child: Text("Menü")),
            DrawerHeader(child: Text("Menü"))
          ],
        ),
      ),
    );
  }
}




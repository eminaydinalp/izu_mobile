import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  const Textwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Text Widget",
          style: TextStyle(
            fontSize: 32,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.red
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Muhammet Emin AYDINALP Muhammet Emin AYDINALP"
              "Muhammet Emin AYDINALP Muhammet Emin AYDINALP"
              "Muhammet Emin AYDINALP Muhammet Emin AYDINALP",
          style: TextStyle(
              fontSize: 32,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.blue
          ),
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textDirection: TextDirection.rtl,
        ),
      )
    );
  }
}

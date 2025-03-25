import 'package:flutter/material.dart';

class CityDetail extends StatelessWidget {

  String name;
  int population;
  int plate;

  CityDetail({required this.name, required this.population, required this.plate});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City Detail"),
        backgroundColor: Colors.yellow,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Şehrin İsmi : " + name),
            Text("Şehrin Nufusu : " + population.toString()),
            Text("Şehrin Plaka Kodu : " + plate.toString()),
          ],
        ),
      ),
    );
  }
}

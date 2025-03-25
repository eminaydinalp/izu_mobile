import 'package:flutter/material.dart';
import 'package:konu_anlatim/MainWidgets/city.dart';

class ListViewBuilder extends StatelessWidget {

  List<String> _names = ["Ali", "Veli", "Ayşe", "Özge"];
  List<City> _cties = [
    City("İstanbul", 2500000, 34),
    City("Ankara", 500000, 06),
    City("İzmir", 200000, 35),
    City("Adana", 23000, 01),
    City("Bursa", 653000, 16),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder Widget"),
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        itemCount: _cties.length,
        itemBuilder: _createCties,
      ),
    );
  }

  Widget? _createNames(BuildContext context, int index) {
    return Text(_names[index]);
  }

  Widget? _createCties(BuildContext context, int index) {
    return Card(
      child: ListTile(
        title: Text(_cties[index].name),
        subtitle: Text(_cties[index].population.toString()),
        trailing: Text(_cties[index].plate.toString()),
        leading: Icon(Icons.location_city),
        onTap: (){
          print("City Name : " + _cties[index].name);
          // City Detail sayfası oluşturup, hangi
          // şehre basılırsa o şehrin bilgilerini
          // Detay sayfasında gösterelim.
        },
      ),
    );
  }
}

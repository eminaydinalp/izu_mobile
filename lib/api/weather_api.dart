import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherApi extends StatefulWidget {
  const WeatherApi({super.key});

  @override
  State<WeatherApi> createState() => _WeatherApiState();
}

class _WeatherApiState extends State<WeatherApi> {

  String api_key = "f0c879a1dfcd6d5a4f794b4feece885f";
  String description = "";
  String temp = "";
  String city = "London";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Api"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: description.isEmpty ? CircularProgressIndicator():
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${city} şehrinin hava durumu açıklaması : $description"),
            Text("${city} şehrinin hava sıcaklığı : $temp"),
          ],
        ),
      ),

    );
  }
  
  Future<void> fetchWeather() async{
    
    Uri uri = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${api_key}&units=metric");

    final response = await http.get(uri);

    if(response.statusCode == 200){
      final data = json.decode(response.body);

      setState(() {
        description = data["weather"][0]["description"];
        temp = data["main"]["temp"].toString();
      });
    }
  }
}

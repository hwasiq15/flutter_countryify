import 'package:flutter/material.dart';
import 'package:flutter_countryify/scr/data/country_data.dart';
import 'package:flutter_countryify/scr/widgets/flag_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final countryCode= "bg";
    final country = CountryData.fromCode(countryCode);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title: const Text('Flutter Countryify Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CountryFlag(
                countryCode: countryCode,
                shape: FlagShape.circle,
                size: 100,
              ),
              SizedBox(height: 20),
              Text(
                "Country Name : ${country.name}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 5),
              Text(
                "Country Code : ${country.code}",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 5),
              Text(
                "Country Currency : ${country.currency}",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 5),
              Text(
                "Country Dialing Code : ${country.phoneCode}",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

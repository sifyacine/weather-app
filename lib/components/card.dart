import 'package:flutter/material.dart';

class CardWeather extends StatelessWidget {
  const CardWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: [
            Text("data"),
            Text("data"),
            Icon(Icons.sunny),
            Text("data"),
          ],
    ));
  }
}

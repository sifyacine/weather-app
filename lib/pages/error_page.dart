import 'package:flutter/material.dart';
import 'package:weatherapp/colors.dart';

class ErrorWeather extends StatelessWidget {
  const ErrorWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("something occurred", style: TextStyle(fontSize: 22, color: kTextColor),),
            Text("try again", style: TextStyle(fontSize: 18, color: kTextColor),),
          ],
        ),));
  }
}

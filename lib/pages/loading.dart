import 'package:flutter/material.dart';
import 'package:weatherapp/colors.dart';

class LoadWeather extends StatelessWidget {
  const LoadWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: CircularProgressIndicator(
          color: kTextColor,
          backgroundColor: kTextColor.withOpacity(0.2),
          strokeWidth: 7,
        ) ,
      ),
    );
  }
}

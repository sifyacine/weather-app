import 'package:flutter/material.dart';
import 'package:weatherapp/colors.dart';
import 'package:weatherapp/components/card.dart';


class BodyWeather extends StatefulWidget {
  const BodyWeather({Key? key}) : super(key: key);

  @override
  _BodyWeatherState createState() => _BodyWeatherState();
}

class _BodyWeatherState extends State<BodyWeather> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.location_city),
            SizedBox(width: 16.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Algeria", style: TextStyle(fontSize: 22),),
                Text("Algers"),
              ],
            ),
          ],
        ),
        SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("Sunny"),
                Text("16"),
              ],
            ),
            SizedBox(width: 20,),
            Icon(
              Icons.sunny,
              color: kTextColor,
              size: 60,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CardWeather(),
            CardWeather(),
            CardWeather(),
          ],
        ),
      ],
    );
  }
}

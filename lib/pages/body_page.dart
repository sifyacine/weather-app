import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/colors.dart';
import 'package:weatherapp/components/card.dart';

import '../cubits/get weather/get_cubit.dart';
import '../model/weather_model_2.dart';


class BodyWeather extends StatefulWidget {
  const BodyWeather({Key? key}) : super(key: key);

  @override
  _BodyWeatherState createState() => _BodyWeatherState();
}

class _BodyWeatherState extends State<BodyWeather> {
  @override
  Widget build(BuildContext context) {
    Weather weather = BlocProvider.of<WeatherCubit>(context).weather!;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.location_pin, color: kTextColor, size: 55,),
            SizedBox(width: 16.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(weather.location.name , style: TextStyle(fontSize: 26, color: kTextColor),),
                Text(weather.location.country, style: TextStyle(fontSize: 18, color: kTextColor),),
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
                Text(weather.current.condition.text, style: TextStyle(fontSize: 26, color: kTextColor),),
                Text(weather.current.tempC.toString(), style: TextStyle(fontSize: 48, color: kTextColor),),
              ],
            ),
            SizedBox(width: 40,),
            Icon(
              Icons.sunny,
              color: kTextColor,
              size: 60,
            ),
          ],
        ),
        SizedBox(
          height: 120,
        ),
        Row(
          children: [
            CardWeather(index: 0),
            CardWeather(index: 1),
            CardWeather(index: 2),
          ],
        ),
      ],
    );
  }
}

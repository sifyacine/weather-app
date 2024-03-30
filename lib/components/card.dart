import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../colors.dart';
import '../cubits/get weather/get_cubit.dart';
import '../model/weather_model_2.dart';

class CardWeather extends StatefulWidget {
  CardWeather({required this.index, super.key});
  int index;

  @override
  State<CardWeather> createState() => _CardWeatherState();
}

class _CardWeatherState extends State<CardWeather> {
  @override
  Widget build(BuildContext context) {

    Weather weather = BlocProvider.of<WeatherCubit>(context).weather!;
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: kTextColor.withOpacity(0.1)
            ),
            child: Column(
              children: [
                Text(DateFormat.EEEE().format(weather.forecast.forecastday[widget.index].date), style: TextStyle(fontSize: 16, color: kTextColor),),
                const SizedBox(height: 12.0,),
                Text(weather.forecast.forecastday[widget.index].day.condition.text, style: TextStyle(fontSize: 16, color: kTextColor),),
                const SizedBox(height: 12.0,),
                Icon(Icons.sunny, color: kTextColor,size: 28,),
                const SizedBox(height: 12.0,),
                Text(weather.forecast.forecastday[widget.index].day.avgtempC.toString(), style: TextStyle(fontSize: 16, color: kTextColor),),
              ],
    ),
          ),
        ));
  }
}

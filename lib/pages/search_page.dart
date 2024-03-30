import 'package:flutter/material.dart';
import 'package:weatherapp/colors.dart';


class SearchWeather extends StatefulWidget {
  const SearchWeather({Key? key}) : super(key: key);

  @override
  _SearchWeatherState createState() => _SearchWeatherState();
}

class _SearchWeatherState extends State<SearchWeather> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              height: 80,
              decoration: BoxDecoration(
                color: kTextColor.withOpacity(0.4),
                borderRadius:BorderRadius.circular(12.0)
              ),
              child: Center(
                child: TextField(
                  cursorColor: kBackgroundColor,
                  decoration: InputDecoration(
                    hintText: "Search ...",
                    suffix: Icon(Icons.search)
                  ),
                ),
              ),
            ))
      ],
    );
  }
}

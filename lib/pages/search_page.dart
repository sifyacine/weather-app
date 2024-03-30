import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/colors.dart';

import '../cubits/get weather/get_cubit.dart';


class SearchWeather extends StatelessWidget {
  const SearchWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchCon = TextEditingController();
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
                  controller: searchCon,
                  onSubmitted: (value){
                    BlocProvider.of<WeatherCubit>(context).getWeather(loc: value);
                  },
                  cursorColor: kBackgroundColor,
                  decoration: const InputDecoration(
                    hintText: "Search here ...",
                    suffix: Icon(Icons.search)
                  ),
                ),
              ),
            ))
      ],
    );
  }
}

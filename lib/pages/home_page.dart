import 'package:flutter/material.dart';
import 'package:weatherapp/colors.dart';
import 'package:weatherapp/pages/body_page.dart';
import 'package:weatherapp/pages/error_page.dart';
import 'package:weatherapp/pages/loading.dart';
import 'package:weatherapp/pages/search_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: const Text("yacine",),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchWeather(),
            LoadingWeather(),
            Spacer(),
            BodyWeather(),
            //ErrorWeather(),
          ],
        ),
      ),
    );
  }
}

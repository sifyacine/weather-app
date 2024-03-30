import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/colors.dart';
import 'package:weatherapp/cubits/get%20weather/get_cubit.dart';
import 'package:weatherapp/cubits/get%20weather/get_state.dart';
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
  bool isLoading = true;

  
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WeatherCubit>(context).getWeather(loc: "Algeria");
  }

  Widget build(BuildContext context) {
    //Weather weather = BlocProvider.of<WeatherCubit>(context).weather!;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: Text("yacine", style: TextStyle(color: kTextColor,),),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchWeather(),
            Spacer(),
            BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
              if (state is LoadingWeather){
                return LoadWeather();
              }else if (state is SuccessWeather){
                return BodyWeather();
              }else{
                return ErrorWeather();
              }
            },),
          ],
        ),
      ),
    );
  }
}

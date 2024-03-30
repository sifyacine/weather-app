import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/model/weather_model_2.dart';
import 'package:weatherapp/services/dio.dart';
import 'get_state.dart';

class WeatherCubit extends Cubit<WeatherState>{
  // initialize
  WeatherCubit() : super(InitWeather());
  Weather? weather;
  void getWeather({required String loc}) async {
    //loading
    emit(LoadingWeather());
    try{
      weather = await WeatherDio().getHttp(loc: loc);
      //success
      emit(SuccessWeather());
    }catch(e){
      //fail
      emit(FailWeather(error: e.toString()));
    }
  }
}
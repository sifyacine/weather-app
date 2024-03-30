class WeatherState{}

class InitWeather extends WeatherState{}

class LoadingWeather extends WeatherState{}

class SuccessWeather extends WeatherState{}

class FailWeather extends WeatherState{
  FailWeather({required String error});
}


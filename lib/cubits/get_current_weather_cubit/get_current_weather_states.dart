import 'package:sky_sense_weather_app/models/weather_model.dart';

class CurrentWeatherState {}

class WeatherInitialState extends CurrentWeatherState {}  // No Weather State

class WeatherLoadedState extends CurrentWeatherState
{
  final WeatherModel weatherModel;
  WeatherLoadedState(this.weatherModel);
}

class WeatherFailureState extends CurrentWeatherState
{
  final String errorMessage;
  WeatherFailureState(this.errorMessage);
}
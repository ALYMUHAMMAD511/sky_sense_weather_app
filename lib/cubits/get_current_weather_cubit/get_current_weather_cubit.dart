import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_sense_weather_app/cubits/get_current_weather_cubit/get_current_weather_states.dart';
import 'package:sky_sense_weather_app/models/weather_model.dart';
import 'package:sky_sense_weather_app/services/weather_service.dart';

class GetCurrentWeatherCubit extends Cubit<CurrentWeatherState> {

  GetCurrentWeatherCubit() : super(WeatherInitialState()); // Initial State (No Weather State)

  WeatherModel? weatherModel;

  getCurrentWeather({required String cityName}) async
  {
    emit(WeatherInitialState());
    try {
      weatherModel = await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel!));
    }
    catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }
}
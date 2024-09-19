import 'package:intl/intl.dart';

class WeatherModel
{
final String cityName;
final String date;
final double currentTemp;
final double maxTemp;
final double minTemp;
final String condition;
final double wind;
final int humidity;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.currentTemp,
    required this.maxTemp,
    required this.minTemp,
    required this.condition,
    required this.wind,
    required this.humidity
  });

  factory WeatherModel.fromJson(json)
  {
    return WeatherModel(
        cityName: json['location']['name'],
        date: formattedDate,
        currentTemp: json['current']['temp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        condition: json['current']['condition']['text'],
        wind: json['current']['wind_kph'],
        humidity: json['current']['humidity'],
    );
  }
}

DateTime now = DateTime.now();
String formattedDate = DateFormat('EEEE, d MMMM').format(now);

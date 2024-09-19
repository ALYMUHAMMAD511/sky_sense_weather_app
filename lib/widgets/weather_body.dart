import 'package:flutter/material.dart';
import 'package:sky_sense_weather_app/models/weather_model.dart';
import 'package:sky_sense_weather_app/widgets/body_background.dart';
import 'package:sky_sense_weather_app/widgets/custom_app_bar.dart';
import 'package:sky_sense_weather_app/widgets/weather_item.dart';
import 'package:sky_sense_weather_app/widgets/weather_search_item.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({super.key, required this.weather});

  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    return BodyBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: customAppBar(context: context),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const WeatherSearchItem(),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/home_label.png',
                ),
                const WeatherItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

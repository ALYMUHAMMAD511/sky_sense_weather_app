import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sky_sense_weather_app/models/weather_model.dart';
import '../cubits/get_current_weather_cubit/get_current_weather_cubit.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = BlocProvider.of<GetCurrentWeatherCubit>(context).weather!;
    return Container(
      height: 370,
      width: 340,
      decoration: BoxDecoration(
        color: HexColor('30FFFFFF'),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          children:
          [
            const Spacer(
              flex: 3,
            ),
            Text(
              weatherModel.date,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: 'Poppins',
                shadows: [
                  Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Text(
                    'Min\n${weatherModel.minTemp.round()}°',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      fontFamily: 'Poppins',
                      shadows: [
                        Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
                      ],
                    ),
                  ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                    '${weatherModel.currentTemp.round()}°',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 75,
                      fontFamily: 'Poppins',
                      shadows: [
                        Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
                      ],
                    ),
                  ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                    'Max\n${weatherModel.maxTemp.round()}°',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      fontFamily: 'Poppins',
                      shadows: [
                        Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
                      ],
                    ),
                  ),
                const Spacer(
                  flex: 1,
                ),
              ],
              ),
            const Spacer(
              flex: 1,
            ),
            Text(
              weatherModel.condition,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
                fontFamily: 'Poppins',
                shadows: [
                  Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                const Spacer(
                  flex: 1,
                ),
                SvgPicture.asset(
              'assets/images/wind_icon.svg',
                  width: 30,
                  height: 30,
            ),
                const Spacer(
                  flex: 1,
                ),
                const Text(
                  'Wind',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
                    ],
                    fontFamily: 'Poppins',
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                      '${weatherModel.wind.round()} km/h',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
                        ],
                        fontFamily: 'Poppins',
                      ),
                    ),
                const Spacer(
                  flex: 1,
                ),
                ],
              ),
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                const Spacer(
                  flex: 2,
                ),
                SvgPicture.asset(
                  'assets/images/humidity_icon.svg',
                  width: 30,
                  height: 30,
                ),
                const Spacer(
                  flex: 2,
                ),
                const Text(
                  'Hum',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
                    ],
                    fontFamily: 'Poppins',
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                Text(
                  '${weatherModel.humidity} %',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
                    ],
                    fontFamily: 'Poppins',
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}

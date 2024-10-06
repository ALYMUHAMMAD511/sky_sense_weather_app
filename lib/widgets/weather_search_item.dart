import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sky_sense_weather_app/models/weather_model.dart';
import 'package:sky_sense_weather_app/views/search_view.dart';

import '../cubits/get_current_weather_cubit/get_current_weather_cubit.dart';

class WeatherSearchItem extends StatelessWidget {
  const WeatherSearchItem({super.key});
  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = BlocProvider.of<GetCurrentWeatherCubit>(context).weather!;
    return  Padding(
      padding: const EdgeInsets.all(22.0),
      child: Row(
        children:
        [
          SvgPicture.asset(
            'assets/images/location_icon.svg',
            width: 30,
            height: 30,
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            weatherModel.cityName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26,
              fontFamily: 'Poppins',
              shadows: [
                Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
              ],
            ),
          ),
          const Spacer(
            flex: 8,
          ),
          IconButton(
            onPressed: ()
            {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchView(),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 34,
              shadows: [
                Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
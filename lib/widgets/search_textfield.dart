import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_sense_weather_app/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: TextField(
              onSubmitted: (value) async
              {
                var getCurrentWeatherCubit = BlocProvider.of<GetCurrentWeatherCubit>(context);
                await getCurrentWeatherCubit.getWeather(cityName: value);
                // ignore: use_build_context_synchronously
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(25),
                fillColor: Colors.white,
                focusColor: Colors.white,
                suffixIcon: const Icon(Icons.search),
                hintText: 'Search a City',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                filled: true,
              ),
            ),
          ),
        );
  }
}

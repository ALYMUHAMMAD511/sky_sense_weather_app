import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_sense_weather_app/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';
import 'package:sky_sense_weather_app/cubits/get_current_weather_cubit/get_current_weather_states.dart';
import 'package:sky_sense_weather_app/widgets/no_weather_body.dart';
import 'package:sky_sense_weather_app/widgets/weather_body.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCurrentWeatherCubit,CurrentWeatherState>(
        builder: (context, state)
        {
          if(state is WeatherInitialState)
            {
              return const NoWeatherBody();
            }
          else if (state is WeatherSuccessState)
            {
              return WeatherBody(weather: state.weatherModel);
            }
          else
            {
              return const Center(
                child: Text(
                    'Oops, There was an Error, Try Again Later',
                ),
              );
            }
        }
    );

  }
}
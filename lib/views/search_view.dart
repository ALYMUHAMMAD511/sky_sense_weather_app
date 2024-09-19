import 'package:flutter/material.dart';
import 'package:sky_sense_weather_app/widgets/body_background.dart';
import 'package:sky_sense_weather_app/widgets/custom_app_bar.dart';
import 'package:sky_sense_weather_app/widgets/search_textfield.dart';


class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: customAppBar(context: context),
      body: const BodyBackground(
          child:Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SearchTextField(),
          ),
      ),
    ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:sky_sense_weather_app/widgets/body_background.dart';
import 'package:sky_sense_weather_app/widgets/custom_app_bar.dart';

import '../views/search_view.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: customAppBar(context: context),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(35.0),
              child: Center(
                  child: Text(
                    'There is no Weather 😔 Start Searching a City by Pressing on the Search Icon Below',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      shadows: [
                        Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
                      ],
                    ),
                  ),
              ),
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
                size: 50,
                shadows: [
                  Shadow(color: Colors.black26, offset: Offset(4,4), blurRadius: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

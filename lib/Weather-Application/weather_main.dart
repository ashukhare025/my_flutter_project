import 'package:flutter/material.dart';
import 'package:my_project/Weather-Application/Provider/forecast/forecast_provider.dart';
import 'package:my_project/Weather-Application/Provider/home/home_provider.dart';
import 'package:my_project/Weather-Application/Provider/main/main_provider.dart';
import 'package:my_project/Weather-Application/Provider/search/search_provider.dart';
import 'package:my_project/Weather-Application/Provider/weather/weather_provider.dart';
import 'package:my_project/Weather-Application/Screen/main/main_screen.dart';
import 'package:my_project/Weather-Application/data/api/weather_api.dart';
import 'package:my_project/Weather-Application/data/repository/weather_repo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(WeatherMainScreen());
}

class WeatherMainScreen extends StatelessWidget {
  const WeatherMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainProvider()),
        Provider(create: (context) => WeatherApi()),
        Provider(create: (context) => WeatherRepo(context.read<WeatherApi>())),
        ChangeNotifierProvider(
          create: (context) => HomeProvider(context.read<WeatherRepo>()),
        ),
        ChangeNotifierProvider(
          create: (context) => ForecastProvider(context.read<WeatherRepo>()),
        ),
        ChangeNotifierProvider(
          create: (context) => SearchProvider(context.read<WeatherRepo>()),
        ),
        ChangeNotifierProvider(
          create: (context) => WeatherProvider(context.read<WeatherRepo>()),
        ),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: MainScreen()),
    );
  }
}

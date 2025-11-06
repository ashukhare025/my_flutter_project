import 'package:flutter/material.dart';
import 'package:my_project/Weather-Application/Provider/main/main_provider.dart';
import 'package:my_project/Weather-Application/Screen/Forecast/forecast.dart';
import 'package:my_project/Weather-Application/Screen/home/weather_home.dart';
import 'package:my_project/Weather-Application/Screen/search/weather_search.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> widgets = [WeatherHome(), WeatherSearch(), WeatherForecast()];
  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Provider = context.watch<MainProvider>();
    return Scaffold(
      body: widgets[Provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          Provider.changeIndex(index);
          // setState(() {
          //   currentIndex = index;
          // });
        },
        currentIndex: Provider.currentIndex,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_circle),
            label: 'Forecast',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_project/Weather-Application/Provider/forecast/forecast_provider.dart';
import 'package:my_project/Weather-Application/Screen/Forecast/ForecastWidget/item_forecast_day.dart';
import 'package:provider/provider.dart';

class WeatherForecast extends StatelessWidget {
  const WeatherForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ForecastProvider>(
      builder: (context, provider, child) {
        return provider.loading
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: [
                  for (var day in provider.forecastDays)
                    ItemForecastDay(forecastDay: day)
                ],
              );
      },
    );
  }
}

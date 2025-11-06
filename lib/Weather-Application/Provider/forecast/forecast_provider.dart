import 'package:flutter/material.dart';
import 'package:my_project/Weather-Application/data/models/forecastday_model.dart';
import 'package:my_project/Weather-Application/data/repository/weather_repo.dart';

class ForecastProvider with ChangeNotifier {
  WeatherRepo repo;
  List<ForecastdayModel> forecastDays = [];
  bool loading = false;

  ForecastProvider(this.repo) {
    getForecast();
  }

  getForecast() async {
    loading = true;
    notifyListeners();
    forecastDays = await repo.getForecast('Indore', 2);
    loading = false;
    notifyListeners();
  }
}

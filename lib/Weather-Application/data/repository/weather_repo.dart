import 'package:my_project/Weather-Application/data/api/weather_api.dart';
import 'package:my_project/Weather-Application/data/models/current_weather_response.dart';
import 'package:my_project/Weather-Application/data/models/forecastday_model.dart';
import 'package:my_project/Weather-Application/data/models/search_model.dart';

class WeatherRepo {
  WeatherApi api;

  WeatherRepo(this.api);

  Future<CurrentWeatherResponse?> getCurrentWeather(String city) async {
    CurrentWeatherResponse? response = await api.getCurrentWeather(city);
    return response;
  }

  Future<List<ForecastdayModel>> getForecast(String city, int days) async {
    List<ForecastdayModel> forecastDays = await api.getForecast(city, days);
    return forecastDays;
  }

  Future<List<SearchModel>> searchRegions(String city) async {
    List<SearchModel> items = await api.searchRegion(city);
    return items;
  }
}

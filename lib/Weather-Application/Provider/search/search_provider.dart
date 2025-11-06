import 'package:flutter/material.dart';
import 'package:my_project/Weather-Application/data/models/search_model.dart';
import 'package:my_project/Weather-Application/data/repository/weather_repo.dart';

class SearchProvider with ChangeNotifier {
  WeatherRepo repo;
  List<SearchModel> items = [];
  bool loading = false;

  SearchProvider(this.repo);

  searchRegion(String city) async {
    loading = true;
    notifyListeners();
    items = await repo.searchRegions(city);
    loading = false;
    notifyListeners();
  }
}

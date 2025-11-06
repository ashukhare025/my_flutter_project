import 'package:flutter/material.dart';
import 'package:my_project/Weather-Application/Provider/search/search_provider.dart';
import 'package:my_project/Weather-Application/Screen/weather/weather_screen.dart';
import 'package:provider/provider.dart';

class WeatherSearch extends StatefulWidget {
  const WeatherSearch({super.key});

  @override
  State<WeatherSearch> createState() => _WeatherSearchState();
}

class _WeatherSearchState extends State<WeatherSearch> {
  final search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(
      builder: (context, provider, child) {
        return ListView(
          padding: EdgeInsets.all(15),
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: search,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (search.text.isNotEmpty) {
                      provider.searchRegion(search.text);
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            provider.loading
                ? Center(child: CircularProgressIndicator())
                : SizedBox(),
            for (var item in provider.items)
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WeatherScreen(item: item),
                    ),
                  );
                },
                title: Text(item.name ?? ''),
                subtitle: Text('${item.region} (${item.country})'),
              ),
          ],
        );
      },
    );
  }
}

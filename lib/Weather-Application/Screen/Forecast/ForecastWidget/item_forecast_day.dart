import 'package:flutter/material.dart';
import 'package:my_project/Weather-Application/Screen/Forecast/ForecastWidget/item_hourly_update.dart';
import 'package:my_project/Weather-Application/data/models/forecastday_model.dart';

class ItemForecastDay extends StatelessWidget {
  final ForecastdayModel forecastDay;

  const ItemForecastDay({super.key, required this.forecastDay});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade50,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          ListTile(title: Text('Date'), trailing: Text(forecastDay.date ?? '')),
          ListTile(
            title: Text('Condition'),
            trailing: Text(forecastDay.day?.condition?.text ?? ''),
            leading: Image.network(
              forecastDay.day?.condition?.icon?.replaceFirst(
                    '//',
                    'https://',
                  ) ??
                  '',
            ),
          ),
          ListTile(
            title: Text('Max Temperature (c)'),
            trailing: Text(forecastDay.day?.maxtempC.toString() ?? ''),
          ),
          ListTile(
            title: Text('Min Temperature (c)'),
            trailing: Text(forecastDay.day?.mintempC.toString() ?? ''),
          ),
          ListTile(
            title: Text('Sunset'),
            trailing: Text(forecastDay.astro?.sunset ?? ''),
          ),
          ListTile(
            title: Text('Sunrise'),
            trailing: Text(forecastDay.astro?.sunrise ?? ''),
          ),
          Divider(),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var hour in forecastDay.hour ?? [])
                  ItemHourlyUpdate(hour: hour),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

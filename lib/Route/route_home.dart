import 'package:flutter/material.dart';
import 'package:my_project/Route/RouteCustom/route_helper.dart';

class RouteHome extends StatelessWidget {
  const RouteHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouterHelper.profile,
                  arguments: 'Ashu',
                );
              },
              child: Text("Go to Profile"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouterHelper.settings,
                  arguments: {'name': 'Ashu', 'email': 'ashu@gmail.com'},
                );
              },
              child: Text("Go to settings"),
            ),
          ],
        ),
      ),
    );
  }
}

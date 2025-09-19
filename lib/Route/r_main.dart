import 'package:flutter/material.dart';
import 'package:my_project/Route/RouteCustom/route_helper.dart';


void main() {
  runApp(RouteScreen());
}

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routing',
      // routes: myRouts(),
      routes: RouterHelper.myRouts(),

      //{
      // '/': (context) => RouteHome(),
      // '/profile': (context) => RouteProfile(),
      // '/settings': (_) => RouteSettingScreen(),
      // },
      // onGenerateRoute: (RouteSettings settings) => myGenerateRouts(settings),
      onGenerateRoute: (RouteSettings settings) =>
          RouterHelper.myGenerateRouts(settings),
      // {return myGenerateRouts(settings)}
    );
  }
}

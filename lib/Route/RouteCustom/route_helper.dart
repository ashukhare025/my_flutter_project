import 'package:flutter/material.dart';
import 'package:my_project/Route/r_profile_screen.dart';
import 'package:my_project/Route/r_setting_screen.dart';
import 'package:my_project/Route/route_home.dart';

// myRouts() => {'/': (context) => RouteHome()};
//
// //{return {'/': (context) => RouteHome()};}
//
// myGenerateRouts(RouteSettings settings) {
//   switch (settings.name) {
//     case '/profile':
//       {
//         String name = settings.arguments as String;
//         return MaterialPageRoute(
//           builder: (context) {
//             return RouteProfile(name: name);
//           },
//         );
//       }
//     case '/settings':
//       {
//         Map data = settings.arguments as Map;
//         return MaterialPageRoute(
//           builder: (_) =>
//               RouteSettingScreen(name: data['name'], email: data['email']),
//         );
//       }
//   }
// }

class RouterHelper {
  static String home = '/';
  static const String profile = '/profile';
  static const String settings = '/settings';

  static myRouts() => {home: (context) => RouteHome()};

  //{return {'/': (context) => RouteHome()};}

  static myGenerateRouts(RouteSettings setting) {
    switch (setting.name) {
      case profile:
        {
          String name = setting.arguments as String;
          return MaterialPageRoute(
            builder: (context) {
              return RouteProfile(name: name);
            },
          );
        }
      case settings:
        {
          Map data = setting.arguments as Map;
          return MaterialPageRoute(
            builder: (_) =>
                RouteSettingScreen(name: data['name'], email: data['email']),
          );
        }
    }
  }
}

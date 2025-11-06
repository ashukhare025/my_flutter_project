import 'package:flutter/material.dart';
import 'package:my_project/Provider/providers/home/home_provider.dart';
import 'package:my_project/Provider/providers/settings/settings_provider.dart';
import 'package:my_project/Provider/screen/home/home_screen_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ProviderMain());
}

class ProviderMain extends StatelessWidget {
  const ProviderMain({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingProvider(),
      child: Consumer<SettingProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: provider.mode,
            darkTheme: ThemeData.dark(),
            home: ChangeNotifierProvider(
              create: (context) => HomeProvider(),
              child: HomeScreenProvider(),
            ),
          );
        },
      ),
    );
  }
}

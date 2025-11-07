import 'package:flutter/material.dart';
import 'package:my_project/Localization/providers/app_provider.dart';
import 'package:my_project/Localization/screen/home/home_screen.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';


void main() {
  runApp(LocalMain());
}

class LocalMain extends StatelessWidget {
  const LocalMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppProvider(Locale('en'))),
      ],
      child: Consumer<AppProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            // localizationsDelegates: [
            //   AppLocalizations.delegate,
            //   GlobalMaterialLocalizations.delegate,
            //   GlobalWidgetsLocalizations.delegate,
            //   GlobalCupertinoLocalizations.delegate,
            // ],
            // supportedLocales: [Locale('en'), Locale('hi')],
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: provider.locale,
            debugShowCheckedModeBanner: false,
            home: LocalHomeScreen(),
          );
        },
      ),
    );
  }
}

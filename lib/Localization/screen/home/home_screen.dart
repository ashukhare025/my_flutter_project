import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/Localization/providers/app_provider.dart';

import '../../../l10n/app_localizations.dart';



class LocalHomeScreen extends StatelessWidget {
  const LocalHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appBarTitle),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            Text(
              AppLocalizations.of(context)!.bodyMsg,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            ElevatedButton(
              onPressed: () {
                final provider = context.read<AppProvider>();
                if (AppLocalizations.of(context)!.localeName == 'hi') {
                  provider.changeLanguage(Locale('en'));
                } else {
                  provider.changeLanguage(Locale('hi'));
                }
                // provider.changeLanguage(Locale('hi'));
              },
              child: Text(AppLocalizations.of(context)!.changeLanguage),
            ),
          ],
        ),
      ),
    );
  }
}

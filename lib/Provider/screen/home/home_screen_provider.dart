import 'package:flutter/material.dart';
import 'package:my_project/Provider/providers/home/home_provider.dart';
import 'package:my_project/Provider/providers/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class HomeScreenProvider extends StatelessWidget {
  const HomeScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build function called ');
    return Scaffold(
      appBar: AppBar(title: Text("Provider"), centerTitle: true),
      // body: Center(
      //   child: Consumer<HomeProvider>(
      //     builder: (context, provider, child) {
      //       return Text(
      //         provider.count.toString(),
      //         style: Theme.of(context).textTheme.displayLarge,
      //       );
      //     },
      //   ),
      // ),
      body: Consumer<SettingProvider>(
        builder: (context, provider, child) {
          return DropdownButton<ThemeMode>(
            value: provider.mode,
            onChanged: (value) {
              provider.switchTheme(value!);
              // Provider.of<SettingProvider>(
              //   context,
              //   listen: false,
              // ).switchTheme(value!);
            },
            items: [
              DropdownMenuItem<ThemeMode>(
                value: ThemeMode.system,
                child: Text('System'),
              ),
              DropdownMenuItem<ThemeMode>(
                value: ThemeMode.light,
                child: Text('Light'),
              ),
              DropdownMenuItem<ThemeMode>(
                value: ThemeMode.dark,
                child: Text('Dark'),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<HomeProvider>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

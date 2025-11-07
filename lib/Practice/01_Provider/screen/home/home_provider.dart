import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/provider.dart';

class HomeProvider extends StatefulWidget {
  const HomeProvider({super.key});

  @override
  State<HomeProvider> createState() => _HomeProviderState();
}

class _HomeProviderState extends State<HomeProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => ProviderData(),
        child: Consumer<ProviderData>(
          builder: (context, provider, child) {
            // var data = context.watch<ProviderData>().data;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(provider.data),
                  ElevatedButton(
                    onPressed: () {
                      provider.changeData();
                    },
                    child: Text("Change Data"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_project/StateManagement/Providers/counter_provider.dart';
import 'package:my_project/StateManagement/Providers/list_map_provider.dart';
import 'package:provider/provider.dart';
import 'screen/List/list_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ListMapProvider()),
        ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: StateMain(),
    ),
  );
}

class StateMain extends StatelessWidget {
  const StateMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ChangeNotifierProvider(
      //   create: (_) => ListMapProvider(),
      //   child: ChangeNotifierProvider(
      //     create: (context) => CounterProvider(),
      //     child: ListPage(),
      //   ),
      // ),

      /// MultiProvider

      // home: MultiProvider(
      //   providers: [
      //     ChangeNotifierProvider(create: (context) => ListMapProvider()),
      //     ChangeNotifierProvider(create: (context) => CounterProvider()),
      //   ],
      //   child: ListPage(),
      // ),
      home: ListPage(),
    );
  }
}

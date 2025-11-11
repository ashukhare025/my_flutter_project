import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CounterPage/counter_page.dart';
import 'bloc/counter_bloc.dart';

void main() {
  runApp(CounterMain());
}

class CounterMain extends StatelessWidget {
  const CounterMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterPage(),
      ),
    );
  }
}

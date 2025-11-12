import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/BlocWatchAndRead/blocs/counter_blocs.dart';

void main() {
  runApp(
    BlocProvider(create: (context) => CounterBloc(), child: WatchReadScreen()),
  );
}

class WatchReadScreen extends StatelessWidget {
  const WatchReadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWatchReadScreen(),
    );
  }
}

class MyWatchReadScreen extends StatelessWidget {
  const MyWatchReadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Context.read vs context.watch'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // BlocBuilder<CounterBloc, int>(
            //   builder: (context, state) {
            //     return Text(state.toString());
            //   },
            // ),
            Text(
              "Counter value ${context.watch<CounterBloc>().state}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // BlocProvider.of<CounterBloc>(context).add(IncrementCounter());
                context.read<CounterBloc>().add(IncrementCounter());
              },
              child: Text("Increment Counter"),
            ),
          ],
        ),
      ),
    );
  }
}

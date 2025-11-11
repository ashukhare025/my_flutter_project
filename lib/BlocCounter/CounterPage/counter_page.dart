import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/BlocCounter/bloc/counter_bloc.dart';
import 'package:my_project/BlocCounter/bloc/counter_event.dart';
import 'package:my_project/BlocCounter/bloc/counter_state.dart';

class CounterPage extends StatelessWidget {
  int counter = 0;

  CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Page'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterInitialState) {
                  return Text(
                    state.count.toString(),
                    style: TextStyle(fontSize: 25),
                  );
                } else if (state is CounterIncrementState) {
                  return Text(state.incCount.toString(), style: TextStyle());
                } else if (state is CounterDecrementState) {
                  return Text(state.decCount.toString(), style: TextStyle());
                } else {
                  return Container(height: 50, width: 50, color: Colors.red);
                }
              },
              listener: (context, state) {
                if (state is CounterIncrementState) {
                  if (state.incCount == 5) {
                    var snack = SnackBar(content: Text('Increment Button tap'));
                    ScaffoldMessenger.of(context).showSnackBar(snack);
                  }

                  // var snack = SnackBar(content: Text('Increment Button tap'));
                  // ScaffoldMessenger.of(context).showSnackBar(snack);
                } else if (state is CounterDecrementState) {
                  var snack = SnackBar(content: Text('Decrement Button tap'));
                  ScaffoldMessenger.of(context).showSnackBar(snack);
                }
              },
            ),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(
                      context,
                    ).add(CounterIncrementEvent(incCount: counter++));
                  },
                  child: Text('+', style: TextStyle(fontSize: 25)),
                ),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(
                      context,
                    ).add(CounterDecrementEvent(decCount: counter--));
                  },
                  child: Text('-', style: TextStyle(fontSize: 25)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

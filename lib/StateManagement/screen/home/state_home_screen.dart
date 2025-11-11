import 'package:flutter/material.dart';
import 'package:my_project/StateManagement/Providers/counter_provider.dart';
import 'package:provider/provider.dart';

class StateHomePage extends StatelessWidget {
  const StateHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print("Build Function called");
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (ctx, _, __) {
            print('consumer build function');
            return Text(
              // '${Provider.of<CounterProvider>(ctx, listen: true).getCount()}',
              '${ctx.watch<CounterProvider>().getCount()}',
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              // Provider.of<CounterProvider>(context, listen: false).incrementCount();
              context.read<CounterProvider>().decrementCount();
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              // Provider.of<CounterProvider>(context, listen: false).incrementCount();
              context.read<CounterProvider>().incrementCount(5);
            },
          ),
        ],
      ),
    );
  }
}

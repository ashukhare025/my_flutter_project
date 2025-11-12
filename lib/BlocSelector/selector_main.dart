import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/BlocSelector/blocs/profile_bloc.dart';

void main() {
  runApp(SelectorScreen());
}

class SelectorScreen extends StatelessWidget {
  const SelectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ProfileBloc(),
        child: SelectorHome(),
      ),
    );
  }
}

class SelectorHome extends StatelessWidget {
  const SelectorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BlocSelector'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // BlocBuilder<ProfileBloc, ProfileState>(
            //   builder: (context, state) {
            //     print("---------------first blocBuilder----------");
            //     return Text(
            //       "Username:${state.username}",
            //       style: TextStyle(fontSize: 24),
            //     );
            //   },
            // ),
            // SizedBox(height: 10),
            //
            // BlocBuilder<ProfileBloc, ProfileState>(
            //   builder: (context, state) {
            //     print("------------second blockBuilder-------------");
            //     return Text("Age:${state.age}", style: TextStyle(fontSize: 24));
            //   },
            // ),
            BlocSelector<ProfileBloc, ProfileState, String>(
              selector: (state) => state.username,
              builder: (context, username) {
                print("----first blockSelector");
                return Text(
                  "Username:$username",
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            BlocSelector<ProfileBloc, ProfileState, int>(
              selector: (state) => state.age,
              builder: (context, age) {
                print("----second blockSelector");
                return Text("Username:$age", style: TextStyle(fontSize: 24));
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () =>
                  context.read<ProfileBloc>().updateUserName("FlutterDev"),
              child: Text('update userName'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.read<ProfileBloc>().updateAge(30),
              child: Text('update age'),
            ),
          ],
        ),
      ),
    );
  }
}

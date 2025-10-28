import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/Bloc/Auth/auth_bloc.dart';

import 'Home/bloc_home.dart';

void main() {
  runApp(BlocMain());
}

class BlocMain extends StatelessWidget {
  const BlocMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (context) => AuthBloc(), child: BlocHome()),
    );
  }
}

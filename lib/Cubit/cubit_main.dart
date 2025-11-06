import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Auth/auth_cubit.dart';
import 'home/cubit_home.dart';

void main() {
  runApp(CubitMain());
}

class CubitMain extends StatelessWidget {
  const CubitMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (context) => AuthCubit(), child: CubitHome()),
    );
  }
}

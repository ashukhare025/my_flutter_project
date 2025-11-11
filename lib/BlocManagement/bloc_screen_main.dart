import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/BlocManagement/bloc/login_bloc.dart';

import 'Screen/LoginPage/bloc_login_page.dart';

void main() {
  runApp(BlockMainScreen());
}

class BlockMainScreen extends StatelessWidget {
  const BlockMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => LoginBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocLoginPage(),
      ),
    );
  }
}

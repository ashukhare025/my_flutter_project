import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/Bloc/Auth/auth_bloc.dart';
import 'package:my_project/Bloc/Auth/auth_event.dart';
import 'package:my_project/Bloc/Auth/auth_state.dart';

class BlocHome extends StatelessWidget {
  const BlocHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bloc'), centerTitle: true),
      // body: BlocBuilder<AuthBloc, AuthState>(
      //   builder: (context, state) {
      //     if (state is AuthLoadingState) {
      //       return Center(child: CircularProgressIndicator());
      //     }
      //     if (state is AuthSuccessState) {
      //       return Center(child: Text('Login Successfully'));
      //     }
      //     if (state is AuthFailureState) {
      //       return Center(child: Text(state.msg));
      //     }
      //     return SizedBox();
      //   },
      // ),
      // body: BlocListener<AuthBloc, AuthState>(
      //   listener: (context, state) {
      //     if (state is AuthSuccessState) {
      //       ScaffoldMessenger.of(
      //         context,
      //       ).showSnackBar(SnackBar(content: Text('Login Successfully')));
      //     }
      //   },
      //   child: Center(child: Text('data')),
      // ),
      // body: BlocConsumer<AuthBloc, AuthState>(
      //   builder: (context, state) {
      //     if (state is AuthLoadingState) {
      //       return Center(child: CircularProgressIndicator());
      //     }
      //     return SizedBox();
      //   },
      //   listener: (context, state) {
      //     if (state is AuthFailureState) {
      //       ScaffoldMessenger.of(context).showSnackBar(
      //         SnackBar(content: Text(state.msg), backgroundColor: Colors.red),
      //       );
      //     }
      //   },
      // ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state){

          }),
        ],
        child: Text('data'),
      ),
      bottomSheet: ElevatedButton(
        onPressed: () {
          context.read<AuthBloc>().add(LoginEvent('abc@gmail.com', '1234'));
          // BlocProvider.of<AuthBloc>(
          //   context,
          //   listen: false,
          // ).add(LoginEvent('dddd', '1234'));
        },
        child: Text('Start Login'),
      ),
    );
  }
}

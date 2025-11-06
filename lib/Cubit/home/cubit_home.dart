import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/Bloc/Auth/auth_state.dart';
import 'package:my_project/Cubit/Auth/auth_cubit.dart';

class CubitHome extends StatelessWidget {
  const CubitHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cubit'), centerTitle: true),
      body: BlocConsumer<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthLoadingState) {
            return Center(child: CircularProgressIndicator());
          }
          return SizedBox();
        },
        listener: (context, state) {
          if (state is AuthFailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.msg), backgroundColor: Colors.red),
            );
          }
          if (state is AuthSuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Successfully logged in'),
                backgroundColor: Colors.green,
              ),
            );
          }
        },
      ),
      bottomSheet: ElevatedButton(
        onPressed: () {
          context.read<AuthCubit>().login('abc@gmail.com', '1234');
        },
        child: Text('Start Login'),
      ),
    );
  }
}

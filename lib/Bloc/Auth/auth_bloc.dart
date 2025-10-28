import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/Bloc/Auth/auth_event.dart';
import 'package:my_project/Bloc/Auth/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitialState()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoadingState());
      await Future.delayed(Duration(seconds: 3));
      String email = event.email;
      String password = event.password;

      if (email == 'abc@gmail.com' && password == '1234'){
        emit(AuthSuccessState());
      }else{
        emit(AuthFailureState('Invalid email & password'));
      }
    });
  }
}

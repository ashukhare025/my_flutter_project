import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/Bloc/Auth/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());

  void login(String email, String password) async {
    emit(AuthLoadingState());
    await Future.delayed(Duration(seconds: 3));
    if (email == 'abc@gmail.com' && password == '1234') {
      emit(AuthSuccessState());
    } else {
      emit(AuthFailureState('Invalid email or password'));
    }
  }
}

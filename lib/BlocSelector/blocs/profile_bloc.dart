import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileState {
  final String username;
  final int age;

  ProfileState({required this.username, required this.age});
}

class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc() : super(ProfileState(username: 'Ashu', age: 28));

  void updateUserName(String userName) {
    emit(ProfileState(username: userName, age: state.age));
  }

  void updateAge(int age) {
    emit(ProfileState(username: state.username, age: age));
  }
}

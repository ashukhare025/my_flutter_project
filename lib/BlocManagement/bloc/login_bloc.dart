import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/BlocManagement/Model/login_resp_model.dart';
import 'package:my_project/BlocManagement/bloc/login_event.dart';
import 'package:my_project/BlocManagement/bloc/login_state.dart';
import 'package:my_project/BlocManagement/repo/login_repo.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<LoginReqEvent>((event, emit) async {
      emit(LoginLoadingState());

      try {
        LoginRespModel loginRespModel = await LoginRepo().login(
          event.loginReqModel?.username ?? "",
          event.loginReqModel?.password ?? "",
        );
        print("API Response Email: ${loginRespModel.email}");
        print("API Response Username: ${loginRespModel.username}");

        emit(LoginLoadedState(loginRespModel: loginRespModel));
      } catch (e) {
        emit(LoginErrorState(errorMsg: e.toString()));
      }
    });
  }
}

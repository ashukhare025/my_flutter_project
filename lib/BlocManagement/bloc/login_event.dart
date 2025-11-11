import 'package:equatable/equatable.dart';
import 'package:my_project/BlocManagement/Model/login_req_model.dart';

abstract class LoginEvent extends Equatable {}

class LoginReqEvent extends LoginEvent {
  // String? username;
  // String? password;

  LoginReqModel? loginReqModel;

  LoginReqEvent({required this.loginReqModel});

  @override
  List<Object?> get props => [loginReqModel];
}

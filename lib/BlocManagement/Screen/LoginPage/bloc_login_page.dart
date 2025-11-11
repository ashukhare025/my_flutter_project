import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/BlocManagement/Model/login_req_model.dart';
import 'package:my_project/BlocManagement/bloc/login_bloc.dart';
import 'package:my_project/BlocManagement/bloc/login_event.dart';
import 'package:my_project/BlocManagement/bloc/login_state.dart';

class BlocLoginPage extends StatelessWidget {
  BlocLoginPage({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'), centerTitle: true),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (BuildContext context, state) {
          if (state is LoginInitialState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: userNameController,
                    decoration: InputDecoration(hintText: "UserName"),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // var bloc = BlocProvider.of<LoginBloc>(context);
                      // var req = LoginReqModel(
                      //   username: userNameController.text,
                      //   password: passwordController.text,
                      // );
                      // bloc.add(LoginReqEvent(loginReqModel: req));

                      BlocProvider.of<LoginBloc>(context).add(
                        LoginReqEvent(
                          loginReqModel: LoginReqModel(
                            username: userNameController.text,
                            password: passwordController.text,
                          ),
                        ),
                      );
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            );
          } else if (state is LoginLoadingState) {
            return CircularProgressIndicator();
          } else if (state is LoginLoadedState) {
            return Center(
              child: Text(
                state.loginRespModel?.email ?? " ",
                style: TextStyle(color: Colors.red),
              ),
            );
          } else if (state is LoginErrorState) {
            return Center(
              child: Text(
                state.errorMsg ?? "",
                style: TextStyle(color: Colors.red),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_project/Instagram-Application/Widget/uiwidget.dart';

import '../login/insta_login.dart';

class InstaSignUpScreen extends StatefulWidget {
  const InstaSignUpScreen({super.key});

  @override
  State<InstaSignUpScreen> createState() => _InstaSignUpScreenState();
}

class _InstaSignUpScreenState extends State<InstaSignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiWidget.customImage(imgurl: 'Instagram.png'),
            SizedBox(height: 30),
            UiWidget.customTextField(
              controller: emailController,
              text: 'Email',
              tohide: false,
              textinputtype: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            UiWidget.customTextField(
              controller: passwordController,
              text: 'Password',
              tohide: true,
              textinputtype: TextInputType.text,
            ),
            SizedBox(height: 10),
            UiWidget.customTextField(
              controller: usernameController,
              text: 'UserName',
              tohide: false,
              textinputtype: TextInputType.text,
            ),
            SizedBox(height: 30),
            UiWidget.customButton(callback: () {}, buttonname: 'Sign Up'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                UiWidget.customTextButton(
                  text: 'Sign In',
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InstaLoginScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

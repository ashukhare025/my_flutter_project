import 'package:flutter/material.dart';
import 'package:my_project/Instagram-Application/Widget/uiwidget.dart';

import '../Bottom-Navigation/bottomnav.dart';
import '../SingUp/insta_signup.dart';

class InstaLoginScreen extends StatefulWidget {
  const InstaLoginScreen({super.key});

  @override
  State<InstaLoginScreen> createState() => _InstaLoginScreenState();
}

class _InstaLoginScreenState extends State<InstaLoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiWidget.customImage(imgurl: 'Instagram.png'),
            SizedBox(height: 20),
            UiWidget.customTextField(
              controller: emailController,
              text: 'Email',
              tohide: false,
              textinputtype: TextInputType.emailAddress,
            ),
            SizedBox(height: 15),
            UiWidget.customTextField(
              controller: passwordController,
              text: 'Password',
              tohide: true,
              textinputtype: TextInputType.text,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: UiWidget.customTextButton(
                    text: 'Forgot Password',
                    callback: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            UiWidget.customButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InstaBottomScreen()),
                );
              },
              buttonname: 'Login',
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiWidget.customImage(imgurl: 'Icon.png'),
                UiWidget.customTextButton(
                  text: 'Log in with Facebook',
                  callback: () {},
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'OR',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 15, color: Color(0XFFFFFFFF)),
                ),
                UiWidget.customTextButton(
                  text: 'Sign Up',
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InstaSignUpScreen(),
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

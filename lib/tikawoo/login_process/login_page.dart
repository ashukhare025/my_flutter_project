import 'package:flutter/material.dart';
import 'package:my_project/tikawoo/custom_image.dart';
import 'package:my_project/tikawoo/login_process/otp.dart';

import '../../widget/uihelper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();

  String? errorMessage;

  void checkPhoneNumber() {
    setState(() {
      if (phoneController.text != "7999098951") {
        errorMessage = "This Mobile Number Not Registered";
      } else {
        errorMessage = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(image.demo, height: 115, width: 113),
                  SizedBox(width: 10),
                  Image.asset(image.dummyy, height: 150, width: 140),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFF222741),
                    fontFamily: 'FontMain',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Please Enter Your Mobile Number and',
                      style: TextStyle(
                        fontFamily: 'PopMain',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Sign in Your Account',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: 'PopMain',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Container(
                  width: 320,
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300, width: 1),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "+91",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                      Row(
                        children: [
                          Image.asset(
                            "assets/tikawoo/indian.png",
                            height: 20,
                            width: 20,
                          ),
                          Icon(Icons.arrow_drop_down, color: Colors.orange),
                        ],
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 24,
                        width: 1,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          controller: phoneController,
                          decoration: InputDecoration(
                            hintText: "Enter Your Mobile Number",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            errorText: errorMessage,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 220),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFFF09308),
                        padding: EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 130,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      onPressed: () {
                        checkPhoneNumber();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OtpScreen()),
                        );
                      },
                      child: Text(
                        'send OTP',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    UiHelper.CustomText(
                      text: "Copyright 2024 Chiripal Group.",
                      height: 12,
                      fontweight: FontWeight.bold,
                    ),
                    SizedBox(height: 5),
                    UiHelper.CustomText(
                      text: "App Rights Reserved",
                      height: 12,
                      fontweight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

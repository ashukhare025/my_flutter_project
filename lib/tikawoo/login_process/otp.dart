import 'package:flutter/material.dart';
import 'package:my_project/widget/uihelper.dart';

import '../custom_image.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              SizedBox(height: 50),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter Varification',
                      style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF222741),
                        fontFamily: 'FontMain',
                      ),
                    ),
                    Text(
                      'Code',
                      style: TextStyle(
                        fontFamily: 'FontMain',
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'We have sent a code to +91 7999098951',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'PopMain',
                    color: Color(0xFF75788D),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 60,
                    height: 50,
                    child: TextField(
                      textAlign: TextAlign.center,
                      maxLength: 2,
                      decoration: InputDecoration(
                        counterText: "",
                        filled: true,
                        fillColor: Color(0XFFFFFFFF),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 30),
              Center(
                child: Image.asset(
                  "assets/tikawoo/otp.png",
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend Code',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF010124),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFFF09308),
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 135,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
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

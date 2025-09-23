import 'package:flutter/material.dart';
import 'package:my_project/Blinkit%20Application/repository/Screens/bottomNavigation/buttomnavscreen.dart';
import 'package:my_project/Blinkit%20Application/repository/widget/screenhelper.dart';

import '../../../constants/appconstants.dart';

class BlinkitLogin extends StatelessWidget {
  const BlinkitLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScreenHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
            SizedBox(height: 20),
            ScreenHelper.CustomImage(img: "image 10.png"),
            SizedBox(height: 10),
            ScreenHelper.CustomTaxt(
              text: "India’s last minute app",
              color: Color(0xFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: AppConstants.fontFamily_Poppins,
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    ScreenHelper.CustomTaxt(
                      text: "Ashu",
                      color: Color(0xFF000000),
                      fontweight: FontWeight.w400,
                      fontsize: 14,
                      fontfamily: AppConstants.fontFamily_Poppins,
                    ),
                    SizedBox(height: 5),
                    ScreenHelper.CustomTaxt(
                      text: "7999098951",
                      color: Color(0xFF9C9C9C),
                      fontweight: FontWeight.bold,
                      fontsize: 14,
                      fontfamily: AppConstants.fontFamily_Poppins,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ScreenHelper.CustomTaxt(
                              text: "Login with",
                              color: Color(0XFFFFFFFF),
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                              fontfamily: AppConstants.fontFamily_Poppins,
                            ),
                            SizedBox(width: 5),
                            ScreenHelper.CustomImage(img: "image 9.png"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    ScreenHelper.CustomTaxt(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.w400,
                      fontsize: 10,
                      fontfamily: AppConstants.fontFamily_Poppins,
                    ),
                    SizedBox(height: 20),
                    ScreenHelper.CustomTaxt(
                      text: "or login with phone number",
                      color: Color(0XFF269237),
                      fontweight: FontWeight.w400,
                      fontsize: 14,
                      fontfamily: AppConstants.fontFamily_Poppins,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

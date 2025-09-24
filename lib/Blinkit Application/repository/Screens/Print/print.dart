import 'package:flutter/material.dart';
import 'package:my_project/Blinkit%20Application/repository/widget/screenhelper.dart';
import 'package:my_project/constants/appconstants.dart';

import '../../../../constants/textfont.dart';

class Blinkitprint extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  Blinkitprint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
      body: Column(
        children: [
          SizedBox(height: 20),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        ScreenHelper.CustomTaxt(
                          text: "Blinkit in",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          fontfamily: AppConstants.fontFamily_Poppins,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        ScreenHelper.CustomTaxt(
                          text: "16 minutes",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: AppConstants.fontFamily_Poppins,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        ScreenHelper.CustomTaxt(
                          text: "Home ",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: AppConstants.fontFamily_Poppins,
                        ),
                        ScreenHelper.CustomTaxt(
                          text: "- Ashu, Shrinath Vihar, indore",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                          fontfamily: AppConstants.fontFamily_Poppins,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 20),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 30,
                child: ScreenHelper.CustomTextField(
                  controller: searchController,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          ScreenHelper.CustomTaxt(
            text: "Print Store",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 32,
            fontfamily: AppConstants.fontFamily_Inter,
          ),
          ScreenHelper.CustomTaxt(
            text: "Blinkit ensures secure prints at every stage",
            color: Color(0XFF9C9C9C),
            fontweight: FontWeight.bold,
            fontsize: 14,
            fontfamily: AppConstants.fontFamily_Inter,
          ),
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 180,
                width: 361,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        ScreenHelper.CustomTaxt(
                          text: "Documents",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: AppConstants.fontFamily_Inter,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        ScreenHelper.CustomImage(img: "star.png"),
                        SizedBox(width: 5),
                        ScreenHelper.CustomTaxt(
                          text: "Price starting at rs 3/page",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                          fontfamily: AppConstants.fontFamily_Inter,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        ScreenHelper.CustomImage(img: "star.png"),
                        SizedBox(width: 5),
                        ScreenHelper.CustomTaxt(
                          text: "Paper quality: 70 GSM",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                          fontfamily: AppConstants.fontFamily_Inter,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        ScreenHelper.CustomImage(img: "star.png"),
                        SizedBox(width: 5),
                        ScreenHelper.CustomTaxt(
                          text: "Single side prints",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                          fontfamily: AppConstants.fontFamily_Inter,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        SizedBox(
                          height: 40,
                          width: 125,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF27AF34),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            child: Text("Upload Files", style: TextPopponsFont),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                child: ScreenHelper.CustomImage(img: "document.png"),
                right: 20,
                bottom: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

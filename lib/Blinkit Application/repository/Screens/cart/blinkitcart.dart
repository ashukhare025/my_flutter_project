import 'package:flutter/material.dart';
import 'package:my_project/Blinkit%20Application/repository/widget/screenhelper.dart';
import 'package:my_project/constants/appconstants.dart';

class BlinkitCart extends StatelessWidget {
  BlinkitCart({super.key});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(height: 20),
          ScreenHelper.CustomImage(img: "cart.png"),
          SizedBox(height: 20),
          ScreenHelper.CustomTaxt(
            text: "Reordering will be easy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 16,
            fontfamily: AppConstants.fontFamily_Poppins,
          ),
          ScreenHelper.CustomTaxt(
            text: "Items you order will show up here so you can buy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          ScreenHelper.CustomTaxt(
            text: "them again easily.",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              ScreenHelper.CustomTaxt(
                text: "Bestsellers",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 16,
                fontfamily: AppConstants.fontFamily_Poppins,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Stack(
                children: [
                  ScreenHelper.CustomImage(img: "milk.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: ScreenHelper.CustomButton(() {}),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Stack(
                children: [
                  ScreenHelper.CustomImage(img: "potato.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: ScreenHelper.CustomButton(() {}),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Stack(
                children: [
                  ScreenHelper.CustomImage(img: "tomato.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: ScreenHelper.CustomButton(() {}),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

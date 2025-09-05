import 'package:flutter/material.dart';
import 'package:my_project/constants/textfont.dart';
import 'package:my_project/widget/text_and_icon.dart';

void main() {
  runApp(HomeMenu());
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: PageHome(),
    );
  }
}

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        leadingWidth: 40,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
            backgroundColor: Color(0XFFF09308),
            child: Icon(
              Icons.density_medium_sharp,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        centerTitle: true,
        title: Image(
          image: AssetImage('assets/tikawoo/1 Splash.png'),
          width: 50,
          height: 50,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFF5F6F7),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ledger', style: TextMedium),
                  TextButton(
                    onPressed: () {},
                    child: Text('See All', style: TextPoppinsRegular),
                  ),
                ],
              ),
              Container(
                width: 330,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFF09308)),
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/tikawoo/Frame.png',
                      height: 80,
                      width: 80,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Opening Balance', style: TextPoppins),
                        Text("0.00 Pts", style: TextPoppinsSemiBoldFont),
                      ],
                    ),
                    SizedBox(width: 88),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xFFF09308),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconText(
                          icon: Icons.card_giftcard_outlined,
                          text: "Schemes",
                        ),
                        IconText(icon: Icons.redeem, text: "Redeem"),
                        IconText(
                          icon: Icons.access_time_outlined,
                          text: "home",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconText(icon: Icons.qr_code_scanner, text: "Scan"),
                        IconText(
                          icon: Icons.food_bank_rounded,
                          text: "Bank Details",
                        ),
                        IconText(icon: Icons.manage_accounts, text: "Refer"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconText(
                          icon: Icons.photo_camera_back,
                          text: "Gallery",
                        ),
                        IconText(icon: Icons.text_snippet, text: "Product"),
                        IconText(
                          icon: Icons.person_outline_rounded,
                          text: "Profile",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

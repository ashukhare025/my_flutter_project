import 'package:flutter/material.dart';
import 'package:my_project/constants/textfont.dart';
import 'package:my_project/tikawoo/sidemenu_screens/contact_us.dart';

void main() {
  runApp(const ReferralYourFriend());
}

class ReferralYourFriend extends StatelessWidget {
  const ReferralYourFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contact",
      home: const ReferralYourFriendScreen(),
    );
  }
}

class ReferralYourFriendScreen extends StatelessWidget {
  const ReferralYourFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const link = "https://www.google.com/";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF1DD),
        leadingWidth: 40,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
            backgroundColor: Color(0XFFF09308),
            child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Help a friend out!',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: 350,
              color: Color(0xFFFFF1DD),
              child: Column(
                children: [
                  Image.asset(
                    "assets/tikawoo/Group.png",
                    width: 250,
                    height: 250,
                  ),
                  Text('Help a friend out!', style: TextInterBold),
                  Text('invite your friends to lux', style: TextInter),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsScreen()),
                );
              },
              child: Text('Invite Your Contact', style: TextSemiBoldFont),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0XFFFFFFFF), width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFDDDDDD),
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Text(link, style: InterMedium)),
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        backgroundColor: Color(0xFFF09308),
                      ),
                      onPressed: () {},
                      child: Text('Copy', style: QuickSandMedium),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 200),
            Column(
              children: [
                Text(
                  "Didn't get Rewards? (this would be a support",
                  style: TextInterRegular,
                ),
                Text(
                  "option if they didn’t receive rewards for an",
                  style: TextInterRegular,
                ),
                Text('accepted referral)', style: TextInterRegular),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

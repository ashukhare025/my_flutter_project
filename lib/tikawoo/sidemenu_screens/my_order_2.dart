import 'package:flutter/material.dart';

import '../../constants/textfont.dart';

class MyOrder2 extends StatelessWidget {
  const MyOrder2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const CircleAvatar(
            backgroundColor: Color(0XFFF09308),
            child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'My Orders',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFD9D9D9),
        child: Column(
          children: [
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(8),
              height: 80,
              width: 330,
              color: Color(0xFFFFFFFF),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/tikawoo/cloth1.png",
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text('Gift: Towel Set or Cash Gift', style: TextRoboto),
                      Row(
                        children: [
                          Text('Delivery, Jan 24', style: TextRobotoRagular),
                          SizedBox(width: 10),
                          Text('• 5 items', style: TextRobotoRagular),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(8),
              height: 80,
              width: 295,
              color: Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 8),
                          Text('Your Order Code:', style: TextSemiBold),
                          SizedBox(width: 8),
                          Text('4556', style: SemiBold),
                        ],
                      ),
                      Row(
                        children: [
                          Text('5 items -', style: TextSemiBold),
                          SizedBox(width: 8),
                          Text('₹1000', style: TextRobotoGreen),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

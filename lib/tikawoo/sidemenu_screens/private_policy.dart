import 'package:flutter/material.dart';

import '../../constants/textfont.dart';

class PrivatePolicy extends StatelessWidget {
  const PrivatePolicy({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Private Policy',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 350,
              color: Color(0xFFFFF1DD),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/tikawoo/Privacy policy.png",
                    width: 240,
                    height: 240,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem Ipsum is simply dummy text of the',
                        style: TextInterBold,
                      ),
                      Text(
                        'printing and typesetting industry.',
                        style: TextInterBold,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing',
                        style: TextInterRegular,
                      ),
                      Text(
                        'and typesetting industry. Lorem Ipsum has been',
                        style: TextInterRegular,
                      ),
                      Text(
                        "the industry's standard dummy text ever since",
                        style: TextInterRegular,
                      ),
                      Text(
                        'the 1500s, when an unknown printer took a',
                        style: TextInterRegular,
                      ),
                      Text(
                        'galley of type and scrambled it to make a type',
                        style: TextInterRegular,
                      ),
                      Text(
                        'specimen book. It has survived not only five',
                        style: TextInterRegular,
                      ),
                      Text(
                        'Centuries, but also the leap into electronic',
                        style: TextInterRegular,
                      ),
                      Text(
                        'typesetting, remaining essentially unchanged.It',
                        style: TextInterRegular,
                      ),
                      Text(
                        'was popularised in the 1960s with the release of',
                        style: TextInterRegular,
                      ),
                      Text(
                        'Letraset sheets containing Lorem Ipsum',
                        style: TextInterRegular,
                      ),
                      Text(
                        'passages, and more recently with desktop ',
                        style: TextInterRegular,
                      ),
                      Text(
                        'publishing software like Aldus PageMaker',
                        style: TextInterRegular,
                      ),
                      Text(
                        'including versions of Lorem Ipsum.',
                        style: TextInterRegular,
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

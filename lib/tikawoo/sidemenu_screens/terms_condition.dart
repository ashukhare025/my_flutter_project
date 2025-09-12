import 'package:flutter/material.dart';
import 'package:my_project/constants/textfont.dart';

void main() {
  runApp(TermConditionPage());
}

class TermConditionPage extends StatelessWidget {
  const TermConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Terms&Conditions',
      debugShowCheckedModeBanner: false,
      home: TermsConditionsScreen(),
    );
  }
}

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFFFFFFF),
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
          'Terms & Conditions',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 370,
              width: 350,
              color: Color(0xFFFFF1DD),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/tikawoo/guide.png",
                    width: 240,
                    height: 240,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextInterRegular,
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

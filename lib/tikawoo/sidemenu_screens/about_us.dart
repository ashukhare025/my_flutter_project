import 'package:flutter/material.dart';
import 'package:my_project/constants/textfont.dart';

void main() {
  runApp(AboutPage());
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'About',
      home: AboutHome(),
    );
  }
}

class AboutHome extends StatelessWidget {
  const AboutHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFF5F6F7),
        leadingWidth: 35,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
            backgroundColor: Color(0XFFF09308),
            child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
          ),
        ),
        centerTitle: true,
        title: Text('Banks Details', style: TextMedium),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Color(0XFFF5F6F7),
          child: Column(
            children: [
              Image.asset('assets/tikawoo/1 Splash.png'),
              SizedBox(height: 15),
              Text('ABOUT CHIRIPAL GROUP', style: TextPoppins),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextRegular,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

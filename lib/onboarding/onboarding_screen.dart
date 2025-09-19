import 'package:flutter/material.dart';
import 'package:my_project/onboarding/onboarding_login.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List onBoarding = [
    {
      "image": 'assets/onboarding/screen1.jpg',
      "title": 'Always keep smile',
      "description": 'The process can include education new',
    },
    {
      "image": 'assets/onboarding/screen2.jpg',
      "title": 'My life my rules',
      "description": "No holding back",
    },
    {
      "image": 'assets/onboarding/screen3.jpg',
      "title": "No Change",
      "description": "See the world",
    },
  ];

  PageController pageController = PageController();

  Color whiteColor = Colors.white;
  Color otherColor = Color(0xFF19173D);

  continueMethod() {}

  int currentPage = 0;
  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BoardingLogin()),
              );
            },
            child: Text("Skip", style: TextStyle(color: otherColor)),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: onBoarding.length,
            onPageChanged: onChanged,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    onBoarding[index]['image'],
                    height: 500,
                    width: 500,
                  ),
                  SizedBox(height: 20),
                  Text(
                    onBoarding[index]['title'],
                    style: TextStyle(fontSize: 20, color: otherColor),
                  ),
                  SizedBox(height: 20),
                  Text(
                    onBoarding[index]['description'],
                    style: TextStyle(fontSize: 20, color: otherColor),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                (currentPage == (onBoarding.length - 1))
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BoardingLogin(),
                            ),
                          );
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(color: otherColor),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(onBoarding.length, (index) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            height: 10,
                            width: (index == currentPage) ? 15 : 10,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: (index == currentPage)
                                  ? Colors.deepOrange
                                  : Colors.grey,
                            ),
                          );
                        }),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

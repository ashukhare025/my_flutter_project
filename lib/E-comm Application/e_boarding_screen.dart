import 'package:flutter/material.dart';
import 'package:my_project/E-comm%20Application/e_login_page.dart';

class EboardingScreen extends StatefulWidget {
  const EboardingScreen({super.key});

  @override
  State<EboardingScreen> createState() => _EboardingScreenState();
}

class _EboardingScreenState extends State<EboardingScreen> {
  List ecommList = [
    {
      "image": 'assets/Ecomm/Group12.png',
      'title': 'Start Journey \nWith Nike',
      'description': 'Smart, Gorgeous & Fashionable \nCollection',
    },
    {
      "image": 'assets/Ecomm/Group 285.png',
      'title': 'Follow Latest \nStyle Shoes',
      'description':
          'There Are Many Beautiful And \nAttractive Plants To Your Room',
    },
    {
      "image": 'assets/Ecomm/Group 286.png',
      'title': 'Summer Shoes \nNike 2025',
      'description': 'Amet Minim Lit Nodeseru Saku\nNandu sit Alique Dolor',
    },
  ];
  final PageController pageController = PageController();

  int currentPage = 0;
  final int totalPages = 3;

  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: ecommList.length,
            onPageChanged: onChanged,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Image.asset(
                        ecommList[index]['image'],
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      ecommList[index]['title'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      ecommList[index]['description'],
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
            bottom: 70,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(ecommList.length, (index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: currentPage == index ? 30 : 20,
                      height: 6,
                      decoration: BoxDecoration(
                        color: currentPage == index
                            ? Colors.blue
                            : Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5B9EE1),
                  ),
                  onPressed: () {
                    if (currentPage == ecommList.length - 1) ;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EcommLogin()),
                    );
                  },
                  child: Text(
                    currentPage == ecommList.length - 1
                        ? 'Get Started'
                        : 'Next',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

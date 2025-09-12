import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;
  final int totalPages = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                buildPage(
                  "स्वागत है!",
                  "यहाँ आप हमारे ऐप के बारे में जान सकते हैं।",
                  Colors.blue.shade100,
                ),
                buildPage(
                  "आसान उपयोग",
                  "हमारा ऐप बहुत आसान और तेज़ है।",
                  Colors.green.shade100,
                ),
                buildPage(
                  "शुरू करें",
                  "अब चलिए ऐप का मज़ा लें।",
                  Colors.orange.shade100,
                ),
              ],
            ),
          ),

          // नीचे Dots
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(totalPages, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: 30,
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
          const SizedBox(height: 20),
          // Button
          ElevatedButton(
            onPressed: () {
              if (currentPage == 2) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              } else {
                _controller.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
            child: Text(currentPage == 2 ? "शुरू करें" : "आगे बढ़ें"),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget buildPage(String title, String desc, Color color) {
    return Container(
      color: color,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone_android, size: 100, color: Colors.black54),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "यह Home Screen है 😊",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

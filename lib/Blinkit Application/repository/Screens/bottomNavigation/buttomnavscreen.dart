import 'package:flutter/material.dart';
import 'package:my_project/Blinkit%20Application/repository/Screens/Category/cagatory.dart';
import 'package:my_project/Blinkit%20Application/repository/Screens/Home/blinkithome.dart';
import 'package:my_project/Blinkit%20Application/repository/Screens/Print/print.dart';
import 'package:my_project/Blinkit%20Application/repository/Screens/cart/blinkitcart.dart';
import 'package:my_project/Blinkit%20Application/repository/widget/screenhelper.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    BlinkitHome(),
    BlinkitCart(),
    BlinkitCategory(),
    Blinkitprint(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: ScreenHelper.CustomImage(img: "home 1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ScreenHelper.CustomImage(img: "shopping-bag 1.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: ScreenHelper.CustomImage(img: "category 1.png"),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: ScreenHelper.CustomImage(img: "printer 1.png"),
            label: "Print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

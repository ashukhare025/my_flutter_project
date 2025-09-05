import 'package:flutter/material.dart';
import 'package:my_project/constants/textfont.dart';
import 'package:my_project/tikawoo/sidemenu_screens/my_order_2.dart';

void main() {
  runApp(const Order());
}

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Order",
      home: const MyOrder(),
    );
  }
}

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  int _selectedIndex = 2;

  final List<Widget> _pages = [
    HomePage(),
    SchemesPage(),
    IconButton(icon: const Icon(Icons.qr_code_scanner), onPressed: () {}),
    OrdersPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Schemes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Home Page")));
  }
}

class SchemesPage extends StatelessWidget {
  const SchemesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Schemes Page")));
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Profile Page")));
  }
}

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

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
        child: SingleChildScrollView(
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
                width: 330,
                color: Color(0xFFFFFFFF),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/tikawoo/Rectangle.png",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text('Gift: Induction or Cash', style: TextRoboto),
                        Row(
                          children: [
                            Text('Delivery, Jan 19 ', style: TextRobotoGreen),
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
                width: 330,
                color: Color(0xFFFFFFFF),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/tikawoo/Rectangle.png",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text('Gift: Induction or Cash', style: TextRoboto),
                        Row(
                          children: [
                            Text('Order Not Place', style: TextRobotoOrange),
                            SizedBox(width: 10),
                            Text('• 2 items'),
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
                width: 330,
                color: Color(0xFFFFFFFF),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/tikawoo/bike.png",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text('Gift: Cutter Machine or Cash', style: TextRoboto),
                        Row(
                          children: [
                            Text('Order Failed', style: TextRobotoRed),
                            SizedBox(width: 10),
                            Text('•  1 items', style: TextRobotoRagular),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyOrder2()),
                  );
                },
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {},
        child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 28),
      ),
    );
  }
}

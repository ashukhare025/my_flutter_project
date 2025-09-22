import 'package:flutter/material.dart';
import 'package:my_project/E-comm%20Application/details.dart';
import 'package:my_project/E-comm%20Application/e_profile.dart';
import 'package:my_project/E-comm%20Application/favorite.dart';
import 'package:my_project/E-comm%20Application/my_cart.dart';
import 'package:my_project/E-comm%20Application/notification.dart';
import 'package:my_project/E-comm%20Application/side_drawer.dart';

class EcommHome extends StatefulWidget {
  const EcommHome({super.key});

  @override
  State<EcommHome> createState() => _EcommHomeState();
}

class _EcommHomeState extends State<EcommHome> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  List products = [
    {
      "image": "assets/Ecomm/PngItem_5550642 (2) 1.png",
      "title": "Nike Jordan",
      "price": "\$493.00",
    },
    {
      "image":
          "assets/Ecomm/nike-zoom-winflo-3-831561-001-mens-running-shoes-11550187236tiyyje6l87_prev_ui 1.png",
      "title": "Nike Air Max",
      "price": "\$897.00",
    },
  ];

  int currentValue = 0;

  final ListScreen = [
    EcommFavorite(),
    EcommCart(),
    EcommNotification(),
    EcommProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Store Location",
              style: TextStyle(fontSize: 13, color: Color(0xFF707B81)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: Color(0xFFF87265)),
                Text(
                  "Mondolibug,Sylhet",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF1A2530),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
        ],
        backgroundColor: Color(0xFFFFFFFF),

        leading: IconButton(
          icon: Icon(Icons.apps, size: 16, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SideScreen()),
            );
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade50,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 45,
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                    ),
                    hintText: 'Looking for shoes',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                    ),
                  ),
                ),
              ),
              Container(
                color: Color(0xFFFFFFFF),
                height: 60,
                width: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFFFFF),
                      child: Image.asset('assets/Ecomm/nike.png'),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFFFFF),
                      child: Image.asset('assets/Ecomm/puma.png'),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFFFFF),
                      child: Image.asset('assets/Ecomm/under.png'),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFFFFF),
                      child: Image.asset('assets/Ecomm/addidas.png'),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFFFFF),
                      child: Image.asset('assets/Ecomm/convers.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Shoes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xFF5B9EE1),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 15,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    height: 220,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 15,
                        bottom: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            product["image"],
                            height: 75,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            "Best Seller",
                            style: TextStyle(color: Color(0XFF5B9EE1)),
                          ),
                          Text(product["title"]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(product["price"]),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 2,
                                  right: 5,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => EcommDetails(),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.add,
                                      color: Color(0XFF5B9EE1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Arrivals',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "see all",
                        style: TextStyle(color: Color(0XFF5B9EE1)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 120,
                width: 335,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Best Choice",
                            style: TextStyle(
                              color: Color(0XFF5B9EE1),
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Nike Air Jordan",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text("\$849.69"),
                        ],
                      ),
                      Image.asset('assets/Ecomm/Group 286.png'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFFFFFF),
        showUnselectedLabels: false,
        showSelectedLabels: false,

        selectedItemColor: Color(0XFF5B9EE1),
        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          setState(() {
            currentValue = index;
          });
        },
        currentIndex: currentValue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Add Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

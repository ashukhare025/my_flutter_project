import 'package:flutter/material.dart';
import 'package:my_project/E-comm%20Application/e_home_page.dart';

class EcommDetails extends StatelessWidget {
  const EcommDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Men's Shoes",
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
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EcommHome()),
            );
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.width * 0.5,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/Ecomm/nike-zoom-winflo-3-831561-001-mens-running-shoes-11550187236tiyyje6l87_prev_ui 1.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Best Seller",
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                        Text(
                          "Nike Air Jordan",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$976.800",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike..",
                  style: TextStyle(fontSize: 15, color: Color(0xFF707B81)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text(
                      "Gallery",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color(0xFFFFFFFF),
                          child: Image.asset("assets/Ecomm/pngaaa.png"),
                        ),
                      ),
                      SizedBox(width: 15),
                      TextButton(
                        onPressed: () {},
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color(0xFFFFFFFF),
                          child: Image.asset(
                            "assets/Ecomm/nike-zoom-winflo-3-831561-001-mens-running-shoes-11550187236tiyyje6l87_prev_ui 1.png",
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      TextButton(
                        onPressed: () {},
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color(0xFFFFFFFF),
                          child: Image.asset('assets/Ecomm/Group 286.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Size",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: () {}, child: Text("EU")),
                        TextButton(onPressed: () {}, child: Text("US")),
                        TextButton(onPressed: () {}, child: Text("UK")),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(child: Text("38", style: TextStyle())),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(child: Text("39")),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(child: Text("40")),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(child: Text("41")),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(child: Text("42")),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(child: Text("43")),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("price", style: TextStyle(fontSize: 16)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$849.69",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 40,
                                ),
                                backgroundColor: Color(0xFF5B9EE1),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Add To Cart",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
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
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AdvanceScreen extends StatelessWidget {
  const AdvanceScreen({super.key});

  showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          height: MediaQuery.of(context).size.height / 2.5,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          "Select Language",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.check_circle,
                          color: Colors.grey,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 25,
                      color: Colors.grey.shade200,
                      child: Row(
                        children: [
                          Text("Recent", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/tikawoo/usa.png',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          "Automatic(based on system",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 25,
                      color: Colors.grey.shade200,
                      child: Row(
                        children: [
                          Text(
                            "All language",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        'assets/tikawoo/bal.jpg',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          "Bulgarian",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        'assets/tikawoo/Czech.png',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          "Czech",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        'assets/tikawoo/garman.webp',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          "German",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        'assets/tikawoo/greek.webp',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          "Greek",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        'assets/tikawoo/usa.png',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          "English",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          "Advanced",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0XFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.language, color: Colors.green),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      "Language",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text("Automatic", style: TextStyle(color: Colors.grey)),
                  IconButton(
                    onPressed: () {
                      showBottomSheet(context);
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 14,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.upload, color: Colors.green),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      "Export",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 14,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.lock, color: Colors.green),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      "Passcode",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 14,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.emoji_emotions_outlined, color: Colors.green),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      "Touch / Face ID",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 14,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.sunny, color: Colors.green),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      "Appearance",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  Text("Light", style: TextStyle(color: Colors.grey)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 14,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.delete, color: Colors.green),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      "Delete Account",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

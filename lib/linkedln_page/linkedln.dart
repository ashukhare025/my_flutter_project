import 'package:flutter/material.dart';

void main() {
  runApp(const LinkedInScreen());
}

class LinkedInScreen extends StatelessWidget {
  const LinkedInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkedIn Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: MyLinkedInPage(),
    );
  }
}

class MyLinkedInPage extends StatelessWidget {
  const MyLinkedInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('LinkedlnScreen'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        margin: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  Image.asset('assets/images/user.png', height: 50, width: 50),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ashu Khare',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Technical Recruiter || Matching',
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      print('Press');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_add_alt_1,
                          color: Colors.blue,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Connect',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5, height: 20),
                      Text(
                        'Hello Folks,',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  Text(
                    'We are Hiring | Junior Mid-Level DevOps Enginner ...',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  Text(
                    'more',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Image.asset('assets/images/text.jpg'),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 70, width: 20),
                      Icon(Icons.thumb_up_sharp, size: 20, color: Colors.blue),
                      Text(
                        '101',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),

                      Row(
                        children: [
                          SizedBox(width: 88),
                          Text('20 comments', style: TextStyle(fontSize: 18)),
                        ],
                      ),

                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 5),
                              Text(
                                '• 3 reports',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              Divider(height: 30, thickness: 1, color: Colors.grey),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.thumb_up, size: 24, color: Colors.grey),
                      SizedBox(height: 2),
                      Text('Like'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.comment_rounded, size: 24, color: Colors.grey),
                      SizedBox(height: 2),
                      Text('Comment'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.report, size: 24, color: Colors.grey),
                      SizedBox(height: 2),
                      Text('Report'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.send, size: 24, color: Colors.grey),
                      SizedBox(height: 2),
                      Text('Send'),
                    ],
                  ),
                ],
              ),

              Divider(color: Color(0xFFFFF8E1), height: 40, thickness: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.home_filled, color: Colors.grey),
                      Text('Home'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.group, color: Colors.grey),
                      Text('My Network'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.add_box_outlined, color: Colors.grey),
                      Text('Post'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.notifications_sharp, color: Colors.grey),
                      Text('Notification'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.work, color: Colors.grey),
                      Text('Jobs'),
                    ],
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

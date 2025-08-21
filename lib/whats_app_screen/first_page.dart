import 'package:flutter/material.dart';

void main() {
  runApp(const FrontPage());
}

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstPage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
      ),
      home:  HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomeState();
}

class _MyHomeState extends State<HomePageScreen> {
  var arrNames = [
    'shayam',
    'Raman',
    'Ramnujan',
    'Rajesh',
    'James',
    'John',
    'Ram',
    'Ashu',
    'Vikram',
    'Suraj',
    'Ankit'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('WhatsApp', style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: 230,),
            Icon(Icons.search,color: Colors.white,),
            Icon(Icons.more_vert,color: Colors.white,)
          ],
        ),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.camera_alt_rounded, color: Colors.grey.shade400),
                Text('CHATS', style: TextStyle(color: Colors.grey.shade400)),
                Text('STATUS .', style: TextStyle(color: Colors.grey.shade400)),
                Text('CALLS', style: TextStyle(color: Colors.grey.shade400)),
              ],
            ),
          ),
          SizedBox(height: 5,),

          Expanded(
            child: ListView.builder(scrollDirection: Axis.vertical,
              itemCount: arrNames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:  EdgeInsets.all(8),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [Image.asset('assets/images/user.png',height: 55,width: 55,),
                       SizedBox(width: 10),
                      Text(arrNames[index],
                          style:  TextStyle(color: Colors.white),),
                      ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


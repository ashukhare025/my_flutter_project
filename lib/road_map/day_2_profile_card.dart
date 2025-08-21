import 'package:flutter/material.dart';
import 'package:my_project/widget/uihelper.dart';

void main() {
  runApp(RoadMap());
}

class RoadMap extends StatelessWidget {
  const RoadMap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Road Map Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyRoadMap(),
    );
  }
}

class MyRoadMap extends StatefulWidget {
  const MyRoadMap({super.key});

  @override
  State<MyRoadMap> createState() => _MyRoadMapState();
}

class _MyRoadMapState extends State<MyRoadMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Card'), centerTitle: true),
      body: Center(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg',
                  ),
                ),
                SizedBox(height: 8),
                UiHelper.CustomText(
                  text: 'Ashu Khare',
                  height: 22,
                  fontweight: FontWeight.bold,
                ),
                SizedBox(height: 8),
                UiHelper.CustomText(text: '7999098951', height: 16),
                SizedBox(height: 8),
                UiHelper.CustomText(
                  text: 'Ashu@gmail.com',
                  height: 16,
                  color: Colors.grey.shade600,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text('Follow'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

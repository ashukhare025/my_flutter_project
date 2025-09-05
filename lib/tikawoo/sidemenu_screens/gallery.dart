import 'package:flutter/material.dart';
import 'package:my_project/constants/textfont.dart';

void main() {
  runApp(Gallery());
}

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GalleryPage',
      home: GalleryScreen(),
    );
  }
}

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  bool isPhoto = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F6F7),
        leadingWidth: 40,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
            backgroundColor: Color(0XFFF09308),
            child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
          ),
        ),
        centerTitle: true,
        title: Text('Gallery', style: TextPoppins),
      ),
      body: Container(
        color: Color(0xFFF5F6F7),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 25),
            Container(
              width: 330,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFF09308)),
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/tikawoo/paint.png',
                    height: 80,
                    width: 80,
                  ),
                  Text('AQUA TIK', style: TextPoppins),
                  SizedBox(width: 70),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF09308),
                    ),
                    onPressed: () {},
                    child: Text('Change', style: TextMediumPoppins),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Container(
                  height: 65,
                  width: 340,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFF09308), width: 5),
                    color: Color(0xFFF09308),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => isPhoto = true),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: isPhoto
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Text(
                              'Photos',
                              style: TextStyle(
                                color: isPhoto ? Colors.black : Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => isPhoto = false),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: !isPhoto
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Text(
                              'Videos',
                              style: TextStyle(
                                color: !isPhoto ? Colors.black : Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

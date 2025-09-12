import 'package:flutter/material.dart';

class DashBoardScreenUi extends StatelessWidget {
  DashBoardScreenUi({super.key});

  final List dashboard = [
    {
      "id": 1,
      "title": "Videos",
      "icon": Icons.play_arrow,
      "background_color": Colors.deepOrange,
    },
    {
      "id": 2,
      "title": "Subject",
      "icon": Icons.book,
      "background_color": Colors.pink,
    },
    {
      "id": 3,
      "title": "Chat",
      "icon": Icons.chat,
      "background_color": Colors.purple,
    },
    {
      "id": 4,
      "title": "Setting",
      "icon": Icons.settings,
      "background_color": Colors.blue,
    },
    {
      "id": 5,
      "title": "videos",
      "icon": Icons.play_arrow,
      "background_color": Colors.deepOrange,
    },
    {
      "id": 6,
      "title": "Subject",
      "icon": Icons.book,
      "background_color": Colors.pink,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("DashBoard", style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ListTile(
                title: Text(
                  "Ashu Khare",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fimage&psig=AOvVaw1ndSO_jtw6wJ9VphPwwzsp&ust=1757752522263000&source=images&cd=vfe&opi=89978449&ved=2ahUKEwi92efG6NKPAxWMT2wGHT5GEn0QjRx6BAgAEBo",
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            padding: EdgeInsets.all(30),
            children: [
              ...dashboard
                  .map(
                    (data) => Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: data['background_color'],
                              shape: BoxShape.circle,
                            ),
                            child: Icon(data['icon'], color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text(
                            data['title'],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}

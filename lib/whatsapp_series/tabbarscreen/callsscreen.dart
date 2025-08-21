import 'package:flutter/material.dart';
import 'package:my_project/widget/uihelper.dart';

class CallScreen extends StatelessWidget {
  var callcontent = [
    {
      "name": "Ashu",
      "img":
          "https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "Sam",
      "img":
          "https://images.unsplash.com/photo-1599566150163-29194dcaad36?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww",
      "calltime": "1 hr ago",
    },
    {
      "name": "Emma",
      "img":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "calltime": " 1 min ago",
    },
    {
      "name": "Ashu",
      "img":
          "https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "Sam",
      "img":
          "https://images.unsplash.com/photo-1599566150163-29194dcaad36?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww",
      "calltime": "1 hr ago",
    },
    {
      "name": "Emma",
      "img":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "calltime": " 1 min ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: 'Recent', height: 18),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      callcontent[index]["img"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: callcontent[index]["name"].toString(),
                    height: 18,
                    fontweight: FontWeight.bold,color: Colors.black,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: callcontent[index]["calltime"].toString(),
                    height: 16,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call, color: Color(0XFF00A884)),
                  ),
                );
              },
              itemCount: callcontent.length,
            ),
          ),
        ],
      ),
    );
  }
}

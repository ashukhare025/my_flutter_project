import 'package:flutter/material.dart';
import 'package:my_project/widget/uihelper.dart';

class ContactScreen extends StatelessWidget {
  var contactContent = [
    {
      "img":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Ashu",
      "status": "Busy",
    },
    {
      "img":
          "https://media.istockphoto.com/id/1045886560/photo/portrait-of-smiling-handsome-man-in-blue-t-shirt-standing-with-crossed-arms-isolated-on-grey.jpg?s=612x612&w=0&k=20&c=TX1-1UJ3PKonFEmgs_WDZf7wtfqKVMHYjeRaYjaZ1Rc=",
      "name": "Sam",
      "status": "Cool",
    },
    {
      "img":
          "https://www.georgetown.edu/wp-content/uploads/2022/02/Jkramerheadshot-scaled-e1645036825432-1050x1050-c-default.jpg",
      "name": "Emma",
      "status": "Talk to Later",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Ashu",
      "status": "Busy",
    },
    {
      "img":
          "https://media.istockphoto.com/id/1045886560/photo/portrait-of-smiling-handsome-man-in-blue-t-shirt-standing-with-crossed-arms-isolated-on-grey.jpg?s=612x612&w=0&k=20&c=TX1-1UJ3PKonFEmgs_WDZf7wtfqKVMHYjeRaYjaZ1Rc=",
      "name": "Sam",
      "status": "Cool",
    },
    {
      "img":
          "https://www.georgetown.edu/wp-content/uploads/2022/02/Jkramerheadshot-scaled-e1645036825432-1050x1050-c-default.jpg",
      "name": "Emma",
      "status": "Talk to Later",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Ashu",
      "status": "Busy",
    },
    {
      "img":
          "https://media.istockphoto.com/id/1045886560/photo/portrait-of-smiling-handsome-man-in-blue-t-shirt-standing-with-crossed-arms-isolated-on-grey.jpg?s=612x612&w=0&k=20&c=TX1-1UJ3PKonFEmgs_WDZf7wtfqKVMHYjeRaYjaZ1Rc=",
      "name": "Sam",
      "status": "Cool",
    },
    {
      "img":
          "https://www.georgetown.edu/wp-content/uploads/2022/02/Jkramerheadshot-scaled-e1645036825432-1050x1050-c-default.jpg",
      "name": "Emma",
      "status": "Talk to Later",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Ashu",
      "status": "Busy",
    },
    {
      "img":
          "https://media.istockphoto.com/id/1045886560/photo/portrait-of-smiling-handsome-man-in-blue-t-shirt-standing-with-crossed-arms-isolated-on-grey.jpg?s=612x612&w=0&k=20&c=TX1-1UJ3PKonFEmgs_WDZf7wtfqKVMHYjeRaYjaZ1Rc=",
      "name": "Sam",
      "status": "Cool",
    },
    {
      "img":
          "https://www.georgetown.edu/wp-content/uploads/2022/02/Jkramerheadshot-scaled-e1645036825432-1050x1050-c-default.jpg",
      "name": "Emma",
      "status": "Talk to Later",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
          text: 'Select Contact',
          height: 16,
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                contactContent[index]["img"].toString(),
              ),
            ),
            title: UiHelper.CustomText(
              text: contactContent[index]["name"].toString(),
              height: 16,
              fontweight: FontWeight.bold,
              color: Color(0XFF000000),
            ),
            subtitle: UiHelper.CustomText(
              text: contactContent[index]["status"].toString(),
              height: 16,
            ),
          );
        },
        itemCount: contactContent.length,
      ),
    );
  }
}

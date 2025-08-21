import 'package:flutter/material.dart';
import 'package:my_project/widget/uihelper.dart';

class StatusScreen extends StatelessWidget {

  var statuscontent=[
    {
      "img":"https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
      "name":"Micheal",
      "status":"15 min ago"
    },
    {
      "img":"https://images.unsplash.com/photo-1599566150163-29194dcaad36?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww",
      "name":"Sam",
      "status":"1 day ago"
    },
    {
      "img":"https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name":"Emma",
      "status":"2 hr ago"
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: 'Status', height: 20),
            ],
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(
                children: [CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7vB-49_BT-dirwttYZaeE_VByjlQ3raVJZg&s",
                  ),
                ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFF008069),
                      child: Center(child: Icon(Icons.add,color: Color(0XFFFFFFFF),size: 15,)),
                    ),
                  )
              ]
              ),
            ),
            title: UiHelper.CustomText(text: 'My Status', height: 20),
            subtitle: UiHelper.CustomText(text: 'Tap to add status update', height: 15),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomText(text: 'Recent updates', height: 15),
                Icon(Icons.arrow_drop_down,color: Color(0XFF5E5E5E),)

              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(statuscontent[index]["img"].toString()),
                ),
                title: UiHelper.CustomText(text: statuscontent[index]["name"].toString(),height: 16,fontweight: FontWeight.bold),
                subtitle: UiHelper.CustomText(text: statuscontent[index]["status"].toString(), height: 14),
              );
            },itemCount: statuscontent.length,),
          )
        ],
      ),
    );
  }
}

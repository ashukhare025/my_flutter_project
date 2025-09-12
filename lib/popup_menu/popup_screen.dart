import 'package:flutter/material.dart';

class PopMenu extends StatefulWidget {
  const PopMenu({super.key});

  @override
  State<PopMenu> createState() => _PopMenuState();
}

class _PopMenuState extends State<PopMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: "Eng", child: Text("English")),
                PopupMenuItem(value: "Hin", child: Text("Hindi")),
              ];
            },
          ),
        ],
        centerTitle: true,
        title: Text("PopUp Menu"),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(GirdView());
}

class GirdView extends StatelessWidget {
  const GirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gird",
      home: GirdScreen(),
    );
  }
}

class GirdScreen extends StatelessWidget {
  const GirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: //SliverGridDelegateWithFixedCrossAxisCount(
        SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),

        children: [
          Image.asset("assets/DJ/stranger.jpg", fit: BoxFit.cover),
          Image.asset("assets/DJ/stranger.jpg", fit: BoxFit.cover),
          Image.asset("assets/DJ/girl.png", fit: BoxFit.cover),
          Image.asset("assets/DJ/stranger.jpg", fit: BoxFit.cover),
          Image.asset("assets/DJ/girl.png", fit: BoxFit.cover),
          Image.asset("assets/DJ/gamer.png", fit: BoxFit.cover),
          Image.asset("assets/DJ/stranger.jpg", fit: BoxFit.cover),
          Image.asset("assets/DJ/stranger.jpg", fit: BoxFit.cover),
          Image.asset("assets/DJ/girl.png", fit: BoxFit.cover),
          Image.asset("assets/DJ/stranger.jpg", fit: BoxFit.cover),
          Image.asset("assets/DJ/girl.png", fit: BoxFit.cover),
          Image.asset("assets/DJ/gamer.png", fit: BoxFit.cover),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_project/splash_screen/splash_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget  {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      home: SplashScreen()
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomeState();
}

class _MyHomeState extends State<DashBoardScreen> {

   var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DashBoard',),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('DashBoard Screen',style: TextStyle(
                    fontSize: 25,
                  ),),
                  SizedBox(height: 11,),

                  TextField(
                    controller: nameController,
                  ),
                  SizedBox(height: 11,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(nameController.text.toString()),
                    ));
                  }, child: Text('My Profile'))
                ],
              ),
            ),
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyText());
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});


  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {


  @override
  Widget build(BuildContext context) {

    var arrname = ['Raman','Ramanujan','rajesh','james','john','ram','arjun','luv','kush'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Hello'),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Text(arrname[index] ,style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),);
      },
        itemCount: arrname.length,
        separatorBuilder: (context, index){
        return Divider(height: 100, thickness: 2,);
        },
      ),
    );
  }
}
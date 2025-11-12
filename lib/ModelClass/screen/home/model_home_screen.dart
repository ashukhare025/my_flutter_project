import 'package:flutter/material.dart';
import 'package:my_project/ModelClass/model/NameModel/name_model.dart';

class ModelHomeScreen extends StatefulWidget {
  const ModelHomeScreen({super.key});

  @override
  State<ModelHomeScreen> createState() => _ModelHomeScreenState();
}

class _ModelHomeScreenState extends State<ModelHomeScreen> {
  List<NamesModel> nameList = [
    NamesModel(name: 'Ram', age: 25, profession: "Software Eng", image: "asdadas"),
    NamesModel(name: 'Shyam', age: 22, profession: "Backend"),
    NamesModel(name: 'Alex', age: 26, profession: "FullStack"),
    NamesModel(name: 'Ravi', age: 28, profession: "CEO"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Model'), centerTitle: true),
      body: ListView.builder(
        itemCount: nameList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(nameList[index].name.toString()),
            subtitle: Text(nameList[index].age.toString()),
            trailing: IconButton(
              onPressed: () {
                nameList.removeAt(index);
                setState(() {});
              },
              icon: Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}

// class Names {
//   String name;
//   int age;
//   DateTime dob;
//
//   Names({required this.name, required this.age, required this.dob});
// }

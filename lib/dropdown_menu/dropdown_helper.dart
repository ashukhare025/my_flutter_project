import 'package:flutter/material.dart';

class DropDownHelper extends StatefulWidget {
  const DropDownHelper({super.key});

  @override
  State<DropDownHelper> createState() => _DropDownHelperState();
}

class _DropDownHelperState extends State<DropDownHelper> {
  List dropDownListData = [
    {"title": "BCA", "value": "1"},
    {"title": "MCA", "value": "2"},
    {"title": "B.Tech", "value": "3"},
    {"title": "M.Tech", "value": "4"},
  ];

  String defaultValue = "";
  String secondValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text("DropDown"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 20),
            InputDecorator(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                contentPadding: EdgeInsets.all(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isDense: true,
                  value: defaultValue,
                  isExpanded: true,
                  menuMaxHeight: 350,

                  items: [
                    DropdownMenuItem(value: "", child: Text("Select Course")),
                    ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                      return DropdownMenuItem(
                        value: data['value'],
                        child: Text(data['title']),
                      );
                    }).toList(),
                  ],
                  onChanged: (value) {
                    print("Selected value $value");
                    setState(() {
                      defaultValue = value!;
                      print(defaultValue);
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            InputDecorator(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                contentPadding: EdgeInsets.all(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isDense: true,
                  value: secondValue,
                  isExpanded: true,
                  menuMaxHeight: 350,

                  items: [
                    DropdownMenuItem(value: "", child: Text("Select Course")),
                    ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                      return DropdownMenuItem(
                        value: data['value'],
                        child: Text(data['title']),
                      );
                    }).toList(),
                  ],
                  onChanged: (value) {
                    print("Selected value $value");
                    setState(() {
                      secondValue = value!;
                      print(secondValue);
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (secondValue == "") {
                  print("please select app course");
                } else {
                  print("user selected course $secondValue");
                }
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}

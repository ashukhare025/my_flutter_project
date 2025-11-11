import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/StateManagement/Providers/list_map_provider.dart';

class AddData extends StatelessWidget {
  const AddData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Data')),
      body: Center(
        child: IconButton(
          onPressed: () {
            context.read<ListMapProvider>().addData({
              "name": "Contact Name",
              "mobile": "123456",
            });
          },
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}

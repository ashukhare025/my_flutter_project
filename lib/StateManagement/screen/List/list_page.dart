import 'package:flutter/material.dart';
import 'package:my_project/StateManagement/Providers/list_map_provider.dart';
import 'package:provider/provider.dart';

import '../Data/add_data.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List')),
      body: Consumer<ListMapProvider>(
        builder: (ctx, provider, __) {
          var allData = provider.getData();
          return allData.isNotEmpty
              ? ListView.builder(
                  itemCount: allData.length,
                  itemBuilder: (_, index) {
                    return ListTile(
                      title: Text('${allData[index]['name']}'),
                      subtitle: Text('${allData[index]['mobile']}'),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                context.read<ListMapProvider>().updateData({
                                  "name": "Updated Contacts",
                                  "mobile": "123",
                                }, index);
                              },
                              icon: Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {
                                context.read<ListMapProvider>().deleteData(
                                  index,
                                );
                              },
                              icon: Icon(Icons.delete, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : Center(child: Text("No Contacts yet"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.read<ListMapProvider>().addData({
          //   "name": "Contact Name",
          //   "mobile": "123456",
          // });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddData()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

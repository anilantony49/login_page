import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> items = List.generate(100, (index) => "Item $index");

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('HomePage'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
          )
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(thickness: 3.5,),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}

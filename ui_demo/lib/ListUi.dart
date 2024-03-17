import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // Define your list of items
  final List<Map<String, dynamic>> arrItems = [
    {'title': 'Exit', 'icon': Icons.exit_to_app},
    {'title': 'Play', 'icon': Icons.play_arrow},
    {'title': 'Plause', 'icon': Icons.pause},
    {'title': 'Stop', 'icon': Icons.stop},
    {'title': 'Close', 'icon': Icons.cancel},
    {'title': 'Delete', 'icon': Icons.delete},
    {'title': 'Email', 'icon': Icons.email},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.menu
        ),
        title: Text('UI LIST'),
      ),
      body: ListView.builder(
        itemCount: arrItems.length,
        itemBuilder: (context, index) {
          final item = arrItems[index];
          return ListTile(
            title: Text(item['title']),
            trailing: Icon(item['icon']), // Use leading to display the icon
            onTap: () {
              // Handle item tap
            },
          );

        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart'; // Assuming you have imported the correct file for BottomRightText

class Screen2 extends StatelessWidget {
  Screen2({Key? key}) : super(key: key);

  // Define your list of items
  final List<Map<String, dynamic>> arrItems = [
    {'title': 'Exit', 'icon': Icons.exit_to_app},
    {'title': 'Play', 'icon': Icons.play_arrow},
    {'title': 'Pause', 'icon': Icons.pause},
    {'title': 'Stop', 'icon': Icons.stop},
    {'title': 'Close', 'icon': Icons.cancel},
    {'title': 'Delete', 'icon': Icons.delete},
    {'title': 'Email', 'icon': Icons.email},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        title: Text(
          'Map',
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: arrItems.length,
        itemBuilder: (context, index) {
          final item = arrItems[index];
          return Container(
            color: Colors.white,
            margin: EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              title: Text(item['title']),
              trailing: Icon(item['icon']), // Use leading to display the icon
              onTap: () {
                // Handle item tap
              },
            ),
          );
        },
      ),
      floatingActionButton: BottomRightText(), // Place the BottomRightText widget here
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _Settings();
}

List<Option> listArr = [
  Option(icons: Icons.contact_mail_outlined, title: 'Contact Info', path: '/contact'),
  Option(icons: Icons.cases_outlined, title: 'Career Objective', path: '/carrier'),
  Option(icons: Icons.person_outline_outlined, title: 'Personal Details', path: '/contact'),
  Option(icons: Icons.e_mobiledata_outlined, title: 'Education', path: '/education'),
  Option(icons: Icons.people, title: 'Experiences', path: '/home'),
  Option(icons: Icons.menu_book_sharp, title: 'Technical Skills', path: '/home'),
  Option(icons: Icons.menu_book_sharp, title: 'Interest/Hobbies', path: '/home'),
  Option(icons: Icons.menu_book_sharp, title: 'Projects', path: '/home'),
  Option(icons: Icons.menu_book_sharp, title: 'Achievements', path: '/home'),
  Option(icons: Icons.collections_bookmark_sharp, title: 'References', path: '/references'),
  Option(icons: Icons.menu_book_sharp, title: 'Declaration', path: '/home'),
];

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Resume Workspace',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        toolbarHeight: 150,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue,
            height: 30,
            width: double.infinity,
            child: Center(
              child: Text('Build Option', style: TextStyle(color: Colors.white,fontSize: 20)),
            ),
          ),


          Expanded(
            child: ListView.separated(
              itemCount: listArr.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // Handle onTap action
                  },
                  child: ListTile(
                    leading: Icon(listArr[index].icons),
                    title: Text(listArr[index].title),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, listArr[index].path);
                      },
                      icon: Icon(Icons.chevron_right),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Option {
  final IconData icons;
  final String title;
  final String path;

  Option({required this.icons, required this.title, required this.path});
}

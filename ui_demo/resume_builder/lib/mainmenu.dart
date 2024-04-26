import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainmenu extends StatefulWidget {
  const mainmenu({Key? key}) : super(key: key);

  @override
  State<mainmenu> createState() => _mainmenu();
}

List<Option> listArr = [
  Option(icons: Icons.contact_mail_outlined, title: 'Contact Info'),
  Option(icons: Icons.cases_outlined, title: 'Career Objective'),
  Option(icons: Icons.person_outline_outlined, title: 'Personal Details'),
  Option(icons: Icons.e_mobiledata_outlined, title: 'Education'),
  Option(icons: Icons.people, title: 'Experiences'),
  Option(icons: Icons.menu_book_sharp, title: 'Technical Skills'),
  Option(icons: Icons.menu_book_sharp, title: 'Interest/Hobbies'),
  Option(icons: Icons.menu_book_sharp, title: 'Projects'),
  Option(icons: Icons.menu_book_sharp, title: 'Achievements'),
  Option(icons: Icons.collections_bookmark_sharp, title: 'References'),
  Option(icons: Icons.menu_book_sharp, title: 'Declaration'),
];

class _mainmenu extends State<mainmenu> {
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
                    trailing: const Icon(
                      Icons.chevron_right,
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

  Option({required this.icons, required this.title});
}

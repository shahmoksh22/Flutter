import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DrawerScreenTask2(),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key, required this.customUserData}) : super(key: key);

  final UserData customUserData;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      customUserData.profileImage,
                      width: 100, // Adjust as needed
                      height: 100, // Adjust as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Spacer(),
                Text(customUserData.username),
                const Spacer(),
                Text(customUserData.email),
                const Spacer(),
                Text(customUserData.dob),
                const Spacer(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home_outlined),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(customUserData: customUserData)));
            },
            child: const ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings_outlined),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsScreen(customUserData: customUserData)));
            },
            child: const ListTile(
              title: Text('About Us'),
              leading: Icon(Icons.info_outline),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HelpScreen(customUserData: customUserData)));
            },
            child: const ListTile(
              title: Text('Help'),
              leading: Icon(Icons.help_outline),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LogOutScreen(customUserData: customUserData)));
            },
            child: const ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerScreenTask2 extends StatelessWidget {
  const DrawerScreenTask2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserData customUserData = UserData(
      email: 'searchshahmoksh22@gmail.com',
      username: 'shahmoksh22',
      profileImage: 'assets/images/profile.jpeg',
      dob: '22/12/2005',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: DrawerWidget(customUserData: customUserData),
      body: const Center(child: Text('Home Screen')),
    );
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key, required this.customUserData}) : super(key: key);

  final UserData customUserData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: DrawerWidget(customUserData: customUserData),
      body: const Center(
        child: Text('Settings'),
      ),
    );
  }
}

class UserData {
  final String email;
  final String username;
  final String dob;
  final String profileImage;

  UserData({required this.email, required this.username, required this.dob, required this.profileImage});
}

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key, required this.customUserData}) : super(key: key);

  final UserData customUserData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: DrawerWidget(customUserData: customUserData),
      body: const Center(
        child: Text('About Us'),
      ),
    );
  }
}

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key, required this.customUserData}) : super(key: key);

  final UserData customUserData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: DrawerWidget(customUserData: customUserData),
      body: const Center(
        child: Text('Help'),
      ),
    );
  }
}

class LogOutScreen extends StatelessWidget {
  const LogOutScreen({Key? key, required this.customUserData}) : super(key: key);

  final UserData customUserData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LogOut'),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: DrawerWidget(customUserData: customUserData),
      body: const Center(
        child: Text('LogOut'),
      ),
    );
  }
}

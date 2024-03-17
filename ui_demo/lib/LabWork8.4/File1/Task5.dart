import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

Color iconColor = Colors.blue;
class _Screen5State extends State<Screen5> {
  void onTapColor(Color color) {
    setState(() {
      iconColor = color; // Change the color of the icon based on the parameter
    });
  }
  IconData currentIcon = Icons.star;

  void changeIcon(IconData newIcon) {
    setState(() {
      // Change the icon when clicked
      currentIcon = newIcon;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Editor'),
        backgroundColor: Colors.white,
        elevation: 4,
        shadowColor: Colors.black,
      ),
      backgroundColor: Color(0xFFEFF1F3),
      body: Stack(
        children: [Column(
          children: [
            SizedBox(
              height: 10,
              width: double.infinity,
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      currentIcon, // Change this to the desired icon
                      color: iconColor, // Change this to the desired icon color
                      size: 40, // Change this to the desired icon size
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 1,
            //   width: double.infinity,
            // ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Select Color" ,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),// Change this to the desired icon size
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Add your onTap functionality here
                          onTapColor(Colors.black);
                          print('Black');
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap functionality here
                          print('Blue');
                          onTapColor(Colors.blue);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap functionality here
                          onTapColor(Colors.green);
                          print('Green');
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap functionality here
                          print('Grey');
                          onTapColor(Colors.grey);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap functionality here
                          print('Pink');
                          onTapColor(Colors.pink);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap functionality here
                          print('Red');
                          onTapColor(Colors.red);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap functionality here
                          print('Yellow');
                          onTapColor(Colors.yellow);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap functionality here
                          print('Brown');
                          onTapColor(Colors.brown);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),


                    ],
                  ),

                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Select Icon" ,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),// Change this to the desired icon size
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                      onTap: () {
                    // Add your onTap functionality here
                        changeIcon(Icons.add);
                    print('add');
              },
                child:
                Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          border: Border.all(
                            color: Colors.black12,
                            width: 2, // Adjust the width as needed
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add, // Replace with your desired icon
                            color: iconColor, // Icon color
                            size: 30, // Icon size
                          ),
                        ),
                      ),
                      ),
              GestureDetector(
                onTap: () {
                  // Add your onTap functionality here
                  print('album_rounded');
                  changeIcon(Icons.album_rounded);
                },
                child:
                Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          border: Border.all(
                            color: Colors.black12,
                            width: 2, // Adjust the width as needed
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.album_rounded, // Replace with your desired icon
                            color: iconColor, // Icon color
                            size: 30, // Icon size
                          ),
                        ),
                      ),
              ),
              GestureDetector(
                onTap: () {
                  // Add your onTap functionality here
                  print('chevron_left');
                  changeIcon(Icons.chevron_left);
                },
                child:
                Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          border: Border.all(
                            color: Colors.black12,
                            width: 2, // Adjust the width as needed
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.chevron_left, // Replace with your desired icon
                            color: iconColor, // Icon color
                            size: 30, // Icon size
                          ),
                        ),
                      ),
              ),
              GestureDetector(
                onTap: () {
                  // Add your onTap functionality here
                  print('chevron_right');
                  changeIcon(Icons.chevron_right);
                },
                child:
                Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          border: Border.all(
                            color: Colors.black12,
                            width: 2, // Adjust the width as needed
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.chevron_right, // Replace with your desired icon
                            color: iconColor, // Icon color
                            size: 30, // Icon size
                          ),
                        ),
                      ),
              ),
              GestureDetector(
                onTap: () {
                  // Add your onTap functionality here
                  print('alarm');
                  changeIcon(Icons.alarm);
                },
                child:
                Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          border: Border.all(
                            color: Colors.black12,
                            width: 2, // Adjust the width as needed
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.alarm, // Replace with your desired icon
                            color: iconColor, // Icon color
                            size: 30, // Icon size
                          ),
                        ),
                      ),
              ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap functionality here
                          print('phone');
                          changeIcon(Icons.phone);
                        },
                        child: Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          border: Border.all(
                            color: Colors.black12,
                            width: 2, // Adjust the width as needed
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.phone, // Replace with your desired icon
                            color: iconColor, // Icon color
                            size: 30, // Icon size
                          ),
                        ),
                      ),
                ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap functionality here
                          print('search');
                          changeIcon(Icons.search);
                        },
                        child: Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          border: Border.all(
                            color: Colors.black12,
                            width: 2, // Adjust the width as needed
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.search, // Replace with your desired icon
                            color: iconColor, // Icon color
                            size: 30, // Icon size
                          ),
                        ),
                      ),
                      ),
                  GestureDetector(
                    onTap: () {
                      // Add your onTap functionality here
                      print('star');
                      changeIcon(Icons.star);
                    },
                    child:
                    Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          border: Border.all(
                            color: Colors.black12,
                            width: 2, // Adjust the width as needed
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.star, // Replace with your desired icon
                            color: iconColor, // Icon color
                            size: 30, // Icon size
                          ),
                        ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add your onTap functionality here
                      print('abc_outlined');
                      changeIcon(Icons.abc_outlined);
                    },
                      child: Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          border: Border.all(
                            color: Colors.black12,
                            width: 2, // Adjust the width as needed
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.abc_outlined, // Replace with your desired icon
                            color: iconColor, // Icon color
                            size: 30, // Icon size
                          ),
                        ),
                      )
                  )



                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
          BottomRightText(),
      ],
      ),
    );
  }
}

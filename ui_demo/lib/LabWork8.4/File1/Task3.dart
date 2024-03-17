import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';


class Screen3 extends StatefulWidget {
  Screen3({super.key});


  @override
  State<Screen3> createState() => _Screen3State();
}
class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icons'),
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 12,
      ),
      body:Stack(
        children:
        [
          SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Icon(Icons.add,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.album_rounded,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_left,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_right,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.alarm,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Icon(Icons.add,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.album_rounded,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_left,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_right,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.alarm,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Icon(Icons.add,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.album_rounded,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_left,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_right,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.alarm,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Icon(Icons.add,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.album_rounded,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_left,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_right,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.alarm,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Icon(Icons.add,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.album_rounded,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_left,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_right,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.alarm,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Icon(Icons.add,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.album_rounded,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_left,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_right,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.alarm,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Icon(Icons.add,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.album_rounded,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_left,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.chevron_right,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        child: Icon(Icons.alarm,size: 40,),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]
                        ),
                      ),


                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
          BottomRightText(),
      ],
        
      ) ,

    );
  }
}
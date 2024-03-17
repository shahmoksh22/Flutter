import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

List<int> arrNumber = [1,2,3,4,5,6,7,8,9,10];
int i=arrNumber.length;



class _Screen4State extends State<Screen4> {
  void increment(){
    setState(() {
      i = i+1;
      arrNumber.add(i);
      print(i);
    });
  }


  void decrement(){
    setState(() {
      arrNumber.remove(i);
      if(i==0){
        i=0;
      }
      else
      {
        i = i-1;
        print(i);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic List',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        shadowColor: Colors.black,
        backgroundColor: Color(0xFF234d61),
      ),

      body: ListView.builder(itemBuilder: (context, index){
        bool isEven = (index%2==0);
        return Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                        color: (isEven) ? Color(0xFF76e2ff)  : Color(0xFF5789bf),
                        borderRadius: BorderRadius.circular(10),
                    ),

                    child: Center(
                      child: Text('${arrNumber[index]}',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),),
                    )),
              ),
            ),

          ],

        );
      },
        itemCount: arrNumber.length,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: FloatingActionButton(onPressed: (){
              increment();
            },

              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
              backgroundColor: Color(0xFF234d61),
              shape: CircleBorder(),
            ),
          ),
          SizedBox(width: 15,),
          SizedBox(
            height: 70,
            width: 70,
            child: FloatingActionButton(onPressed: (){decrement();},
              child: Icon(
                Icons.horizontal_rule,
                size: 30,
                color: Colors.white,
              ),
              backgroundColor: Color(0xFF234d61),
              shape: CircleBorder(),),
          )
        ],
      ),
    );
  }
}
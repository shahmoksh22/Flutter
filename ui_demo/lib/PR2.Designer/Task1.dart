import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Fruits(),
  ));
}

class Fruits extends StatelessWidget {

  const Fruits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        shadowColor: Colors.grey,
        elevation: 10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image.asset('assets/online-shopping.png',height: 40,width: 50,),
            const Text('List of Fruits',style: TextStyle(fontSize: 30,color: Colors.white),),
          ],
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 700,
          width: 250,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/apple.png',height: 50,),
                    const SizedBox(width: 20,),
                    const Text('Apple',style: TextStyle(fontSize: 30,color: Colors.redAccent,fontWeight: FontWeight.w700),)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/grape.png',height: 50,),
                    const SizedBox(width: 20,),
                    const Text('Grapes',style: TextStyle(fontSize: 30,color: Colors.purpleAccent,fontWeight: FontWeight.w700),)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/cherry.png',height: 50,),
                    const SizedBox(width: 20,),
                    const Text('Cherry',style: TextStyle(fontSize: 30,color: Colors.deepPurple,fontWeight: FontWeight.w700),)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/stawberry.png',height: 50,),
                    const SizedBox(width: 20,),
                    const Text('Strawberry',style: TextStyle(fontSize: 30,color: Colors.pinkAccent,fontWeight: FontWeight.w700),)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/mango.png',height: 50,),
                    const SizedBox(width: 20,),
                    const Text('Mango',style: TextStyle(fontSize: 30,color: Colors.orange,fontWeight: FontWeight.w700),)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/pineapple.png',height: 50,),
                    const SizedBox(width: 20,),
                    const Text('Pineapple',style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.w700),)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/lemon.png',height: 50,),
                    const SizedBox(width: 20,),
                    const Text('Lemon',style: TextStyle(fontSize: 30,color: Colors.orangeAccent,fontWeight: FontWeight.w700),)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/watermelon.png',height: 50,),
                    const SizedBox(width: 20,),
                    const Text('Watermelon',style: TextStyle(fontSize: 28,color: Colors.green,fontWeight: FontWeight.w700),)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/coconut.png',height: 50,),
                    const SizedBox(width: 20,),
                    const Text('Coconut',style: TextStyle(fontSize: 30,color: Colors.brown,fontWeight: FontWeight.w700),)
                  ],
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
  print('Main call');
}

///--------------------------------------------------------------------------------------------------

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 30),
              bodyWidget1(),
              const SizedBox(height: 30),
              bodyWidget2(),
              const SizedBox(height: 30),
              bodyWidget3(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget bodyWidget1() {
    return SizedBox(
      height: 150,
      width: 150,
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(color: Colors.green),
          ),
          Positioned(
            bottom: 0,
            child: CustomPaint(
              painter: TrianglePainter(
                strokeColor: Colors.white.withOpacity(0.5),
                strokeWidth: 10,
                paintingStyle: PaintingStyle.fill,
              ),
              child: const SizedBox(height: 75, width: 150),
            ),
          ),
          Positioned(
            top: 0,
            child: Transform.rotate(
              angle: math.pi,
              child: CustomPaint(
                painter: TrianglePainter(
                  strokeColor: Colors.white.withOpacity(0.5),
                  strokeWidth: 10,
                  paintingStyle: PaintingStyle.fill,
                ),
                child: const SizedBox(height: 75, width: 150),
              ),
            ),
          ),
          Center(
            child: Container(height: 30, width: 30, color: Colors.green),
          ),
        ],
      ),
    );
  }

  Widget bodyWidget2() {
    return SizedBox(
      height: 150,
      width: 150,
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(color: Color(0xff33ABA0)),
          ),
          Positioned(
            bottom: 0,
            child: CustomPaint(
              painter: TrianglePainter(
                strokeColor: Colors.white.withOpacity(0.3),
                strokeWidth: 10,
                paintingStyle: PaintingStyle.fill,
              ),
              child: const SizedBox(height: 75, width: 150),
            ),
          ),
          Positioned(
            top: 0,
            child: Transform.rotate(
              angle: math.pi,
              child: CustomPaint(
                painter: TrianglePainter(
                  strokeColor: Colors.white.withOpacity(0.3),
                  strokeWidth: 10,
                  paintingStyle: PaintingStyle.fill,
                ),
                child: const SizedBox(height: 75, width: 150),
              ),
            ),
          ),
          Center(
            child: Container(height: 100, width: 100, color: const Color(0xff009688)),
          ),
        ],
      ),
    );
  }

  Widget bodyWidget3() {
    return Container(
      height: 200,
      width: 200,
      // color: Colors.yellow,
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5)),
      ),
      child: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Transform.rotate(
                angle: math.pi,
                child: CustomPaint(
                  painter: TrianglePainter(
                    strokeColor: const Color(0xff87675C),
                    strokeWidth: 10,
                    paintingStyle: PaintingStyle.fill,
                  ),
                  child: const SizedBox(height: 60, width: 200),
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: CustomPaint(
                painter: TrianglePainter(
                  strokeColor: const Color(0xff87675C),
                  strokeWidth: 10,
                  paintingStyle: PaintingStyle.fill,
                ),
                child: const SizedBox(height: 60, width: 200),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 36,bottom: 36),
                height: 180,
                width: 75,
                decoration: const BoxDecoration(color: Color(0xff795648)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Custom Triangle Shape
class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TrianglePainter(
      {this.strokeColor = Colors.black,
        this.strokeWidth = 3,
        this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..moveTo(1, 2)
      ..moveTo(0, y)
      ..lineTo(x / 2, 0)
      ..lineTo(x, y)
      ..lineTo(0, y);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}


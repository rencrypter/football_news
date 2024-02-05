
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:football_news/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

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
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main_bg.png'),
              // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Image.asset(
              'assets/images/main_logo.png', // Replace with your image path
              width: 300, // Adjust the width as needed
              height: 240, // Adjust the height as needed
              fit: BoxFit.contain, // Adjust the fit as needed
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _navigatetosplash(context);

  }
}

 _navigatetosplash(c)async{
   // Timer(Duration(seconds: 3),
   //         ()=>Navigator.pushReplacement(context as BuildContext,
   //         MaterialPageRoute(builder:
   //             (context) =>
   //             splashscreen()
   //         )
   //     )
   // );
   await Future.delayed(Duration(milliseconds: 1500),(){});
  Navigator.pushReplacement(c, MaterialPageRoute(builder: (context)=>splashscreen()));
}

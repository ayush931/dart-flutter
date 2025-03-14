import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:TextButton(
        child: Text("Click me"),
        onPressed: () {
          print("CLicked the button");
        },
        onLongPress: () {
          print("Long pressed");
        },
      ),
        // child: Container(
        //   height: 100,
        //   width: 200,
        //   color: Colors.redAccent,
        //   child: Center(
        //     child: Text("Hello", style: TextStyle(
        //       // backgroundColor: Colors.white,
        //       color: Colors.black,
        //       fontSize: 20,
        //       fontWeight: FontWeight.w800,
        //       backgroundColor: Colors.white,
        //     ),
        //     ),
        //   ),
        // ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

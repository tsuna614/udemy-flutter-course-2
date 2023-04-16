import 'package:flutter/material.dart';
// import './gradient_container.dart';
import 'package:flutter_complete_guide_2/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      // appBar: AppBar(
      //   title: const Text("My App"),
      // ),
      body: GradientContainer(
          [Color.fromARGB(255, 1, 19, 91), Color.fromARGB(255, 68, 4, 100)]),
    ));
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//         home: Scaffold(
//       // appBar: AppBar(
//       //   title: const Text("My App"),
//       // ),
//       body: GradientContainer(
//           [Color.fromARGB(255, 1, 19, 91), Color.fromARGB(255, 68, 4, 100)]),
//     ));
//   }
// }

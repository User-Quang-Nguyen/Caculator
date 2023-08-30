import 'package:flutter/material.dart';
import 'components/button.dart';
import 'components/screen.dart';
import 'components/myConstants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Caculator",
              style: TextStyle(fontSize: 35),
            ),
            backgroundColor: Colors.amber,
          ),
          body: Container(
              color: const Color.fromARGB(255, 219, 217, 217),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Screen(
                    val: MyConstants.myStaticVariable,
                  ),
                  const Row(
                    children: [
                      Button(text: "1"),
                      Button(text: "2"),
                      Button(text: "3"),
                      Button(text: "+"),
                    ],
                  ),
                  const Row(
                    children: [
                      Button(text: "4"),
                      Button(text: "5"),
                      Button(text: "6"),
                      Button(text: "-"),
                    ],
                  ),
                  const Row(
                    children: [
                      Button(text: "7"),
                      Button(text: "8"),
                      Button(text: "9"),
                      Button(text: "*"),
                    ],
                  ),
                  const Row(
                    children: [
                      Button(text: "C"),
                      Button(text: "0"),
                      Button(text: "="),
                      Button(text: "/"),
                    ],
                  ),
                ],
              )),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

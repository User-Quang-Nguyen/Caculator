import 'package:flutter/material.dart';
import 'myConstants.dart';

class Button extends StatelessWidget {
  final String text;

  const Button({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width / 4,
      height: height / 8,
      child: ElevatedButton(
        // ignore: sort_child_properties_last
        child: Text(
          text,
          style: const TextStyle(fontSize: 30),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: const EdgeInsets.all(2),
        ),
        onPressed: () {
          var textValue = text;
          MyConstants.myStaticVariable += textValue;
        },
      ),
    );
  }
}

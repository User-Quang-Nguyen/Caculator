import 'package:flutter/material.dart';
import 'myConstants.dart';

class Screen extends StatefulWidget {
  late String val;

  Screen({super.key, required this.val});

  @override
  State<StatefulWidget> createState() {
    return _ScreenState();
  }
}

class _ScreenState extends State<Screen> {
  late String val;

  void updateData(String newData) {
    setState(() {
      val = newData;
    });
  }

  @override
  void initState() {
    super.initState();
    val = widget.val;
  }

  @override
  Widget build(BuildContext context) {
    updateData(val);
    return TextFormField(
      style: const TextStyle(
        fontSize: 40,
      ),
      initialValue: val,
      readOnly: false,
    );
  }
}

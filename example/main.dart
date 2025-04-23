import 'package:flutter/material.dart';
import 'package:simple_flag_picker/simple_flag_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selected = 'us';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SimpleFlagPicker Example')),
        body: Center(
          child: SimpleFlagPicker(
            selectedCode: selected,
            onChanged: (val) => setState(() => selected = val),
          ),
        ),
      ),
    );
  }
}

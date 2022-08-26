import 'package:flutter/material.dart';
import 'package:wheel_switch/wheel_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WheelSwitch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '滚动开关'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool initValue = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: WheelSwitch(
          value: initValue,
          width: 100,
          height: 50,
          activeText: '开',
          inactiveText: '关',
          activeTrackColor: Colors.red,
          inactiveTrackColor: Colors.blue,
          activeThumbColor: Colors.green,
          inactiveThumbColor: Colors.black,
          duration: const Duration(milliseconds: 400),
          onChanged: (bool value) {
            if (value) {

            } else {

            }
          },
        ),
      ),
    );
  }
}

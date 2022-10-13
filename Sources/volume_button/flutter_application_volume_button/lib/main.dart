import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Volume button driver"),),
      body: Focus( autofocus: true,
      canRequestFocus: true,
      onKey: (data, event) {
        if (event.isKeyPressed(LogicalKeyboardKey.audioVolumeUp)) {
          print("Add volume");
          return KeyEventResult.handled;
        }
        if (event.isKeyPressed(LogicalKeyboardKey.audioVolumeDown)) {
          print("Down volume");
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Container(child: Text("Text"),),),
    );
  }
}


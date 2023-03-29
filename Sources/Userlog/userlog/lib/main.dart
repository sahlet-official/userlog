import 'package:flutter/material.dart';
import 'package:userlog/features/about_screen_feature/screens/about_screen.dart';
import 'package:userlog/features/main_screen_feature/screens/clear_log_confirmation_screen.dart';
import 'package:userlog/features/main_screen_feature/screens/main_screen.dart';

void main() {
  runApp(const UserLogApp());
}

class UserLogApp extends StatelessWidget {
  const UserLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UserLog',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/About': (context) => const AboutScreen(),
        '/Clear': (context) => const ClearAnswer(),
      },
    );
  }
}

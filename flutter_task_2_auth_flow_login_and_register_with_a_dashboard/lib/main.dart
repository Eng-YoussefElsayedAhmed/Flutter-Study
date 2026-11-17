import 'package:flutter/material.dart';
import 'package:flutter_task_2_auth_flow_login_and_register_with_a_dashboard/screens/landing.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter task 2 auth flow login & register with a dashboard',
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
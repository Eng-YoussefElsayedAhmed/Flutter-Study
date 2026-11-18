import 'package:flutter/material.dart';
import 'package:flutter_task_2_auth_flow_login_and_register_with_a_dashboard/screens/dashboard.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _fullnamecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _passwordconfirmcontroller =
      TextEditingController();
  void handleregiter() {
    String message = "Ivalid Data";
    if (_fullnamecontroller.text.isEmpty) {
      message = "Name Is Required";
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } else if (_emailcontroller.text.isEmpty) {
      message = "Email Is Required";
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } else if (_passwordcontroller.text.isEmpty) {
      message = "Password Is Required";
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } else if (_passwordconfirmcontroller.text.isEmpty) {
      message = "Password Confirm Is Incorrect";
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } else if (_passwordcontroller.text != _passwordconfirmcontroller.text) {
      message = "Passwords Must Match Each Other";
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } else if (!_emailcontroller.text.contains("@") &&
        !_emailcontroller.text.contains(".")) {
      message = "Invalid Email Format";
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } else if (_emailcontroller.text.contains("@") &&
        _emailcontroller.text.contains(".") &&
        _passwordcontroller.text == _passwordconfirmcontroller.text) {
      message = "Welcome!";
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => DashboardPage()));
    }
  }

  @override
  void dispose() {
    _fullnamecontroller.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _passwordconfirmcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

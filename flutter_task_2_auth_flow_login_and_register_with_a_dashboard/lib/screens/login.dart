import 'package:flutter/material.dart';
import 'package:flutter_task_2_auth_flow_login_and_register_with_a_dashboard/screens/dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  bool status = false;
  void handlelogin() {
    String message = "Invalid Username Or Password";
    if (_emailcontroller.text.isEmpty && _passwordcontroller.text.isEmpty) {
      message = "Please Fill All Date";
    } else if (_emailcontroller.text.isEmpty) {
      message = "Email Is Empty";
    } else if (_passwordcontroller.text.isEmpty) {
      message = "Password Is Empty";
    } else if (_emailcontroller.text == "Youssef@gmail.com" &&
        _passwordcontroller.text == "123456789") {
      message = "Welcome";
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => DashboardPage()));
      status = true;
    }
    if (status = false) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    }
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400, maxHeight: 500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _emailcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                controller: _passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.password_outlined),
                ),
              ),

              ElevatedButton(onPressed: handlelogin, child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}

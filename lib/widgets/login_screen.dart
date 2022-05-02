import 'package:flutter/material.dart';
import 'package:personal_expenses/main.dart';
import 'package:personal_expenses/widgets/utils.dart';
import './constants.dart';
import './utils.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  onLogin() {
    String email = emailController.text;
    storeStringValue(emailKey, email);
    storeBoolValue(isLoggedIn, true);
    Navigator.push(context, MaterialPageRoute(builder: (con) => MyHomePage()));
  }

  @override
  void initState() {
    super.initState();
    checkIfUserLoggedIn();
  }

  checkIfUserLoggedIn() async {
    bool isLoggedInValue = await getBoolValue(isLoggedIn);
    if (isLoggedInValue) {
      Navigator.push(
          context, MaterialPageRoute(builder: (con) => MyHomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email Id',
                        labelText: 'Email Id',
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      width: 20,
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextButton(
                      child: Text('Login'),
                      onPressed: () {
                        onLogin();
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

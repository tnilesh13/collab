import 'package:collab/main.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // const final String ISLOGINKEY

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Icon(Icons.person)
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: Text("Enter your Email"),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      label: Text("Enter your Email"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)),
                      prefixIcon: Icon(Icons.email)),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: Text("Enter your password"),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      label: Text("Enter your password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)),
                      prefixIcon: Icon(Icons.password)),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Text("Login"),
              ),
          SizedBox(height: 10),
          // Text("result"),
        ],
      )
    );
  }

  void whereToGo() async {}
}

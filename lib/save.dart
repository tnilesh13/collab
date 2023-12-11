import 'package:flutter/material.dart';

class SaveScreen extends StatefulWidget {
  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: [TextButton(onPressed: () {}, child: Text("SAVE"))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(width: 100, child: Text("Name")),
          SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Enter Name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.person)),
              )),
          SizedBox(
            height: 20,
          ),
          SizedBox(width: 100, child: Text("Username")),
          SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Enter Username"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.person)),
              )),
          SizedBox(
            height: 20,
          ),
          SizedBox(width: 100, child: Text("Password")),
          SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Enter Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.password)),
              )),
          SizedBox(
            height: 20,
          ),
          SizedBox(width: 100, child: Text("Email")),
          SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Enter Email"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.email)),
              )),
          SizedBox(
            height: 20,
          ),
          SizedBox(width: 100, child: Text("Mobile")),
          SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Enter Mobile"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.phone)),
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 100, child: Text("Status")),
              Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  })
            ],
          )
        ],
      ),
    );
  }
}

import 'package:collab/company.dart';
import 'package:collab/my_user.dart';
import 'package:flutter/material.dart';
// import 'package:practice/company.dart';
import 'package:collab/login.dart';
// import 'package:practice/my_user.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),\
      home: LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listItems = [
    'My Company',
    'My User',
    'Schedule',
    'SMS',
    'Email',
    'Ledges',
    'objection',
    'Repair',
    'Logout',
    'Final',
    'DB Backup',
    'Export',
    'Import'
  ];

  var listItemsCall = [
    MyCompanyScreen(),
    MyUserScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
            child: Text(
              "Setting"
            ),
          )),
      body: Center(
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio:  4/1.5),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  // width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      listItems[index],
                      style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 5, 26, 51)),
                    ),    
                  ),
                ),
                onTap: () =>{ print(
                  "${listItemsCall[index]} clicked!!!",
                ),
                Navigator.push(context, MaterialPageRoute(builder: (context) => listItemsCall[index]))
                }
              ),
            );
          },
          itemCount: listItems.length,
        ),
      ),
    );
  }
}

import 'package:collab/comission.dart';
import 'package:flutter/material.dart';
import 'package:collab/save.dart';

// void main() {
//   runApp(MyUser());
// }

// class MyUser extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       title: "My User",
//       home: MyUserScreen()
//     );
//   }
// }

class MyUserScreen extends StatelessWidget {
  var userNames = ['A', 'B', 'C', 'D', 'E', 'F'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("My User"),
          backgroundColor: Colors.amber,
          actions: [
            ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> SaveScreen()));}, child: Icon(Icons.add)),
          ]),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(userNames[index]),
            trailing: Column(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Comission();
                  }));
                }, 
                child: Text(userNames[index]))],
            ),
          );
        },
        itemCount: userNames.length,
      ),
    );
  }
}

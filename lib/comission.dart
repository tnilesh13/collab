import 'package:flutter/material.dart';

class Comission extends StatefulWidget {
  Comission({Key? key}) : super(key: key);

  @override
  State<Comission> createState() => _ComissionState();
}

class _ComissionState extends State<Comission> {
  var username = ['C1', 'C2', 'C3', 'C4', 'C5', 'C6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Select'),
            backgroundColor: Colors.amber,
            actions: [
              const Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.arrow_downward)),
                      ))),
              TextButton(
                  onPressed: () => {},
                  child: Text(
                    'Save',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 179, 152, 183),
                        fontSize: 18),
                  )),
            ]),
        body:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children:[
              SizedBox(height: 20,),
              const SafeArea(
              //height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  SizedBox(width:50, child: Text("Commission", style: TextStyle(fontSize: 15),)), 
                  SizedBox(width:150, child: Text("P1",style:TextStyle(fontSize: 15))),
                   SizedBox(width:150, child: Text("G1",style:TextStyle(fontSize: 15)))],

                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                          itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            username[index],
                            style: TextStyle(color: Colors.red),
                          ),
                         
                          SizedBox(
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                  label: Text("Enter"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                      
                          SizedBox(
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                  label: Text("Enter"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                          
                        ]),
                  ),
                );
                          },
                          itemCount: username.length,
                        ),
              )
                       ]
              
                      ),
            )
        );
  }
}
 
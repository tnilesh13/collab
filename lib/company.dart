import 'package:flutter/material.dart';

// void main() {
//   runApp(MyCompany());
// }

// class MyCompany extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Company Name",
//       home: MyCompanyScreen(),
//     );
//   }
// }

class MyCompanyScreen extends StatefulWidget {
  @override
  State<MyCompanyScreen> createState() {
    return _MyCompanyScreenState();
  }
}

class _MyCompanyScreenState extends State<MyCompanyScreen> {

  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Company Name"),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Container(
              color: Colors.blue.shade100,
              // child: Center(
          child: Padding(padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child:
                      Text("Enter your Company Name"),),
                      SizedBox(width: 20),
                      SizedBox(
                          width: 300,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              label: Text("Enter your Company Name"),
                              prefixIcon: Icon(Icons.home),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11)),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child:
                      Text("Enter your Mobile Number"),),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              label: Text("Enter your Mobile"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11)),
                              prefixIcon: Icon(Icons.phone_android)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child:
                      Text("Enter your Email"),),
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
                    children: [
                      SizedBox(
                        width: 150,
                        child:
                      Text("Enter your Address"),),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                              label: Text("Enter your Address"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11)),
                              prefixIcon: Icon(Icons.streetview)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child:
                      Text("Enter your System Id"),),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              label: Text("Enter your System ID"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11)),
                              prefixIcon: Icon(Icons.person)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child:
                      Text("Enter your User Name"),),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              label: Text("Enter your user name"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11)),
                              prefixIcon: Icon(Icons.person_2)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child:
                      Text("Enter your password"),),
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
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child:
                      Text("Enter your Start Date"),),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              label: Text("Start Date"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11)),
                              prefixIcon: Icon(Icons.date_range_rounded)),
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(onTap: (){
                        var startDatePicker = showDatePicker(
                          context: context, 
                          firstDate: DateTime(2023),
                          lastDate: DateTime(2024));
                      },child: Icon(Icons.date_range_rounded),)
                      // DatePickerDialog(firstDate: DateTime(2023), lastDate: DateTime(2024))
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child:
                      Text("Enter your End Date"),),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              label: Text("End Date"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11)),
                              prefixIcon: Icon(Icons.date_range_rounded)),
                        ),
                      ),
                      SizedBox(width: 20,),
                      InkWell(onTap: (){
                        var endDatePicker = showDatePicker(
                          context: context, 
                          firstDate: DateTime(2023),
                          lastDate: DateTime(2024));
                      },child: Icon(Icons.date_range_rounded),)
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Enter your PID"),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              label: Text("Enter your PID "),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11)),
                              prefixIcon: Icon(Icons.phone_android)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child:
                      Text("Enter your SMS Count"),),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              label: Text("Enter your SMS Count"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11)),
                              prefixIcon: Icon(Icons.phone_android)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child:
                      Text("Enter your Status"),),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 100,
                        child: 
                        Checkbox(value: isChecked, onChanged: (value) {
                          setState(() {
                            isChecked=value!;
                          });
                          
                        })
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: () {}, child: Text("Save")),
                  SizedBox(height: 10),
                  // Text("result"),
                ],
                // )
              )),
        )));
  }
} 

//  Column(
//         children: [
//           Row(
//             children: [
//               Text("User Mobile"),
//               TextField()
//             ],
//           ),
//           Row(
//             children: [
//               Text("User Mobile"),
//               TextField()
//             ],
//           ),
//         ],
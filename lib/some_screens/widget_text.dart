import 'package:flutter/material.dart';
import 'package:new_app/helper/util.dart';
import 'package:new_app/some_screens/read_json.dart';

class WidgetText extends StatefulWidget {
  const WidgetText({super.key});

  @override
  State<WidgetText> createState() => _WidgetTextState();
}

class _WidgetTextState extends State<WidgetText> {

  late Map<dynamic, dynamic> myMap;
  // var myNewList;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ReadJsonFile.readJsonData(path: "assets/json/text.json").then((value) {
      setState(() {
        myMap = value["TextView"];
        // print("valueeee$value");
        print("myMapppp$myMap");
        // // print("itttemss2${myMap["Items"]}");
        // myNewList = myMap["Items"];
        // print("myNewListttttt$myNewList");
        // print("toString${myNewList.toString()}");
        // // print("myNewListttttt$myNewList}");
        // print("myyyyyyyyy${myNewList[0]}");
      });
    });
  }

  
  @override
  Widget build(BuildContext context) {
  var textColor = Util.getColorFromHex(myMap["FontColor"]);
  var bgColor = Util.getColorFromHex(myMap["BackgroundColor"]);

    return Container(
      width: double.infinity,
      color: bgColor,
      child: Column(
        children: [
          Text(myMap["Text"], style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: myMap['FontSize']),),
          Text(myMap["Description"], style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: myMap['DescriptionFontSize']),),
        ],
      ),
    );
            
  }
}